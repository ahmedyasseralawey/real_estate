// Project imports:
import 'package:task/screens/home_screen/home_screen.dart';
import 'package:task/screens/login_screen/loginScreen.dart';

class Routes {
  static const String loginScreenRoute = '/loginScreen';
  static const String homeScreenRoute = '/homeScreen';
}

final routes = {
  Routes.loginScreenRoute: (context) => LoginScreen(),
  Routes.homeScreenRoute: (context) => const HomeScreen(),
};
