import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../Constants/Colors.dart';

class Home extends StatefulWidget {
  static const routeName = '/Home';

  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: Center(
          child: Text(
        "Home Screen",
        style: TextStyle(fontSize: 20.sp),
      )),
    );
  }
}
