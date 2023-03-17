import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:habit_builder/screens/auth/login_screen.dart';
import 'package:habit_builder/values/app_colors.dart';
import 'package:habit_builder/values/text_styles.dart';
import 'package:habit_builder/widgets/custom_submitbutton.dart';
import 'package:habit_builder/widgets/custom_textfield.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  var emailFocusNode = FocusNode();
  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryBg,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 40.h,
                ),
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
                SizedBox(
                  height: 40.h,
                ),
                Text(
                  "Forgot your password?",
                  style: Klasik.copyWith(
                    fontSize: 24.sp,
                    color: AppColors.darkTheme,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 40.h,
                ),
                Image.asset(
                  "assets/images/bg1.png",
                  width: 270.w,
                  // height: 200.h,
                ),
                SizedBox(
                  height: 45.h,
                ),
                Container(
                  padding: EdgeInsets.all(20.w),
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                  child: Column(
                    children: [
                      Text(
                        "Enter your registered email below to receive password reset instruction",
                        style: ManropeMedium.copyWith(
                          fontSize: 14.sp,
                          color: AppColors.darkTheme,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                      CustomTextfield(
                        focusNode: emailFocusNode,
                        isPassword: false,
                        showPassword: false,
                        prefixImage: "",
                        bgColor: AppColors.orange,
                        textInputType: TextInputType.emailAddress,
                        hintText: "Email",
                        textEditingController: emailController,
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      const CustomSubmitButton(text: "Send Reset Link"),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30.h,
                ),
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: RichText(
                    text: TextSpan(
                      text: 'Remember password? ',
                      style: ManropeMedium.copyWith(
                        fontSize: 14.sp,
                        color: AppColors.darkTheme,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Login',
                          style: ManropeBold.copyWith(
                            fontSize: 14.sp,
                            color: AppColors.darkTheme,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 30.h,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
