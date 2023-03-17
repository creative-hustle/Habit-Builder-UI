import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:habit_builder/screens/auth/login_screen.dart';
import 'package:habit_builder/screens/intro_screens.dart';
import 'package:habit_builder/values/app_colors.dart';
import 'package:habit_builder/values/text_styles.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    time();
  }

  time() {
    Timer(
      const Duration(seconds: 3),
      () {
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => const IntroductionScreens()));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset(
              "assets/images/splash.png",
              height: double.infinity,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: EdgeInsets.only(top: 96.h, right: 75.w, left: 75.w),
              child: Text(
                "WELCOME TO MONUMENTAL HABITS",
                style: Klasik.copyWith(
                  fontSize: 40.sp,
                  color: AppColors.darkTheme,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
