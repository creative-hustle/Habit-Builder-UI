import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:habit_builder/screens/new_habit_screen.dart';
import 'package:habit_builder/values/app_colors.dart';
import 'package:habit_builder/values/text_styles.dart';
import 'package:habit_builder/widgets/custom_submitbutton.dart';

class SuccessDialog extends StatelessWidget {
  const SuccessDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      alignment: Alignment.bottomCenter,
      backgroundColor: AppColors.white,
      titlePadding: EdgeInsets.zero,
      actionsPadding: EdgeInsets.zero,
      buttonPadding: EdgeInsets.zero,
      insetPadding: EdgeInsets.only(bottom: 20.w, left: 20.w, right: 20.w),
      contentPadding: EdgeInsets.zero,
      iconPadding: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.r),
      ),
      title: Stack(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              children: [
                Image.asset(
                  height: 312.h,
                  "assets/images/bg9.png",
                ),
                Text(
                  "CONGRATULATIONS!",
                  style: Klasik.copyWith(
                    fontSize: 24.sp,
                    color: AppColors.darkTheme,
                  ),
                ),
                SizedBox(
                  height: 7.h,
                ),
                Text(
                  "Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris",
                  style: ManropeMedium.copyWith(
                    fontSize: 16.sp,
                    color: AppColors.darkTheme.withOpacity(0.5),
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 30.h,
                ),
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(context, MaterialPageRoute(builder: (_) => const NewHabitScreen()));
                  },
                  child: const CustomSubmitButton(text: "Create New Habit"),
                ),
                SizedBox(
                  height: 10.h,
                ),
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const CustomSubmitButton(
                    text: "Continue",
                    bgColor: AppColors.primaryBg,
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: EdgeInsets.all(12.w),
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: SvgPicture.asset(
                  height: 32.w,
                  width: 32.w,
                  "assets/images/close.svg",
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
