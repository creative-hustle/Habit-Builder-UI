import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:habit_builder/screens/community_screen.dart';
import 'package:habit_builder/screens/courses_screen.dart';
import 'package:habit_builder/screens/home_screen.dart';
import 'package:habit_builder/screens/new_habit_screen.dart';
import 'package:habit_builder/screens/settings_screen.dart';
import 'package:habit_builder/values/app_colors.dart';

class MainView extends StatefulWidget {
  const MainView({Key? key}) : super(key: key);

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  int pageIndex = 0;

  final pages = [
    const HomeScreen(),
    const CoursesScreen(),
    const CommunityScreen(),
    const SettingsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[pageIndex],
      backgroundColor: AppColors.primaryBg,
      extendBody: true,
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 8.w,
        elevation: 0,
        child: buildMyNavBar(context),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Material(
        elevation: 3,
        borderRadius: BorderRadius.circular(100.r),
        shadowColor: AppColors.darkOrange2,
        child: InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (_) => const NewHabitScreen()));
          },
          child: Container(
            width: 64.w,
            height: 64.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100.r),
              color: AppColors.darkOrange2.withOpacity(0.5),
            ),
            child: Center(
              child: Container(
                width: 52.w,
                height: 52.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100.r),
                  color: AppColors.darkOrange2,
                ),
                padding: EdgeInsets.all(16.w),
                child: SvgPicture.asset(
                  "assets/images/add.svg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildMyNavBar(BuildContext context) {
    return SizedBox(
      height: 80.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
            child: InkWell(
              onTap: () {
                setState(() {
                  pageIndex = 0;
                });
              },
              child: SizedBox(
                height: 80.h,
                child: Center(
                  child: pageIndex == 0
                      ? Image.asset(
                          "assets/images/n_home.png",
                          width: 50.w,
                          height: 30.w,
                        )
                      : Image.asset(
                          "assets/images/home.png",
                          width: 50.w,
                          height: 30.w,
                        ),
                ),
              ),
            ),
          ),
          Expanded(
            child: InkWell(
              onTap: () {
                setState(() {
                  pageIndex = 1;
                });
              },
              child: Container(
                height: 80.h,
                // color: Colors.red,
                child: Center(
                  child: pageIndex == 1
                      ? Image.asset(
                          "assets/images/n_courses.png",
                          width: 40.w,
                          height: 35.w,
                        )
                      : Image.asset(
                          "assets/images/courses.png",
                          width: 40.w,
                          height: 35.w,
                        ),
                ),
              ),
            ),
          ),
          SizedBox(
            width: 60.w,
          ),
          Expanded(
            child: InkWell(
              onTap: () {
                setState(() {
                  pageIndex = 2;
                });
              },
              child: Container(
                height: 80.h,
                // color: Colors.red,
                child: Center(
                  child: pageIndex == 2
                      ? Image.asset(
                          "assets/images/n_community.png",
                          width: 40.w,
                          height: 37.w,
                        )
                      : Image.asset(
                          "assets/images/community.png",
                          width: 40.w,
                          height: 37.w,
                        ),
                ),
              ),
            ),
          ),
          Expanded(
            child: InkWell(
              onTap: () {
                setState(() {
                  pageIndex = 3;
                });
              },
              child: Container(
                height: 80.h,
                // color: Colors.red,
                child: Center(
                  child: pageIndex == 3
                      ? Image.asset(
                          "assets/images/n_settings.png",
                          width: 40.w,
                          height: 40.w,
                        )
                      : Image.asset(
                          "assets/images/settings.png",
                          width: 40.w,
                          height: 40.w,
                        ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
