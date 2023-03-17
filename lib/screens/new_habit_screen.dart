import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:habit_builder/screens/reminder_screen.dart';
import 'package:habit_builder/values/app_colors.dart';
import 'package:habit_builder/values/text_styles.dart';
import 'package:habit_builder/widgets/custom_submitbutton.dart';
import 'package:habit_builder/widgets/custom_textfield.dart';

class NewHabitScreen extends StatefulWidget {
  const NewHabitScreen({Key? key}) : super(key: key);

  @override
  State<NewHabitScreen> createState() => _NewHabitScreenState();
}

class _NewHabitScreenState extends State<NewHabitScreen> {
  var searchFocusNode = FocusNode();
  TextEditingController searchController = TextEditingController();
  bool status = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryBg,
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                Expanded(
                  child: Image.asset(
                    "assets/images/bg7.png",
                    width: double.infinity,
                    height: double.infinity,
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          height: 40.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Container(
                                  height: 44.w,
                                  width: 44.w,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100.r),
                                    color: AppColors.darkTheme.withOpacity(0.1),
                                  ),
                                  child: SvgPicture.asset(
                                    "assets/images/back.svg",
                                  ),
                                  padding: EdgeInsets.symmetric(vertical: 15.h, horizontal: 13.w),
                                ),
                              ),
                            ),
                            Text(
                              "NEW HABIT",
                              style: ManropeBold.copyWith(
                                fontSize: 18.sp,
                                color: AppColors.darkTheme,
                              ),
                            ),
                            SizedBox(
                              height: 44.w,
                              width: 44.w,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 30.h,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              child: CustomTextfield(
                                focusNode: searchFocusNode,
                                isPassword: false,
                                showPassword: false,
                                prefixImage: "",
                                bgColor: AppColors.white,
                                textInputType: TextInputType.text,
                                hintText: "Enter habit name",
                                textEditingController: searchController,
                                hintStyle: ManropeMedium.copyWith(
                                  fontSize: 16.sp,
                                  color: AppColors.darkTheme.withOpacity(0.5),
                                ),
                                textCapitalization: TextCapitalization.sentences,
                              ),
                            ),
                            SizedBox(
                              width: 12.w,
                            ),
                            Image.asset(
                              "assets/images/new_add.png",
                              height: 56.h,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: AppColors.white,
                            borderRadius: BorderRadius.circular(12.r),
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 20.w, right: 10.w, top: 17.h, bottom: 17.h),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Habit Frequency",
                                      style: ManropeMedium.copyWith(
                                        fontSize: 16.sp,
                                        color: AppColors.darkTheme,
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "Custom  ",
                                          style: ManropeBold.copyWith(
                                            fontSize: 16.sp,
                                            color: AppColors.darkOrange,
                                          ),
                                        ),
                                        SvgPicture.asset(
                                          "assets/images/arrow.svg",
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                height: 2.w,
                                color: AppColors.primaryBg,
                              ),
                              SizedBox(
                                height: 83.w,
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "SUN",
                                            style: ManropeBold.copyWith(
                                              fontSize: 10.sp,
                                              color: AppColors.darkTheme.withOpacity(0.5),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 10.h,
                                          ),
                                          SvgPicture.asset(
                                            "assets/images/full.svg",
                                            height: 38.w,
                                            width: 38.w,
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: 2.w,
                                      color: AppColors.primaryBg,
                                    ),
                                    Expanded(
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "MON",
                                            style: ManropeBold.copyWith(
                                              fontSize: 10.sp,
                                              color: AppColors.darkTheme.withOpacity(0.5),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 10.h,
                                          ),
                                          SvgPicture.asset(
                                            "assets/images/half.svg",
                                            height: 38.w,
                                            width: 38.w,
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: 2.w,
                                      color: AppColors.primaryBg,
                                    ),
                                    Expanded(
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "TUE",
                                            style: ManropeBold.copyWith(
                                              fontSize: 10.sp,
                                              color: AppColors.darkTheme.withOpacity(0.5),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 10.h,
                                          ),
                                          SvgPicture.asset(
                                            "assets/images/half.svg",
                                            height: 38.w,
                                            width: 38.w,
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: 2.w,
                                      color: AppColors.primaryBg,
                                    ),
                                    Expanded(
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "WED",
                                            style: ManropeBold.copyWith(
                                              fontSize: 10.sp,
                                              color: AppColors.darkTheme.withOpacity(0.5),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 10.h,
                                          ),
                                          SvgPicture.asset(
                                            "assets/images/full.svg",
                                            height: 38.w,
                                            width: 38.w,
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: 2.w,
                                      color: AppColors.primaryBg,
                                    ),
                                    Expanded(
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "THU",
                                            style: ManropeBold.copyWith(
                                              fontSize: 10.sp,
                                              color: AppColors.darkTheme.withOpacity(0.5),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 10.h,
                                          ),
                                          SvgPicture.asset(
                                            "assets/images/half.svg",
                                            height: 38.w,
                                            width: 38.w,
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: 2.w,
                                      color: AppColors.primaryBg,
                                    ),
                                    Expanded(
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "FRI",
                                            style: ManropeBold.copyWith(
                                              fontSize: 10.sp,
                                              color: AppColors.darkTheme.withOpacity(0.5),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 10.h,
                                          ),
                                          SvgPicture.asset(
                                            "assets/images/full.svg",
                                            height: 38.w,
                                            width: 38.w,
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: 2.w,
                                      color: AppColors.primaryBg,
                                    ),
                                    Expanded(
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "SAT",
                                            style: ManropeBold.copyWith(
                                              fontSize: 10.sp,
                                              color: AppColors.darkTheme.withOpacity(0.5),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 10.h,
                                          ),
                                          SvgPicture.asset(
                                            "assets/images/full.svg",
                                            height: 38.w,
                                            width: 38.w,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        InkWell(
                          onTap: () {
                            showReminderDialog(context);
                          },
                          child: Container(
                            padding: EdgeInsets.only(left: 20.w, right: 10.w, top: 17.h, bottom: 17.h),
                            decoration: BoxDecoration(
                              color: AppColors.white,
                              borderRadius: BorderRadius.circular(12.r),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Reminder",
                                  style: ManropeMedium.copyWith(
                                    fontSize: 16.sp,
                                    color: AppColors.darkTheme,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "10:00AM  ",
                                      style: ManropeBold.copyWith(
                                        fontSize: 16.sp,
                                        color: AppColors.darkOrange,
                                      ),
                                    ),
                                    SvgPicture.asset(
                                      "assets/images/arrow.svg",
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 20.w, right: 10.w, top: 17.h, bottom: 17.h),
                          decoration: BoxDecoration(
                            color: AppColors.white,
                            borderRadius: BorderRadius.circular(12.r),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Notification",
                                style: ManropeMedium.copyWith(
                                  fontSize: 16.sp,
                                  color: AppColors.darkTheme,
                                ),
                              ),
                              FlutterSwitch(
                                width: 54.w,
                                height: 30.h,
                                valueFontSize: 10.sp,
                                toggleSize: 20.w,
                                value: status,
                                borderRadius: 15.r,
                                padding: 4.h,
                                showOnOff: true,
                                onToggle: (val) {
                                  setState(() {
                                    status = val;
                                  });
                                },
                                activeColor: AppColors.active,
                                activeToggleColor: AppColors.darkOrange,
                                inactiveColor: AppColors.darkTheme.withOpacity(0.1),
                                inactiveToggleColor: AppColors.darkTheme,
                                activeTextColor: AppColors.darkOrange,
                                inactiveTextColor: AppColors.darkTheme,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 80.h,
                    ),
                    Column(
                      children: [
                        Stack(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12.r),
                                color: AppColors.white,
                              ),
                              margin: EdgeInsets.only(top: 35.w),
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 51.h,
                                  ),
                                  Text(
                                    "START THIS HABIT",
                                    style: Klasik.copyWith(
                                      fontSize: 32.sp,
                                      color: AppColors.darkTheme,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 30.w),
                                    child: Text(
                                      "ullamco laboris nisi ut aliquip ex ea commodo consequat dolore.",
                                      style: ManropeMedium.copyWith(
                                        fontSize: 14.sp,
                                        color: AppColors.darkTheme.withOpacity(0.5),
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 15.h,
                                  ),
                                  SvgPicture.asset(
                                    "assets/images/down.svg",
                                    height: 26.w,
                                    width: 20.w,
                                  ),
                                  SizedBox(
                                    height: 20.h,
                                  ),
                                ],
                              ),
                            ),
                            Align(
                              alignment: Alignment.topCenter,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(100.r),
                                child: Image.asset(
                                  "assets/images/bg8.png",
                                  height: 70.w,
                                  width: 70.w,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: const CustomSubmitButton(text: "Start"),
                        ),
                        SizedBox(
                          height: 30.h,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  showReminderDialog(BuildContext context) {
    // show the dialog
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return ReminderScreen();
      },
    );
  }
}
