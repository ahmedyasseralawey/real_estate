// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import '../../widgets/app_bar.dart';
import '../../widgets/custom_card.dart';
import '../../widgets/text_line_between_parts.dart';
import '../login_screen/screen_parts/lowest_price_part.dart';
import '../login_screen/screen_parts/upper_part.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 4;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      extendBodyBehindAppBar: true,
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(70.0),
        child: appBar(),
      ),
      endDrawer: const Drawer(
        backgroundColor: Colors.blue,
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
          const UpperPart(),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomCard(
                text: 'للايجار',
                onTap: () {},
              ),
              CustomCard(
                text: 'للبيع',
                onTap: () {},
              ),
              CustomCard(
                text: 'جميع العقارات',
                onTap: () {},
              ),
            ],
          ),
          const SizedBox(height: 30),
          TextLineBetweenParts(
            text: 'الاقل سعرا',
            onPressed: () {},
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                lowestPricePart(),
                lowestPricePart(),
                lowestPricePart(),
                lowestPricePart(),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 30.0),
            child: TextLineBetweenParts(
              text: 'احدث العقارات',
              onPressed: () {},
            ),
          ),
          const SizedBox(height: 10),
          // GridView.count(
          //   crossAxisCount: 2,
          //   children: [
          //     latestPricePart(),
          //     latestPricePart(),
          //     latestPricePart(),
          //     latestPricePart(),
          //   ],
          // ),
        ],
      ),
      bottomNavigationBar: bottomNavigationBar(context),
    );
  }

  Theme bottomNavigationBar(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
          // sets the background color of the `BottomNavigationBar`
          canvasColor: Colors.white,
          // sets the active color of the `BottomNavigationBar` if `Brightness` is light
          primaryColor: Colors.blue,
          textTheme: Theme.of(context)
              .textTheme
              .copyWith(caption: const TextStyle(color: Colors.black))),
      child: BottomNavigationBar(
        iconSize: 30,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: index,
        onTap: (int selectedIndex) {
          setState(() {
            index = selectedIndex;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
              color: Colors.blueGrey,
            ),
            label: ('الاعدادات'),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              color: Colors.blueGrey,
            ),
            label: ('بحث'),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_bag,
              color: Colors.blueGrey,
            ),
            label: ('التوكيلات'),
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.domain,
                color: Colors.blueGrey,
              ),
              label: ('العقارات')),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.blueGrey,
              ),
              label: "الرءيسيه")
        ],
      ),
    );
  }
}
