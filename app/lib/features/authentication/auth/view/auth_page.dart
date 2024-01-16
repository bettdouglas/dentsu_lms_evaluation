import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lms_app/features/active_page/view/bottom_nav_bar.dart';
import 'package:lms_app/features/active_page/view/home_page_view.dart';
import 'package:lms_app/features/authentication/auth/auth.dart';
import 'package:lms_app/features/authentication/auth/view/splash_page.dart';
import 'package:lms_app/features/authentication/login/login.dart';
import 'package:lms_app/features/authentication/sign_up/sign_up.dart';
import 'package:lms_app/features/common/widgets/app_bar.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => AuthBloc(
        authRepository: context.read<AuthRepository>(),
        signUpBloc: context.read<SignUpBloc>(),
        loginBloc: context.read<LoginBloc>(),
      )..add(const AuthEvent.started()),
      child: const AuthView(),
    );
  }
}

class AuthView extends StatelessWidget {
  const AuthView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        return Scaffold(
          appBar: state.maybeWhen(
            orElse: () => null,
            authenticated: (_) => const LMSAppBar(),
          ),
          body: state.when(
            initial: () => const Center(
              child: SplashLoader(),
            ),
            loading: (msg) => const Center(
              child: CircularProgressIndicator.adaptive(),
            ),
            authenticated: (_) => HomePage(),
            unAuthenticated: () => const LoginPage(),
            error: (msg) => Center(
              child: Text(msg),
            ),
          ),
          bottomNavigationBar: state.maybeWhen(
            orElse: () => null,
            authenticated: (_) => const BottomNavBarWidget(),
          ),
        );
      },
    );
  }
}
