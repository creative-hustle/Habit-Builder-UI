import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:habit_builder/values/app_colors.dart';
import 'package:habit_builder/values/text_styles.dart';

class CustomTextfield extends StatefulWidget {
  FocusNode focusNode;
  final bool isPassword;
  bool showPassword = false;
  final String prefixImage;
  final String hintText;
  final Color bgColor;
  final TextInputType textInputType;
  final TextEditingController textEditingController;
  final TextStyle? style;
  final TextStyle? hintStyle;
  final TextCapitalization? textCapitalization;
  CustomTextfield({
    Key? key,
    required this.focusNode,
    required this.isPassword,
    required this.showPassword,
    required this.prefixImage,
    required this.bgColor,
    required this.textInputType,
    required this.hintText,
    required this.textEditingController,
    this.style,
    this.hintStyle,
    this.textCapitalization,
  }) : super(key: key);

  @override
  State<CustomTextfield> createState() => _CustomTextfieldState();
}

class _CustomTextfieldState extends State<CustomTextfield> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.focusNode.requestFocus();
        setState(() {});
      },
      child: Container(
        height: 56.h,
        padding: EdgeInsets.symmetric(horizontal: 19.w),
        // padding: EdgeInsets.symmetric(vertical: 22.h, horizontal: 19.w),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.r),
          color: widget.bgColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            if (widget.prefixImage.isNotEmpty)
              Row(
                children: [
                  SvgPicture.asset(
                    widget.prefixImage,
                    color: widget.textEditingController.text.isEmpty
                        ? widget.focusNode.hasFocus
                            ? AppColors.darkOrange
                            : AppColors.darkTheme
                        : AppColors.darkOrange,
                  ),
                  SizedBox(
                    width: 16.w,
                  ),
                  Container(
                    // height: double.infinity,
                    width: 1.w,
                    color: AppColors.primaryBg,
                  ),
                  SizedBox(
                    width: 16.w,
                  ),
                ],
              ),
            Expanded(
              child: Focus(
                onFocusChange: (hasFocus) {
                  setState(() {
                    // (hasFocus)
                    //     ? suffixColor = Colors.red
                    //     : suffixColor = Colors.grey;
                  });
                },
                child: TextField(
                  style: widget.style ??
                      ManropeSemiBold.copyWith(
                        fontSize: 16.sp,
                        color: AppColors.darkOrange,
                      ),
                  controller: widget.textEditingController,
                  focusNode: widget.focusNode,
                  cursorColor: AppColors.darkTheme,
                  onTap: () {
                    widget.focusNode.requestFocus();
                    setState(() {});
                  },
                  obscureText: widget.showPassword,
                  keyboardType: widget.textInputType,
                  decoration: InputDecoration.collapsed(
                    hintText: widget.hintText,
                    hintStyle: widget.hintStyle ??
                        ManropeMedium.copyWith(
                          fontSize: 16.sp,
                          color: AppColors.darkTheme,
                        ),
                  ),
                  textInputAction: TextInputAction.next,
                  textCapitalization: widget.textCapitalization ?? TextCapitalization.none,
                ),
              ),
            ),
            if (widget.isPassword)
              InkWell(
                onTap: () {
                  widget.showPassword = !widget.showPassword;
                  setState(() {});
                },
                child: Container(
                  color: Colors.transparent,
                  child: Text(
                    "Show",
                    style: ManropeMedium.copyWith(
                      fontSize: 14.sp,
                      color: AppColors.darkTheme,
                      decoration: !widget.showPassword ? TextDecoration.lineThrough : TextDecoration.none,
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
