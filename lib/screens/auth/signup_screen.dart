import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:habit_builder/values/app_colors.dart';
import 'package:habit_builder/values/text_styles.dart';
import 'package:habit_builder/widgets/custom_submitbutton.dart';
import 'package:habit_builder/widgets/custom_textfield.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  var nameFocusNode = FocusNode();
  var emailFocusNode = FocusNode();
  var passFocusNode = FocusNode();
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  bool isSignedIn = false;
  bool isMore = false;

  Color getColor(Set<MaterialState> states) {
    const Set<MaterialState> interactiveStates = <MaterialState>{
      MaterialState.pressed,
      MaterialState.hovered,
      MaterialState.focused,
    };
    if (states.any(interactiveStates.contains)) {
      return AppColors.darkTheme;
    }
    return AppColors.darkOrange;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryBg,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 48.h,
                  ),
                  Image.asset(
                    "assets/images/pic.png",
                    width: 188.w,
                    height: 200.h,
                  ),
                  SizedBox(
                    height: 21.h,
                  ),
                  Text(
                    "Create your account",
                    style: Klasik.copyWith(
                      fontSize: 24.sp,
                      color: AppColors.darkTheme,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 32.h,
                  ),
                  CustomTextfield(
                    focusNode: nameFocusNode,
                    isPassword: false,
                    prefixImage: "assets/images/user.svg",
                    bgColor: AppColors.white,
                    textInputType: TextInputType.text,
                    hintText: "Name",
                    textEditingController: nameController,
                    showPassword: false,
                    textCapitalization: TextCapitalization.words,
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  CustomTextfield(
                    focusNode: emailFocusNode,
                    isPassword: false,
                    prefixImage: "assets/images/mail.svg",
                    bgColor: AppColors.white,
                    textInputType: TextInputType.emailAddress,
                    hintText: 'Email',
                    textEditingController: emailController,
                    showPassword: false,
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  CustomTextfield(
                    focusNode: passFocusNode,
                    isPassword: true,
                    prefixImage: "assets/images/lock.svg",
                    bgColor: AppColors.white,
                    textInputType: TextInputType.visiblePassword,
                    hintText: 'Password',
                    textEditingController: passController,
                    showPassword: true,
                  ),
                  SizedBox(
                    height: 28.h,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        height: 40.w,
                        width: 40.w,
                        child: Checkbox(
                          checkColor: AppColors.darkTheme,
                          fillColor: MaterialStateProperty.resolveWith(getColor),
                          value: isSignedIn,
                          onChanged: (bool? value) {
                            setState(() {
                              isSignedIn = value!;
                            });
                          },
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6.r),
                          ),
                          splashRadius: 0.w,
                        ),
                      ),
                      Text(
                        "Keep me signed in",
                        style: ManropeMedium.copyWith(
                          fontSize: 16.sp,
                          color: AppColors.darkTheme,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        height: 40.w,
                        width: 40.w,
                        child: Checkbox(
                          checkColor: AppColors.darkTheme,
                          fillColor: MaterialStateProperty.resolveWith(getColor),
                          value: isMore,
                          onChanged: (bool? value) {
                            setState(() {
                              isMore = value!;
                            });
                          },
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6.r),
                          ),
                        ),
                      ),
                      Text(
                        "Email me about special pricing and more",
                        style: ManropeMedium.copyWith(
                          fontSize: 16.sp,
                          color: AppColors.darkTheme,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 18.h,
                  ),
                  const CustomSubmitButton(text: "Create Account"),
                  SizedBox(
                    height: 20.h,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Opacity(
                          opacity: 0.2,
                          child: Container(
                            height: 1.h,
                            width: double.infinity,
                            color: AppColors.darkTheme,
                          ),
                        ),
                      ),
                      Opacity(
                        opacity: 0.5,
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10.w),
                          child: Text(
                            "Or sign in with",
                            style: ManropeMedium.copyWith(
                              fontSize: 14.sp,
                              color: AppColors.darkTheme,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Opacity(
                          opacity: 0.2,
                          child: Container(
                            height: 1.h,
                            width: double.infinity,
                            color: AppColors.darkTheme,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          // padding: EdgeInsets.symmetric(vertical: 13.h, horizontal: 0.w),
                          height: 50.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12.r),
                            color: AppColors.white,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                "assets/images/google.svg",
                                width: 23.w,
                                height: 23.w,
                              ),
                              SizedBox(
                                width: 15.w,
                              ),
                              Text(
                                "Google",
                                style: ManropeSemiBold.copyWith(
                                  fontSize: 16.sp,
                                  color: AppColors.darkTheme,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 12.w,
                      ),
                      Expanded(
                        child: Container(
                          // padding: EdgeInsets.symmetric(vertical: 13.h, horizontal: 0.w),
                          height: 50.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12.r),
                            color: AppColors.white,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                "assets/images/fb.svg",
                                width: 23.w,
                                height: 23.w,
                              ),
                              SizedBox(
                                width: 15.w,
                              ),
                              Text(
                                "Facebook",
                                style: ManropeSemiBold.copyWith(
                                  fontSize: 16.sp,
                                  color: AppColors.darkTheme,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
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
                        text: 'Already have an account? ',
                        style: ManropeMedium.copyWith(
                          fontSize: 14.sp,
                          color: AppColors.darkTheme,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Sign In',
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
                    height: 35.h,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
