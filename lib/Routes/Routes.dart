import 'package:flutter/material.dart';
import '../Screen/Main/home.dart';
import '../Screen/Main/SplashScreen.dart';

class Router {
  static MaterialPageRoute onRouteGenrator(settings) {
    switch (settings.name) {
      case SplashScreen.routeName:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const SplashScreen(),
        );
      case Home.routeName:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const Home(),
        );

      default:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const Material(
            child: Center(
              child: Text("404 page not founded"),
            ),
          ),
        );
    }
  }
}
