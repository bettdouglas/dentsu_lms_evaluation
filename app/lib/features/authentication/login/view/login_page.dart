import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lms_app/features/authentication/login/login.dart';
import 'package:lms_app/features/common/colors.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const LoginView();
  }
}

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final key = GlobalKey<FormBuilderState>();
  final usernameKey = 'username';
  final passwordNameKey = 'password';
  final persistTokenKey = 'persist-token';

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginBloc, LoginState>(
      listener: (context, state) {
        state.maybeWhen(
          orElse: () {},
          error: (msg) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(msg),
                backgroundColor: Colors.red,
              ),
            );
          },
        );
      },
      builder: (context, state) {
        void onLoginButtonPressed() {
          final form = key.currentState?..save();
          final isFormValid = key.currentState?.validate() ?? false;

          if (isFormValid) {
            final passsword = form?.fields[passwordNameKey]?.value as String;
            final username = form?.fields[usernameKey]?.value as String;
            final persistToken = form?.fields[persistTokenKey]?.value as bool?;

            context.read<LoginBloc>().add(
                  LoginEvent.login(
                    password: passsword,
                    username: username,
                    persistToken: persistToken ?? false,
                  ),
                );
          }
        }

        return Scaffold(
          backgroundColor: LmsColors.pink,
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(32),
              child: FormBuilder(
                key: key,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(height: 51.h),
                    Center(
                      child: SvgPicture.asset(
                        'assets/svg/dc_logo.svg',
                        width: 98.67.w,
                        height: 63.h,
                      ),
                    ),
                    SizedBox(height: 40.h),
                    Center(
                      child: Text(
                        'Welcome to Dentsu LMS',
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(height: 13.h),
                    Text(
                      '''A tool that leverage's the power of data and artificial intelligence to drive digital transformation at scale''',
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium
                          ?.copyWith(color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 61.h),
                    Text(
                      'Username',
                      style: Theme.of(context)
                          .textTheme
                          .titleSmall
                          ?.copyWith(color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 13.h),
                    FormBuilderTextField(
                      name: usernameKey,
                      decoration: const InputDecoration(
                        hintText: 'Enter your email or Username',
                      ),
                    ),
                    SizedBox(height: 25.h),
                    Text(
                      'Password',
                      style: Theme.of(context)
                          .textTheme
                          .titleSmall
                          ?.copyWith(color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 13.h),
                    FormBuilderTextField(
                      name: passwordNameKey,
                      obscureText: true,
                      decoration: const InputDecoration(
                        hintText: 'Enter your Password',
                      ),
                      onEditingComplete: () => FocusScope.of(context).unfocus(),
                    ),
                    SizedBox(height: 15.h),
                    FormBuilderCheckbox(
                      name: persistTokenKey,
                      title: const Text('Keep me logged in'),
                      decoration: const InputDecoration(
                        fillColor: Colors.transparent,
                        border: InputBorder.none,
                      ),
                    ),
                    SizedBox(height: 61.h),
                    ElevatedButton(
                      onPressed: onLoginButtonPressed,
                      style: ElevatedButton.styleFrom(
                        textStyle: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                        ),
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black,
                      ),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(90.r),
                        ),
                        alignment: Alignment.center,
                        child: const Text('Login'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
