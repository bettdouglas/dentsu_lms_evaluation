import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:grpc/grpc.dart';
import 'package:lms_app/src/authentication/login/login.dart';
import 'package:lms_app/src/authentication/sign_up/sign_up.dart';
import 'package:lms_app/src/common/grpc-gen/agent_service.pbgrpc.dart';
import 'package:lms_app/src/common/grpc-gen/models.pb.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_provider.dart';
part 'auth_repository.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc({
    required this.authRepository,
    required this.signUpBloc,
    required this.loginBloc,
  }) : super(const AuthState.initial()) {
    _signUpBlocSubscription = signUpBloc.stream.listen((state) {
      state.maybeWhen(
        orElse: () {},
        signedUp: (user) {
          add(const AuthEvent.checkUser());
        },
        error: (msg) {},
      );
    });

    _loginBlocSubscription = loginBloc.stream.listen((state) {
      state.maybeWhen(
        orElse: () {},
        loggedIn: (token, persistToken) async {
          add(AuthEvent.login(token: token, persistToken: persistToken));
        },
        error: (msg) {},
      );
    });

    on<AuthEvent>((event, emit) async {
      await event.when(
        started: () async {
          add(const AuthEvent.checkUser());
        },
        login: (token, persistToken) async {
          await authRepository.saveToken(token);
          add(const AuthEvent.checkUser());
        },
        checkUser: () async {
          emit(const AuthState.loading('Loading...'));
          final getTokenResult = await authRepository.getToken();
          await getTokenResult.fold(
            () async => emit(const AuthState.unAuthenticated()),
            (t) async {
              emit(const AuthState.loading('Checking token status'));
              final checkTokenResult = await authRepository.checkAgentToken(t);
              emit(
                checkTokenResult.fold(
                  (l) => AuthState.error(l),
                  (r) => AuthState.authenticated(agent: r),
                ),
              );
            },
          );
        },
      );
    });
  }
  final AuthRepository authRepository;
  final SignUpBloc signUpBloc;
  final LoginBloc loginBloc;

  late StreamSubscription<SignUpState> _signUpBlocSubscription;
  late StreamSubscription<LoginState> _loginBlocSubscription;

  @override
  Future<void> close() {
    _signUpBlocSubscription.cancel();
    _loginBlocSubscription.cancel();
    return super.close();
  }
}
