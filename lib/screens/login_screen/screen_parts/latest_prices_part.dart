// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import '../../../widgets/house_details_card.dart';

Row latestPricePart() {
  return Row(
    children: const [
      SizedBox(
        height: 400,
        width: 200,
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: HouseDetailsCard(),
        ),
      ),
    ],
  );
}
