import 'package:flutter/material.dart';
import 'package:habit_builder/screens/course_detail_screen.dart';
import 'package:habit_builder/values/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:habit_builder/values/text_styles.dart';

class CoursesScreen extends StatefulWidget {
  const CoursesScreen({Key? key}) : super(key: key);

  @override
  State<CoursesScreen> createState() => _CoursesScreenState();
}

class _CoursesScreenState extends State<CoursesScreen> {
  final items = ['Productivity', 'Relationship', 'Creativity', 'Health'];
  final items2 = ['Low', 'Medium', 'High'];
  String? selectedValue;
  String? selectedValue2;

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
              padding: EdgeInsets.only(right: 20.w, left: 20.w),
              child: SingleChildScrollView(
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
                          "Courses",
                          style: ManropeBold.copyWith(
                            fontSize: 18.sp,
                            color: AppColors.darkTheme,
                          ),
                        ),
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
                              padding: EdgeInsets.all(11.w),
                              child: SvgPicture.asset(
                                "assets/images/search.svg",
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 42.h,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20.r),
                      child: Image.asset(
                        "assets/images/bg10.png",
                        height: 146.w,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(
                      height: 24.h,
                    ),
                    Row(
                      children: [
                        Text(
                          "Sort By:",
                          style: ManropeSemiBold.copyWith(
                            fontSize: 16.sp,
                            color: AppColors.darkTheme,
                          ),
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        Expanded(
                          flex: 3,
                          child: Container(
                            height: 33.w,
                            padding: EdgeInsets.symmetric(horizontal: 19.w),
                            decoration: BoxDecoration(
                              color: AppColors.white,
                              borderRadius: BorderRadius.circular(20.r),
                            ),
                            alignment: Alignment.center,
                            child: DropdownButton<String>(
                              value: selectedValue,
                              onChanged: (String? newValue) {
                                setState(() {
                                  selectedValue = newValue!;
                                });
                              },
                              items: items
                                  .map<DropdownMenuItem<String>>((String value) => DropdownMenuItem<String>(
                                        value: value,
                                        child: Text(
                                          value,
                                          style: ManropeSemiBold.copyWith(
                                            fontSize: 14.sp,
                                            color: AppColors.darkTheme,
                                          ),
                                        ),
                                      ))
                                  .toList(),
                              icon: Padding(
                                padding: EdgeInsets.only(top: 5.h),
                                child: RotatedBox(
                                  quarterTurns: 1,
                                  child: SvgPicture.asset(
                                    "assets/images/arrow.svg",
                                    color: AppColors.darkTheme,
                                  ),
                                ),
                              ),
                              hint: Text(
                                "Popular",
                                style: ManropeSemiBold.copyWith(
                                  fontSize: 14.sp,
                                  color: AppColors.darkTheme,
                                ),
                              ),
                              alignment: Alignment.centerLeft,
                              isExpanded: true,
                              underline: SizedBox.shrink(),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 22.w,
                        ),
                        Expanded(
                          flex: 2,
                          child: Container(
                            height: 33.w,
                            padding: EdgeInsets.symmetric(horizontal: 19.w),
                            decoration: BoxDecoration(
                              color: AppColors.white,
                              borderRadius: BorderRadius.circular(20.r),
                            ),
                            alignment: Alignment.center,
                            child: DropdownButton<String>(
                              value: selectedValue2,
                              onChanged: (String? newValue) {
                                setState(() {
                                  selectedValue2 = newValue!;
                                });
                              },
                              items: items2
                                  .map<DropdownMenuItem<String>>((String value) => DropdownMenuItem<String>(
                                        value: value,
                                        child: Text(
                                          value,
                                          style: ManropeSemiBold.copyWith(
                                            fontSize: 14.sp,
                                            color: AppColors.darkOrange2,
                                          ),
                                        ),
                                      ))
                                  .toList(),
                              icon: Padding(
                                padding: EdgeInsets.only(top: 5.h),
                                child: RotatedBox(
                                  quarterTurns: 1,
                                  child: SvgPicture.asset(
                                    "assets/images/arrow.svg",
                                    color: AppColors.darkOrange2,
                                  ),
                                ),
                              ),
                              hint: Text(
                                "Filters",
                                style: ManropeSemiBold.copyWith(
                                  fontSize: 14.sp,
                                  color: AppColors.darkOrange2,
                                ),
                              ),
                              style: ManropeSemiBold.copyWith(
                                fontSize: 14.sp,
                                color: AppColors.darkOrange2,
                              ),
                              alignment: Alignment.centerLeft,
                              isExpanded: true,
                              underline: SizedBox.shrink(),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    ListView.builder(
                      itemCount: 3,
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(12.r),
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (_) => const CourseDetailScreen()));
                                },
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.network(
                                      "https://images.pexels.com/photos/1031588/pexels-photo-1031588.jpeg?cs=srgb&dl=pexels-rahul-shah-1031588.jpg&fm=jpg",
                                      height: 166.w,
                                      width: double.infinity,
                                      fit: BoxFit.cover,
                                    ),
                                    Container(
                                      color: AppColors.white,
                                      padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 12.w),
                                      child: Column(
                                        children: [
                                          Text(
                                            "30 Day Journal Challenge - Establish a Habit of Daily Journaling",
                                            style: ManropeBold.copyWith(
                                              fontSize: 18.sp,
                                              color: AppColors.darkTheme,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 8.h,
                                          ),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "2h 41m",
                                                    style: ManropeMedium.copyWith(
                                                      fontSize: 12.sp,
                                                      color: AppColors.darkTheme,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 5.h,
                                                  ),
                                                  Text(
                                                    "37 Lessons ",
                                                    style: ManropeMedium.copyWith(
                                                      fontSize: 12.sp,
                                                      color: AppColors.darkTheme.withOpacity(0.5),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Container(
                                                height: 32.w,
                                                width: 32.w,
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(100.r),
                                                  color: AppColors.darkTheme.withOpacity(0.1),
                                                ),
                                                padding: EdgeInsets.symmetric(vertical: 9.h, horizontal: 11.w),
                                                child: SvgPicture.asset(
                                                  "assets/images/bookmark.svg",
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
                            ),
                            SizedBox(
                              height: 12.h,
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
          ],
        ),
      ),
    );
  }
}
