import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:habit_builder/values/app_colors.dart';
import 'package:habit_builder/values/text_styles.dart';

class CustomSubmitButton extends StatelessWidget {
  const CustomSubmitButton({Key? key, required this.text, this.bgColor}) : super(key: key);
  final String text;
  final Color? bgColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.h,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.r),
        color: bgColor ?? AppColors.darkOrange,
      ),
      child: Center(
        child: Text(
          text,
          style: ManropeBold.copyWith(
            fontSize: 16.sp,
            color: AppColors.darkTheme,
          ),
        ),
      ),
    );
  }
}
