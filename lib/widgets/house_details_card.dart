// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import '../core/utils/app_strings.dart';
import '../core/utils/assets_manager.dart';

class HouseDetailsCard extends StatelessWidget {
  const HouseDetailsCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      elevation: 20,
      child: Column(
        children: [
          Stack(
            children: [
              Image.asset('$imgPath/egypt.png'),
              CircleAvatar(
                backgroundColor: Colors.white.withOpacity(0.2),
                child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.favorite_border_outlined)),
              )
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: const Text(
                  'للبيع',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontFamily: AppStrings.fontFamily),
                ),
                width: 80,
                height: 30,
                decoration: const BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(12),
                    bottomRight: Radius.circular(12),
                  ),
                ),
              ),
              const Text(
                'فيلا',
                style:
                    TextStyle(fontSize: 20, fontFamily: AppStrings.fontFamily),
              ),
              Container(
                width: 15,
                height: 30,
                decoration: const BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12),
                    bottomLeft: Radius.circular(12),
                  ),
                ),
              )
            ],
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'فيلا مستقله للبيع في ماونت فيو',
              textAlign: TextAlign.right,
              style: TextStyle(
                  color: Colors.blueAccent,
                  fontFamily: AppStrings.fontFamily,
                  fontSize: 18,
                  fontWeight: FontWeight.w500),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 8.0, left: 70),
            child: Text(
              '4.000.000',
              textAlign: TextAlign.end,
              style: TextStyle(
                  fontFamily: AppStrings.fontFamily,
                  fontSize: 18,
                  fontWeight: FontWeight.w700),
            ),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'كمبوند الشيخ ذايد',
                style: TextStyle(
                    color: Colors.blueAccent,
                    fontFamily: AppStrings.fontFamily,
                    fontSize: 18,
                    fontWeight: FontWeight.w500),
              ),
              Image.asset(
                '$imgPath/location.png',
                height: 28,
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: [
                  const Text('4'),
                  const SizedBox(width: 5),
                  Image.asset(
                    '$imgPath/bed.png',
                    height: 25,
                  ),
                ],
              ),
              Row(
                children: [
                  const Text('3'),
                  const SizedBox(width: 5),
                  Image.asset(
                    '$imgPath/bath_icon.png',
                    height: 25,
                  ),
                ],
              ),
              Row(
                children: [
                  const Text('165'),
                  const SizedBox(width: 5),
                  Image.asset(
                    '$imgPath/space.png',
                    height: 25,
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
