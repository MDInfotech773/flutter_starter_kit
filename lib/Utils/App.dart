import 'package:adpluginx/adpluginx.dart';
import 'package:shared_preferences/shared_preferences.dart';

class App {
  static SharedPreferences? prefs;
  static String version = PackageInfoX().version ?? "1.0";
}
