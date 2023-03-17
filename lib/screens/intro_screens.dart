import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:habit_builder/screens/auth/login_screen.dart';
import 'package:habit_builder/values/app_colors.dart';
import 'package:habit_builder/values/text_styles.dart';
import 'package:habit_builder/widgets/custom_submitbutton.dart';

class IntroductionScreens extends StatefulWidget {
  const IntroductionScreens({Key? key}) : super(key: key);

  @override
  State<IntroductionScreens> createState() => _IntroductionScreensState();
}

class _IntroductionScreensState extends State<IntroductionScreens> {
  int selectedIndex = 0;
  PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: PageView(
        onPageChanged: (int page) {
          setState(() {
            selectedIndex = page;
          });
        },
        controller: pageController,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 32.w),
            child: Column(
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "WELCOME TO MONUMENTAL HABITS",
                        style: Klasik.copyWith(
                          fontSize: 32.sp,
                          color: AppColors.darkTheme,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Image.asset(
                    "assets/images/bg2.png",
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      RichText(
                        text: TextSpan(
                          text: 'WE CAN ',
                          style: ManropeSemiBold.copyWith(
                            fontSize: 17.sp,
                            color: AppColors.darkTheme,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: 'HELP YOU ',
                              style: ManropeSemiBold.copyWith(
                                fontSize: 17.sp,
                                color: AppColors.darkOrange,
                              ),
                            ),
                            TextSpan(
                              text: 'TO BE A BETTER VERSION OF ',
                              style: ManropeSemiBold.copyWith(
                                fontSize: 17.sp,
                                color: AppColors.darkTheme,
                              ),
                            ),
                            TextSpan(
                              text: 'YOURSELF',
                              style: ManropeSemiBold.copyWith(
                                fontSize: 17.sp,
                                color: AppColors.darkOrange,
                              ),
                            ),
                          ],
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (_) => const LoginScreen()));
                            },
                            child: Text(
                              "Skip",
                              style: ManropeSemiBold.copyWith(
                                fontSize: 17.sp,
                                color: AppColors.darkTheme,
                              ),
                            ),
                          ),
                          Row(
                            children: _buildPageIndicator(),
                          ),
                          InkResponse(
                            onTap: () {
                              pageController.jumpToPage(1);
                            },
                            child: Text(
                              "Next",
                              style: ManropeSemiBold.copyWith(
                                fontSize: 17.sp,
                                color: AppColors.darkTheme,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 32.w),
            child: Column(
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "CREATE NEW HABIT EASILY",
                        style: Klasik.copyWith(
                          fontSize: 32.sp,
                          color: AppColors.darkTheme,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Image.asset(
                    "assets/images/bg3.png",
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      RichText(
                        text: TextSpan(
                          text: 'WE CAN ',
                          style: ManropeSemiBold.copyWith(
                            fontSize: 17.sp,
                            color: AppColors.darkTheme,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: 'HELP YOU ',
                              style: ManropeSemiBold.copyWith(
                                fontSize: 17.sp,
                                color: AppColors.darkOrange,
                              ),
                            ),
                            TextSpan(
                              text: 'TO BE A BETTER VERSION OF ',
                              style: ManropeSemiBold.copyWith(
                                fontSize: 17.sp,
                                color: AppColors.darkTheme,
                              ),
                            ),
                            TextSpan(
                              text: 'YOURSELF',
                              style: ManropeSemiBold.copyWith(
                                fontSize: 17.sp,
                                color: AppColors.darkOrange,
                              ),
                            ),
                          ],
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => const LoginScreen()));
                            },
                            child: Text(
                              "Skip",
                              style: ManropeSemiBold.copyWith(
                                fontSize: 17.sp,
                                color: AppColors.darkTheme,
                              ),
                            ),
                          ),
                          Row(
                            children: _buildPageIndicator(),
                          ),
                          InkResponse(
                            onTap: () {
                              pageController.jumpToPage(2);
                            },
                            child: Text(
                              "Next",
                              style: ManropeSemiBold.copyWith(
                                fontSize: 17.sp,
                                color: AppColors.darkTheme,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 32.w),
            child: Column(
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "KEEP TRACK OF YOUR PROGRESS",
                        style: Klasik.copyWith(
                          fontSize: 32.sp,
                          color: AppColors.darkTheme,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Image.asset(
                    "assets/images/bg4.png",
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      RichText(
                        text: TextSpan(
                          text: 'WE CAN ',
                          style: ManropeSemiBold.copyWith(
                            fontSize: 17.sp,
                            color: AppColors.darkTheme,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: 'HELP YOU ',
                              style: ManropeSemiBold.copyWith(
                                fontSize: 17.sp,
                                color: AppColors.darkOrange,
                              ),
                            ),
                            TextSpan(
                              text: 'TO BE A BETTER VERSION OF ',
                              style: ManropeSemiBold.copyWith(
                                fontSize: 17.sp,
                                color: AppColors.darkTheme,
                              ),
                            ),
                            TextSpan(
                              text: 'YOURSELF',
                              style: ManropeSemiBold.copyWith(
                                fontSize: 17.sp,
                                color: AppColors.darkOrange,
                              ),
                            ),
                          ],
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => const LoginScreen()));
                            },
                            child: Text(
                              "Skip",
                              style: ManropeSemiBold.copyWith(
                                fontSize: 17.sp,
                                color: AppColors.darkTheme,
                              ),
                            ),
                          ),
                          Row(
                            children: _buildPageIndicator(),
                          ),
                          InkResponse(
                            onTap: () {
                              pageController.jumpToPage(3);
                            },
                            child: Text(
                              "Next",
                              style: ManropeSemiBold.copyWith(
                                fontSize: 17.sp,
                                color: AppColors.darkTheme,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 32.w),
            child: Column(
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "JOIN A SUPPORTIVE COMMUNITY",
                        style: Klasik.copyWith(
                          fontSize: 32.sp,
                          color: AppColors.darkTheme,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Image.asset(
                    "assets/images/bg5.png",
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      RichText(
                        text: TextSpan(
                          text: 'WE CAN ',
                          style: ManropeSemiBold.copyWith(
                            fontSize: 17.sp,
                            color: AppColors.darkTheme,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: 'HELP YOU ',
                              style: ManropeSemiBold.copyWith(
                                fontSize: 17.sp,
                                color: AppColors.darkOrange,
                              ),
                            ),
                            TextSpan(
                              text: 'TO BE A BETTER VERSION OF ',
                              style: ManropeSemiBold.copyWith(
                                fontSize: 17.sp,
                                color: AppColors.darkTheme,
                              ),
                            ),
                            TextSpan(
                              text: 'YOURSELF',
                              style: ManropeSemiBold.copyWith(
                                fontSize: 17.sp,
                                color: AppColors.darkOrange,
                              ),
                            ),
                          ],
                        ),
                        textAlign: TextAlign.center,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => const LoginScreen()));
                        },
                        child: const CustomSubmitButton(
                          text: "Get Started",
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _indicator(bool isActive) {
    return SizedBox(
      height: 10.h,
      child: AnimatedContainer(
        duration: Duration(milliseconds: 150),
        margin: EdgeInsets.symmetric(horizontal: 4.0.w),
        height: isActive ? 10.h : 8.0.h,
        width: isActive ? 12.w : 8.0.w,
        decoration: BoxDecoration(
          boxShadow: [
            isActive
                ? BoxShadow(
                    color: AppColors.darkTheme.withOpacity(0.72),
                    blurRadius: 4.0.r,
                    spreadRadius: 1.0.r,
                    offset: Offset(
                      0.0,
                      0.0,
                    ),
                  )
                : const BoxShadow(
                    color: Colors.transparent,
                  )
          ],
          shape: BoxShape.circle,
          color: isActive ? AppColors.darkTheme : AppColors.darkOrange,
        ),
      ),
    );
  }

  List<Widget> _buildPageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < 4; i++) {
      list.add(i == selectedIndex ? _indicator(true) : _indicator(false));
    }
    return list;
  }
}
