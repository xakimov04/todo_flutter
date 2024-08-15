import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_flutter/app_settings.dart';
import 'package:todo_flutter/core/utils/app_functions.dart';
import 'package:todo_flutter/logic/bloc/auth/auth_bloc.dart';

import '../../widgets/widgets.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  static Route<void> route() =>
      CupertinoPageRoute(builder: (context) => const ForgotPasswordScreen());

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final AppFunctions _functions = getIt.get<AppFunctions>();
  final TextEditingController _emailController = TextEditingController();

  String get _email => _emailController.text;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text(
              'Parolni tiklash',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
              textAlign: TextAlign.center,
            ),
            Form(
              key: _formKey,
              child: AppTextFormField(
                controller: _emailController,
                validator: _functions.emailValidator,
                labelText: 'Email',
              ),
            ),
            AppZoomTapButton(
              buttonLabel: 'Parolni tiklash',
              onTap: () {
                if (_formKey.currentState!.validate()) {
                  context.read<AuthBloc>().add(AuthEvent.resetPassword(
                        email: _email,
                      ));
                  Navigator.of(context).pop();
                  _functions.showToast(
                    message:
                        'Parolingizni tiklash uchun emailingizga havolo yubordik',
                    isSuccess: true,
                    context: context,
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
