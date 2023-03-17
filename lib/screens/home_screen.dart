import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:habit_builder/screens/habit_detail_screen.dart';
import 'package:habit_builder/screens/profile_screen.dart';
import 'package:habit_builder/values/app_colors.dart';
import 'package:habit_builder/values/text_styles.dart';
import 'package:intl/intl.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var now = DateTime.now();
  List remainingDays = [];

  final ItemScrollController itemScrollController = ItemScrollController();
  final ItemPositionsListener itemPositionsListener = ItemPositionsListener.create();
  Map monthNames = {"1": "JAN", "2": "FEB", "3": "MAR", "4": "APR", "5": "MAY", "6": "JUN", "7": "JUL", "8": "AUG", "9": "SEP", "10": "OCT", "11": "NOV", "12": "DEC"};

  void getDays() {
    remainingDays = [];
    var totalDays = daysInMonth(now);

    remainingDays = List<int>.generate(totalDays, (i) => i + 1);
    // remainingDays.removeRange(0, now.day - 1);
    print(remainingDays.length);

    print(DateFormat('EEEE').format(DateTime.now()));
    setState(() {});
  }

  getMonth(String monthVal) {
    return monthNames[monthVal];
  }

  int daysInMonth(DateTime date) {
    var firstDayThisMonth = new DateTime(date.year, date.month, date.day);
    var firstDayNextMonth = new DateTime(firstDayThisMonth.year, firstDayThisMonth.month + 1, firstDayThisMonth.day);
    return firstDayNextMonth.difference(firstDayThisMonth).inDays;
  }

  @override
  void initState() {
    super.initState();
    getDays();
  }

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
            Column(
              children: [
                SizedBox(
                  height: 40.h,
                ),
                Padding(
                  padding: EdgeInsets.only(right: 20.w, left: 20.w),
                  child: Row(
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
                        "Homepage",
                        style: ManropeBold.copyWith(
                          fontSize: 18.sp,
                          color: AppColors.darkTheme,
                        ),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(100.r),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (_) => const ProfileScreen()));
                          },
                          child: Image.network(
                            "https://www.opticalexpress.co.uk/media/1064/man-with-glasses-smiling-looking-into-distance.jpg",
                            height: 44.w,
                            width: 44.w,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 24.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Container(
                    decoration: BoxDecoration(color: AppColors.white, borderRadius: BorderRadius.circular(12.r)),
                    child: Stack(
                      alignment: Alignment.centerLeft,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const SizedBox.shrink(),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(12.r),
                              child: Image.asset(
                                "assets/images/bg6.png",
                                height: 146.w,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.55,
                          child: Padding(
                            padding: EdgeInsets.only(left: 15.w),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "WE FIRST MAKE OUR HABITS, AND THEN OUR HABITS MAKES US.",
                                  style: Klasik.copyWith(
                                    fontSize: 18.sp,
                                    color: AppColors.darkTheme,
                                  ),
                                ),
                                SizedBox(
                                  height: 5.h,
                                ),
                                Text(
                                  "- ANONYMOUS",
                                  style: ManropeBold.copyWith(
                                    fontSize: 12.sp,
                                    color: AppColors.darkTheme.withOpacity(0.5),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.3,
                      // width: 120.w,
                      margin: EdgeInsets.only(left: 20.w),
                      padding: EdgeInsets.only(left: 18.w),
                      child: Text(
                        "HABITS",
                        style: ManropeBold.copyWith(
                          fontSize: 14.sp,
                          color: AppColors.darkTheme,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 18.h,
                    ),
                    Expanded(
                      child: SizedBox(
                        height: 50.w,
                        child: ScrollablePositionedList.builder(
                          initialScrollIndex: DateTime.now().day - 1,
                          itemCount: remainingDays.length,
                          scrollDirection: Axis.horizontal,
                          padding: EdgeInsets.only(left: 18.h, right: 18.h),
                          physics: const AlwaysScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return Row(
                              children: [
                                Container(
                                  height: 50.w,
                                  width: 50.w,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12.r),
                                    color: AppColors.white,
                                  ),
                                  child: Stack(
                                    alignment: Alignment.topCenter,
                                    children: [
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            getMonth(now.month.toString()),
                                            style: ManropeBold.copyWith(
                                              fontSize: 10.sp,
                                              color: AppColors.darkTheme.withOpacity(0.5),
                                            ),
                                          ),
                                          Text(
                                            remainingDays[index].toString(),
                                            style: ManropeBold.copyWith(
                                              fontSize: 16.sp,
                                              color: AppColors.darkTheme,
                                            ),
                                          ),
                                        ],
                                      ),
                                      if (now.day.toString() == remainingDays[index].toString())
                                        Container(
                                          width: 16.w,
                                          height: 4.w,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(12.r),
                                            color: AppColors.darkTheme,
                                          ),
                                        ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 6.w,
                                ),
                              ],
                            );
                          },
                          itemScrollController: itemScrollController,
                          itemPositionsListener: itemPositionsListener,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 11.h,
                ),
                ListView.builder(
                  itemCount: 2,
                  shrinkWrap: true,
                  itemBuilder: (context, habitIndex) {
                    return Column(
                      children: [
                        SingleChildScrollView(
                          // scrollDirection: Axis.horizontal,
                          physics: const NeverScrollableScrollPhysics(),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (_) => const HabitDetailScreen()));
                            },
                            child: Container(
                              height: 70.w,
                              decoration: BoxDecoration(
                                color: AppColors.white,
                                borderRadius: BorderRadius.circular(12.r),
                              ),
                              margin: EdgeInsets.only(left: 20.w),
                              child: Row(
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(5.w),
                                    width: MediaQuery.of(context).size.width * 0.3,
                                    // width: 120.w,
                                    alignment: Alignment.center,
                                    child: Text(
                                      habitIndex == 0 ? "Read A Book" : "Wake Up Early",
                                      style: ManropeBold.copyWith(
                                        fontSize: 14.sp,
                                        color: AppColors.darkTheme,
                                      ),
                                      textAlign: TextAlign.center,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  Container(
                                    width: 2.w,
                                    color: AppColors.primaryBg,
                                  ),
                                  Expanded(
                                    child: ListView.builder(
                                      itemCount: 10,
                                      scrollDirection: Axis.horizontal,
                                      padding: EdgeInsets.only(left: 18.h, right: 18.h),
                                      physics: const AlwaysScrollableScrollPhysics(),
                                      shrinkWrap: true,
                                      itemBuilder: (context, boxIndex) {
                                        return Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            SvgPicture.asset(
                                              habitIndex == 0
                                                  ? boxIndex % 2 == 0
                                                      ? "assets/images/full.svg"
                                                      : "assets/images/half.svg"
                                                  : boxIndex % 2 == 0
                                                      ? "assets/images/red_half.svg"
                                                      : "assets/images/red_full.svg",
                                              height: 50.w,
                                              width: 50.w,
                                            ),
                                            SizedBox(
                                              width: 5.h,
                                            ),
                                          ],
                                        );
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
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
          ],
        ),
      ),
    );
  }
}
