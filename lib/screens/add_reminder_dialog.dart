import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:habit_builder/values/app_colors.dart';
import 'package:habit_builder/values/text_styles.dart';

class AddReminderDialog extends StatefulWidget {
  const AddReminderDialog({Key? key}) : super(key: key);

  @override
  State<AddReminderDialog> createState() => _AddReminderDialogState();
}

class _AddReminderDialogState extends State<AddReminderDialog> {
  var currentTime = DateTime.now();

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
        height: MediaQuery.of(context).size.height * 0.5,
        child: Stack(
          // alignment: Alignment.topCenter,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.5,
              width: MediaQuery.of(context).size.width,
              child: CupertinoTimerPicker(
                onTimerDurationChanged: (value) {},
                mode: CupertinoTimerPickerMode.hm,
                initialTimerDuration: Duration(hours: currentTime.hour, minutes: currentTime.minute),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 64.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(top: Radius.circular(20.r)),
                color: AppColors.white,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 22.w, right: 22.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Text(
                            "Cancel",
                            style: ManropeBold.copyWith(
                              fontSize: 17.sp,
                              color: AppColors.darkOrange2,
                            ),
                          ),
                        ),
                        Text(
                          "Add Reminders",
                          style: ManropeBold.copyWith(
                            fontSize: 18.sp,
                            color: AppColors.darkTheme,
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Text(
                            "Save",
                            style: ManropeBold.copyWith(
                              fontSize: 17.sp,
                              color: AppColors.darkOrange2,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 2.w,
                    color: AppColors.primaryBg,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
