// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import '../core/utils/app_strings.dart';

class TextLineBetweenParts extends StatelessWidget {
  const TextLineBetweenParts({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);
  final String text;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextButton(
          onPressed: () {},
          child: const Text(
            'اظهار الكل',
            style: TextStyle(fontFamily: AppStrings.fontFamily, fontSize: 28),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: Text(
            text,
            style: const TextStyle(
                fontFamily: AppStrings.fontFamily,
                fontSize: 28,
                fontWeight: FontWeight.w500),
          ),
        )
      ],
    );
  }
}
