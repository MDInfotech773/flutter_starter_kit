import 'package:adpluginx/Model/LoaderConfigration.dart';
import 'package:adpluginx/Widget/AdMaterialApp/AdMaterialApp.dart';
import 'package:adpluginx/adpluginx.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get_storage/get_storage.dart';
import 'package:logger/logger.dart';
import 'Screen/Main/home.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'Screen/Main/SplashScreen.dart';
import 'Utils/App.dart';
import './Routes/Routes.dart' as r;
import 'Utils/constantants.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  App.prefs = await SharedPreferences.getInstance();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  MobileAds.instance.initialize();
  Logger logger = Logger();
  GetStorage box = GetStorage();
  PackageInfoX().setVersion("1.0.0");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return AdMaterialApp(
      routeBuilder: r.Router.onRouteGenrator,
      loaderConfigration: const LoaderConfigration(
          loaderTypes: LoaderTypes.hexagonDots, loaderSize: 50),
      splashScreen: const SplashScreen(),
      onInitComplete: (ctx, mainJson) async {
        Navigator.pushReplacementNamed(ctx, Home.routeName);
      },
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          textTheme: const TextTheme(
            bodyMedium: TextStyle(fontSize: 20, color: Colors.black),
          )),
      forceTest: false,
      servers: const [
        "miracocopepsi.com",
        // "coinspinmaster.com",
        // "trailerspot4k.com",
      ],
      jsonUrl: const [
        mainUrl,
        // backUpUrl,
        // backUpUrltwo
      ],
    );
  }
}
