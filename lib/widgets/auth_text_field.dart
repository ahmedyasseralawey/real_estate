// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import '../core/utils/app_colors.dart';

class AuthTextField extends StatelessWidget {
  const AuthTextField({
    Key? key,
    required this.icon,
    required this.hintText,
    required this.textInputType,
    required this.obscureText,
  }) : super(key: key);
  final IconData icon;
  final String hintText;
  final TextInputType textInputType;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        prefixIcon: Icon(
          icon,
          color: AppColors.primary,
          size: 30,
        ),
        focusColor: AppColors.primary,
        hintText: hintText,
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: AppColors.primary),
        ),
      ),
      keyboardType: textInputType,
      obscureText: obscureText,
    );
  }
}
