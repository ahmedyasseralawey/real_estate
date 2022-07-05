// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import '../core/utils/app_strings.dart';
import '../core/utils/assets_manager.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    Key? key, required this.onTap, required this.text,
  }) : super(key: key);
  final Function() onTap;
  final String text;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        color: Colors.blue,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                text,
                style: const TextStyle(
                    fontFamily: AppStrings.fontFamily, fontSize: 18,color: Colors.white),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                '$imgPath/cat_icon.png',color: Colors.white,
                height: 40,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
