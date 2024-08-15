import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_flutter/app_settings.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';
import 'package:todo_flutter/logic/bloc/auth/auth_bloc.dart';
import 'package:todo_flutter/ui/widgets/app_zoom_tap_button.dart';

import '../../widgets/app_text_form_field.dart';
import '../../../core/utils/utils.dart' show AppFunctions, SizedBoxExtension;
import 'auth.dart' show SignUpScreen, ForgotPasswordScreen;

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  static Route<void> route() =>
      CupertinoPageRoute(builder: (_) => const LoginScreen());

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final AppFunctions _functions = getIt.get<AppFunctions>();

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  String get _email => _emailController.text;

  String get _password => _passwordController.text;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(),
            const Text(
              'Qaytib kelganingizdan xursandmiz.',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
              textAlign: TextAlign.center,
            ),
            Form(
              key: _formKey,
              child: Column(
                children: [
                  AppTextFormField(
                    controller: _emailController,
                    validator: _functions.emailValidator,
                    labelText: 'Email',
                  ),
                  AppTextFormField(
                    controller: _passwordController,
                    validator: (p0) => _functions.passwordValidator(p0, false),
                    labelText: 'Password',
                    isObscure: true,
                  ),
                ],
              ),
            ),
            Column(
              children: [
                BlocBuilder<AuthBloc, AuthState>(
                  builder: (context, state) {
                    return AppZoomTapButton(
                      buttonLabel: 'Kirish',
                      onTap: state.authStatus == AuthStatus.loading
                          ? null
                          : () {
                              if (_formKey.currentState!.validate()) {
                                context.read<AuthBloc>().add(
                                      AuthEvent.loginUser(
                                        email: _email,
                                        password: _password,
                                      ),
                                    );
                              }
                            },
                    );
                  },
                ),
                15.h(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ZoomTapAnimation(
                      onTap: () =>
                          Navigator.push(context, ForgotPasswordScreen.route()),
                      child: const Text(
                        'Parolni unutdingizmi?',
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Hisobingiz yo'qmi?"),
                5.w(),
                GestureDetector(
                  onTap: () => Navigator.push(context, SignUpScreen.route()),
                  child: const Text(
                    'Ro\'yxatdan o\'ting',
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
