import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lms_app/src/authentication/auth/auth.dart';

part 'login_bloc.freezed.dart';
part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc({
    required this.authRepository,
  }) : super(const LoginState.initial()) {
    on<LoginEvent>((event, emit) async {
      await event.when(
        started: () {},
        login: (username, password, persistToken) async {
          emit(const LoginState.loading(msg: 'Logging in...'));
          final loginResult = await authRepository.login(
            username,
            password,
            persistToken: persistToken,
          );

          loginResult.fold(
            (l) => emit(LoginState.error(msg: l.toString())),
            (r) => emit(LoginState.loggedIn(
              token: r,
              persistToken: persistToken,
            )),
          );
        },
      );
    });
  }

  final AuthRepository authRepository;
}
