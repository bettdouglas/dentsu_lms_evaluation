import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:lms_app/features/authentication/sign_up/sign_up.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SignUpView();
  }

  static MaterialPageRoute<void> get route => MaterialPageRoute(
        builder: (_) => const SignUpPage(),
      );
}

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  bool obscurePassword = true;
  final key = GlobalKey<FormBuilderState>();
  final userNameKey = 'username';
  final passwordKey = 'password';

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    const spaceFactor = 1.0;

    return BlocConsumer<SignUpBloc, SignUpState>(
      listener: (context, state) {
        state.maybeWhen(
          orElse: () {},
          signedUp: (user) {
            Navigator.of(context).popUntil((route) => route.isFirst);
          },
        );
      },
      builder: (context, state) {
        void onSignUpButtonPressed() {
          state.maybeWhen(
            orElse: () {
              final form = key.currentState?..save();
              final isFormValid = form?.validate() ?? false;

              if (isFormValid) {
                final username = form?.fields[userNameKey]?.value as String;
                final passsword = form?.fields[passwordKey]?.value as String;
                context.read<SignUpBloc>().add(
                      SignUpEvent.signUp(
                        password: passsword,
                        username: username,
                      ),
                    );
              }
            },
            loading: (msg) {},
            signedUp: (user) {},
          );
        }

        return Scaffold(
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(32),
              child: FormBuilder(
                key: key,
                autovalidateMode: AutovalidateMode.disabled,
                onChanged: () {
                  setState(() {});
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    state.maybeWhen(
                      orElse: () => const SizedBox(),
                      loading: (msg) => const LinearProgressIndicator(),
                    ),
                    const SizedBox(height: 8 * spaceFactor),
                    Text(
                      'Sign Up',
                      style: textTheme.headlineLarge!
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 8 * spaceFactor),
                    FormBuilderTextField(
                      name: userNameKey,
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.mail),
                        labelText: 'Username',
                        hintText: 'Enter the username',
                      ),
                      validator: FormBuilderValidators.compose([
                        FormBuilderValidators.required(),
                        FormBuilderValidators.minLength(8),
                      ]),
                      onSubmitted: (_) {},
                    ),
                    const SizedBox(height: 16 * spaceFactor),
                    FormBuilderTextField(
                      name: passwordKey,
                      obscureText: obscurePassword,
                      decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.key),
                        labelText: 'Password',
                        hintText: 'Minimum 8 chars',
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              obscurePassword = !obscurePassword;
                            });
                          },
                          icon: const Icon(Icons.remove_red_eye),
                        ),
                      ),
                      validator: FormBuilderValidators.compose([
                        FormBuilderValidators.required(),
                        FormBuilderValidators.minLength(8),
                      ]),
                      onSubmitted: (_) {},
                    ),
                    const SizedBox(height: 8 * spaceFactor),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: const Text('Back to Sign In'),
                    ),
                    const SizedBox(height: 16 * spaceFactor),
                    ElevatedButton(
                      onPressed: onSignUpButtonPressed,
                      child: const Text('Sign Up'),
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
