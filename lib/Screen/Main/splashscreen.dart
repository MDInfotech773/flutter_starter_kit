import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../Constants/Colors.dart';

class SplashScreen extends StatefulWidget {
  static const routeName = '/SplashScreen';

  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: Center(
          child: Text(
        "SplashScreen",
        style: TextStyle(fontSize: 20.sp),
      )),
    );
  }
}
