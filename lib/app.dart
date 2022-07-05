// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:task/config/routes/app_routes.dart';
import 'package:task/core/utils/app_colors.dart';
import 'package:task/core/utils/app_strings.dart';
import 'package:task/screens/login_screen/loginScreen.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
        primaryColor: AppColors.primary,
        scrollbarTheme: const ScrollbarThemeData().copyWith(
          thumbColor: MaterialStateProperty.all(Colors.white),
        ),
      ),
      title: AppStrings.appName,
      routes: routes,
      home: const LoginScreen(),
    );
  }
}
