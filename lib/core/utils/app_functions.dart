import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:toastification/toastification.dart';

class AppFunctions {
  String get uid => FirebaseAuth.instance.currentUser?.uid ?? 'null';

  String get userName =>
      FirebaseAuth.instance.currentUser?.displayName ?? 'unnamed';

  String? textValidator(String? text, String fieldName) {
    if (text == null || text.trim().isEmpty) {
      return 'Iltimos, $fieldName kiriting';
    }
    return null;
  }

  String? emailValidator(String? email) {
    if (email == null || email.trim().isEmpty) {
      return 'Iltimos, emailingizni kiriting';
    } else if (!RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$')
        .hasMatch(email)) {
      return 'Iltimos, emailingizni to\'g\'ri kiriting';
    }
    return null;
  }

  String? passwordValidator(String? password, bool isSignUp) {
    if (password == null || password.trim().isEmpty) {
      return 'Iltimos, parolingizni kiriting';
    } else if (isSignUp &&
        !RegExp(r'^(?=.*[a-zA-Z]).{8,}$').hasMatch(password)) {
      return 'Parol kuchliroq bo\'lishi kerak';
    }
    return null;
  }

  void showToast({
    required String message,
    required bool isSuccess,
    required BuildContext context,
  }) {
    toastification.show(
      context: context,
      type: isSuccess ? ToastificationType.success : ToastificationType.error,
      autoCloseDuration: const Duration(seconds: 5),
      description: Text(message),
      icon: const Icon(Icons.error),
      closeButtonShowType: CloseButtonShowType.onHover,
    );
  }
}
