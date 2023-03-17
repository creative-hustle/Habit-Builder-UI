import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:habit_builder/values/app_colors.dart';
import 'package:habit_builder/values/text_styles.dart';

class CommunityScreen extends StatelessWidget {
  const CommunityScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryBg,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(right: 20.w, left: 20.w),
            child: Column(
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
                        onTap: () {},
                        child: Container(
                          height: 44.w,
                          width: 44.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100.r),
                            color: AppColors.darkTheme.withOpacity(0.1),
                          ),
                          child: SvgPicture.asset(
                            "assets/images/menu.svg",
                          ),
                          // padding: EdgeInsets.symmetric(vertical: 18.h, horizontal: 13.w),
                        ),
                      ),
                    ),
                    Text(
                      "Community",
                      style: ManropeBold.copyWith(
                        fontSize: 18.sp,
                        color: AppColors.darkTheme,
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(100.r),
                      child: Image.asset(
                        "assets/images/bg8.png",
                        height: 44.w,
                        width: 44.w,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 24.h,
                ),
                ListView.builder(
                  itemCount: 5,
                  shrinkWrap: true,
                  padding: EdgeInsets.zero,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: AppColors.white,
                            borderRadius: BorderRadius.circular(12.r),
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 10.h),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        ClipRRect(
                                          borderRadius: BorderRadius.circular(100.r),
                                          child: Image.network(
                                            "https://images.pexels.com/photos/6344098/pexels-photo-6344098.jpeg?cs=srgb&dl=pexels-cottonbro-studio-6344098.jpg&fm=jpg",
                                            height: 28.w,
                                            width: 28.w,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 10.w,
                                        ),
                                        Column(
                                          children: [
                                            Text(
                                              "Jerome",
                                              style: ManropeBold.copyWith(
                                                fontSize: 14.sp,
                                                color: AppColors.darkTheme,
                                              ),
                                            ),
                                            Text(
                                              "41m ago",
                                              style: ManropeSemiBold.copyWith(
                                                fontSize: 12.sp,
                                                color: AppColors.darkTheme.withOpacity(0.5),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    SvgPicture.asset(
                                      "assets/images/share.svg",
                                      height: 32.w,
                                      width: 32.w,
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                height: 2.w,
                                color: AppColors.primaryBg,
                              ),
                              Padding(
                                padding: EdgeInsets.all(16.w),
                                child: Column(
                                  children: [
                                    Text(
                                      "Man, you're my new guru! Viewing the lessons for a second time. Thoroughly pleased. And impressed that you draw from scientific literature in telling memorable",
                                      style: ManropeSemiBold.copyWith(
                                        fontSize: 14.sp,
                                        color: AppColors.darkTheme,
                                      ),
                                      maxLines: 3,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    SizedBox(
                                      height: 15.h,
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        const SizedBox.shrink(),
                                        Row(
                                          children: [
                                            SvgPicture.asset(
                                              "assets/images/like.svg",
                                              height: 10.w,
                                              width: 12.w,
                                            ),
                                            SizedBox(
                                              width: 3.w,
                                            ),
                                            Text(
                                              "3.1k",
                                              style: ManropeSemiBold.copyWith(
                                                fontSize: 10.sp,
                                                color: AppColors.darkTheme,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 16.w,
                                            ),
                                            SvgPicture.asset(
                                              "assets/images/comment.svg",
                                              height: 10.w,
                                              width: 10.w,
                                            ),
                                            SizedBox(
                                              width: 3.w,
                                            ),
                                            Text(
                                              "22",
                                              style: ManropeSemiBold.copyWith(
                                                fontSize: 10.sp,
                                                color: AppColors.darkTheme.withOpacity(0.5),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                      ],
                    );
                  },
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
