import 'package:app/app/pages/HomeScreen/HomeScreen.dart';
import 'package:app/app/pages/SplashScreen/SplashScreen.dart';
import 'package:flutter/widgets.dart';

class AppRoute {
  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  static Map<String, WidgetBuilder> registerRoutes() {
    return {
      SplashScreen.routePath: (context) => const SplashScreen(),
      HomeScreen.routePath: (context) => const HomeScreen(),
    };
  }
}
