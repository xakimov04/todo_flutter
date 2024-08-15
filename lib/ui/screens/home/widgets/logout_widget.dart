import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../logic/bloc/auth/auth_bloc.dart';

class LogoutWidget extends StatelessWidget {
  const LogoutWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: const Text(
                'Siz haqiqatdan ham dasturdan chiqmoqchimisiz?',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              actions: [
                TextButton(
                  style: ButtonStyle(
                    overlayColor: WidgetStatePropertyAll(
                      Colors.black.withOpacity(0.1),
                    ),
                  ),
                  onPressed: () => Navigator.of(context).pop(),
                  child: const Text('Ortga',
                      style: TextStyle(color: Colors.black)),
                ),
                TextButton(
                  style: ButtonStyle(
                    overlayColor: WidgetStatePropertyAll(
                      Colors.black.withOpacity(0.1),
                    ),
                  ),
                  onPressed: () {
                    context.read<AuthBloc>().add(const AuthEvent.logout());
                    Navigator.of(context).pop();
                  },
                  child:
                      const Text('Ha!', style: TextStyle(color: Colors.black)),
                ),
              ],
            );
          },
        );
      },
      icon: const Icon(Icons.logout),
    );
  }
}
