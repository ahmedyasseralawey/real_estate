// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import '../core/utils/assets_manager.dart';

class appBar extends StatelessWidget {
  const appBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
     backgroundColor: Colors.transparent,
      elevation: 0,
      iconTheme: const IconThemeData(color: Colors.blue),
      centerTitle: true,
      title: SizedBox(
          height: 60, child: Image.asset('$imgPath/logo_horizontal.png')),
    );
  }
}
