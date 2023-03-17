import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:habit_builder/screens/add_reminder_dialog.dart';
import 'package:habit_builder/values/app_colors.dart';
import 'package:habit_builder/values/text_styles.dart';
import 'package:habit_builder/widgets/custom_submitbutton.dart';

class ReminderScreen extends StatefulWidget {
  ReminderScreen({Key? key}) : super(key: key);

  @override
  State<ReminderScreen> createState() => _ReminderScreenState();
}

class _ReminderScreenState extends State<ReminderScreen> {
  List<bool>? status;

  @override
  void initState() {
    super.initState();
    status = List.filled(12, false);
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      alignment: Alignment.bottomCenter,
      backgroundColor: AppColors.white,
      titlePadding: EdgeInsets.zero,
      actionsPadding: EdgeInsets.zero,
      buttonPadding: EdgeInsets.zero,
      insetPadding: EdgeInsets.zero,
      contentPadding: EdgeInsets.zero,
      iconPadding: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20.r)),
      ),
      content: SizedBox(
        height: MediaQuery.of(context).size.height * 0.7,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.7,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 20.w),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    GridView.builder(
                      itemCount: 12,
                      padding: EdgeInsets.zero,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        crossAxisSpacing: 8.w,
                        mainAxisSpacing: 8.w,
                      ),
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return Container(
                          padding: EdgeInsets.all(5.h),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12.r),
                            color: status![index] ? AppColors.primaryBg : AppColors.inactive,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                '06:00 AM',
                                style: ManropeBold.copyWith(
                                  fontSize: 20.sp,
                                  color: status![index] ? AppColors.darkOrange : AppColors.darkTheme,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              FlutterSwitch(
                                width: 54.w,
                                height: 30.h,
                                valueFontSize: 10.sp,
                                toggleSize: 20.w,
                                value: status![index],
                                borderRadius: 15.r,
                                padding: 4.h,
                                showOnOff: true,
                                onToggle: (val) {
                                  setState(() {
                                    status![index] = val;
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
                        );
                      },
                    ),
                    SizedBox(
                      height: 110.h,
                    )
                  ],
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 25.h),
              color: AppColors.white,
              child: Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        Navigator.pop(context);
                        showAddReminderDialog(context);
                      },
                      child: const CustomSubmitButton(
                        text: "Add Reminder",
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 12.w,
                  ),
                  SvgPicture.asset(
                    "assets/images/mute.svg",
                    height: 60.h,
                    width: 60.h,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  showAddReminderDialog(BuildContext context) {
    // show the dialog
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return const AddReminderDialog();
      },
    );
  }
}
