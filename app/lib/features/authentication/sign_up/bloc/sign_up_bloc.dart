import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lms_app/features/authentication/auth/auth.dart';

part 'sign_up_bloc.freezed.dart';
part 'sign_up_event.dart';
part 'sign_up_state.dart';

class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  SignUpBloc({
    required this.authRepository,
  }) : super(const SignUpState.initial()) {
    on<SignUpEvent>((event, emit) async {
      await event.when(
        started: () {},
        signUp: (username, password) async {
          // emit(const SignUpState.loading('Loading...'));
          // final createUserResponse = await authRepository.signUp(
          //   username,
          //   password,
          // );
          // emit(
          //   createUserResponse.fold(
          //     (l) => SignUpState.error(msg: l.toString()),
          //     (r) => SignUpState.signedUp(user: r),
          //   ),
          // );
        },
      );
    });
  }

  final AuthRepository authRepository;
}
