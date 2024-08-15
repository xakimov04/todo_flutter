import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../app_settings.dart';
import '../../widgets/widgets.dart';
import '../../../logic/bloc/auth/auth_bloc.dart';
import '../../../core/utils/utils.dart' show AppFunctions, SizedBoxExtension;

class SignUpScreen extends StatefulWidget {
  const SignUpScreen._();

  static Route<void> route() =>
      CupertinoPageRoute(builder: (_) => const SignUpScreen._());

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final AppFunctions _functions = getIt.get<AppFunctions>();

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  String get _name => _nameController.text;

  String get _email => _emailController.text;

  String get _password => _passwordController.text;

  String get _cPassword => _confirmPasswordController.text;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Sign up',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
              textAlign: TextAlign.center,
            ),
            Form(
              key: _formKey,
              child: Column(
                children: [
                  AppTextFormField(
                    controller: _nameController,
                    validator: (p0) =>
                        _functions.textValidator(p0, 'isminigizni'),
                    labelText: 'Isminigz',
                  ),
                  AppTextFormField(
                    controller: _emailController,
                    validator: _functions.emailValidator,
                    labelText: 'Email',
                  ),
                  AppTextFormField(
                    controller: _passwordController,
                    validator: (p0) => _functions.passwordValidator(p0, true),
                    labelText: 'Parol',
                    isObscure: true,
                  ),
                  AppTextFormField(
                    controller: _confirmPasswordController,
                    validator: (p0) {
                      if (_password != _cPassword) {
                        return 'Parol birxil bo\'lishi kerak';
                      }
                      return null;
                    },
                    labelText: 'Parolni tasdiqlash',
                    isObscure: true,
                  ),
                ],
              ),
            ),
            BlocConsumer<AuthBloc, AuthState>(
              listener: (context, state) {
                if (state.authStatus == AuthStatus.authenticated) {
                  Navigator.of(context).pop();
                } else if (state.authStatus == AuthStatus.error) {
                  _functions.showToast(
                    message: '${state.error}',
                    isSuccess: false,
                    context: context,
                  );
                }
              },
              builder: (context, state) {
                return AppZoomTapButton(
                  buttonLabel: 'Ro\'yxatdan o\'tish.',
                  onTap: state.authStatus == AuthStatus.loading
                      ? null
                      : () {
                          if (_formKey.currentState!.validate()) {
                            context.read<AuthBloc>().add(
                                  AuthEvent.registerUser(
                                    name: _name,
                                    email: _email,
                                    password: _password,
                                  ),
                                );
                          }
                        },
                );
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Hisobingiz bormi?"),
                5.w(),
                GestureDetector(
                  onTap: () => Navigator.of(context).pop(),
                  child: const Text(
                    'Kirish',
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
