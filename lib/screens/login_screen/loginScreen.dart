// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:task/config/routes/app_routes.dart';
import 'package:task/core/utils/app_colors.dart';
import 'package:task/core/utils/app_strings.dart';
import 'package:task/core/utils/assets_manager.dart';
import '../../widgets/auth_text_field.dart';
import '../../widgets/signup.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Stack(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 60),
              color: AppColors.primary,
              width: double.infinity,
              child: Column(
                children: [
                  const Padding(padding: EdgeInsets.only()),
                  const SizedBox(height: 30),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Image.asset('$imgPath/logo_horizontal.png'),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(40),
              padding: const EdgeInsets.only(top: 275, left: 5, right: 5),
              child: Column(
                children: [
                  const AuthTextField(
                    icon: Icons.facebook,
                    hintText: 'Email Address',
                    textInputType: TextInputType.emailAddress,
                    obscureText: false,
                  ),
                  const SizedBox(height: 30),
                  const AuthTextField(
                    icon: Icons.lock,
                    hintText: 'Password',
                    textInputType: TextInputType.visiblePassword,
                    obscureText: true,
                  ),
                  const SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Text(
                        "Forgot Password?",
                        style: TextStyle(
                            fontFamily: AppStrings.fontFamilyForLogin),
                      ),
                    ],
                  ),
                  const SizedBox(height: 70),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // ignore: deprecated_member_use
                      FlatButton(
                        padding: const EdgeInsets.symmetric(
                            vertical: 15, horizontal: 35),
                        onPressed: () => Navigator.pushNamed(
                            context, Routes.homeScreenRoute),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        child: const Text(
                          AppStrings.signIn,
                        ),
                        color: AppColors.primary,
                      ),
                    ],
                  ),
                  const SizedBox(height: 120),
                  signup(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
