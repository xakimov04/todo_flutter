import 'package:flutter/material.dart';
import 'package:todo_flutter/core/utils/extensions.dart';

class AppTextFormField extends StatefulWidget {
  final String? labelText;
  final TextEditingController controller;
  final String? Function(String?) validator;
  final bool isObscure;

  const AppTextFormField({
    super.key,
    required this.controller,
    required this.validator,
    this.labelText,
    this.isObscure = false,
  });

  @override
  State<AppTextFormField> createState() => _AppTextFormFieldState();
}

class _AppTextFormFieldState extends State<AppTextFormField> {
  late bool _isObscure;

  @override
  void initState() {
    super.initState();
    _isObscure = widget.isObscure;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          controller: widget.controller,
          obscureText: _isObscure,
          decoration: InputDecoration(
            suffixIcon: _passwordToggleObscure(),
            labelText: widget.labelText,
            labelStyle: const TextStyle(color: Colors.black),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: const BorderSide(width: 1.5),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: const BorderSide(width: 1.5),
            ),
          ),
          validator: widget.validator,
        ),
        15.h(),
      ],
    );
  }

  Widget? _passwordToggleObscure() => widget.isObscure
      ? GestureDetector(
          onTap: () => setState(() => _isObscure = !_isObscure),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Icon(
              _isObscure ? Icons.visibility_off : Icons.visibility,
            ),
          ),
        )
      : null;
}
