// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:task/core/utils/app_strings.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({
    Key? key,
    required this.image,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  final ImageProvider image;
  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
      child: GestureDetector(
        onTap: () {
          onPressed();
        },
        child: Container(
          height: 55.0,
          decoration: BoxDecoration(
            border: Border.all(color: Theme.of(context).primaryColor),
            borderRadius: BorderRadius.circular(20.0),
          ),
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              const SizedBox(
                width: 5,
              ),
              Image(
                image: image,
                width: 50.0,
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      text,
                      style: TextStyle(
                          fontFamily: AppStrings.fontFamilyForLogin,
                          color: Theme.of(context).primaryColor,
                          fontSize: 18),
                    ),
                    const SizedBox(width: 35)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
