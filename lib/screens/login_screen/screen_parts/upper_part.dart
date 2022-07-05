// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:task/core/utils/media_query_values.dart';
import '../../../core/utils/app_strings.dart';
import '../../../core/utils/assets_manager.dart';
import '../../../widgets/gradient_text.dart';

class UpperPart extends StatelessWidget {
  const UpperPart({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: context.width,
          height: context.height / 3,
          child: Image.asset(
            '$imgPath/egypt.png',
            fit: BoxFit.fill,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GradientText(
                AppStrings.hello,
                style: const TextStyle(
                    fontFamily: AppStrings.fontFamily, fontSize: 30),
                gradient: LinearGradient(
                  colors: [
                    Colors.orange.shade400,
                    Colors.orange.shade900,
                  ],
                ),
              ),
            ),
          ],
        ),
        const Positioned(
          left: 20,
          top: 170,
          child: SizedBox(
            width: 345,
            height: 50,
            child: TextField(
              textAlign: TextAlign.end,
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                prefixIcon: Icon(Icons.search),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(18),
                      bottomLeft: Radius.circular(18)),
                ),
                hintText: 'ابحث عن',
                hintStyle:
                    TextStyle(fontFamily: AppStrings.fontFamily, fontSize: 24),
              ),
            ),
          ),
        ),
        Positioned(
          right: 20,
          top: 170,
          child: Container(
            width: 90,
            height: 50,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(12),
                bottomRight: Radius.circular(12),
              ),
            ),
            child: Row(
              children: [
                PopupMenuButton(
                  icon: const Icon(Icons.arrow_downward),
                  itemBuilder: (BuildContext context) => <PopupMenuEntry>[
                    const PopupMenuItem(
                      child: ListTile(
                        title: Text('Item 1'),
                      ),
                    ),
                    const PopupMenuItem(
                      child: ListTile(
                        title: Text('Item 2'),
                      ),
                    ),
                    const PopupMenuItem(
                      child: ListTile(
                        title: Text('Item 3'),
                      ),
                    ),
                    const PopupMenuDivider(),
                    const PopupMenuItem(child: Text('Item A')),
                    const PopupMenuItem(child: Text('Item B')),
                  ],
                ),
                const Text(
                  'للبيع',
                  style: TextStyle(
                      fontFamily: AppStrings.fontFamily, fontSize: 18),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
