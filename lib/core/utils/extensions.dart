import 'package:flutter/material.dart';

extension SizedBoxExtension on int {
  Widget w() => SizedBox(width: toDouble());

  Widget h() => SizedBox(height: toDouble());
}