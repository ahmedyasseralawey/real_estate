// Dart imports:
import 'dart:ffi';

// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:task/core/utils/app_strings.dart';

class LoginText extends StatelessWidget {
  const LoginText({Key? key, required this.text, required this.fontSize})
      : super(key: key);
  final String text;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: AppStrings.fontFamilyForLogin,
        color: Theme.of(context).primaryColor,
        fontSize: fontSize,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
