// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import '../core/utils/app_colors.dart';
import '../core/utils/app_strings.dart';

Widget signup() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      const Text(
        "Don't have an account?",
        style:
            TextStyle(fontFamily: AppStrings.fontFamilyForLogin, fontSize: 20),
      ),
      InkWell(
        child: Text(
          AppStrings.signUp,
          style: TextStyle(
            fontFamily: AppStrings.fontFamilyForLogin,
            fontSize: 20,
            color: AppColors.primary,
          ),
        ),
        onTap: () {},
      )
    ],
  );
}
