import 'package:flutter/material.dart';

import '../../../utils/app/app_colors.dart';
import '../../../utils/app/app_constant.dart';
import 'package:sizer/sizer.dart';

import '../CustomButton/custom_button.dart';

class CustomListItem extends StatelessWidget {
  final List<int> items;
  final Function dismissHandler;

  CustomListItem({required this.items, required this.dismissHandler});

  get index => null;

  @override
  Widget build(BuildContext context) {
    return Dismissible(
        direction: DismissDirection.startToEnd,
        background: Padding(
          padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
          child: Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                Icon(
                  Icons.delete,
                  color: AppColors.backgroundColor,
                ),
                Text("Swipe Left to Delete")
              ],
            ),
          ),
        ),
        key: ValueKey<int>(items[index]),
        onDismissed: (index) => dismissHandler(index),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
          child: Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  const BoxShadow(
                      color: Color(0xffBECDE2),
                      offset: Offset(6, 6),
                      blurRadius: 10),
                  BoxShadow(
                      color: const Color(0xffF4F4F4).withOpacity(.2),
                      offset: const Offset(-6, -6),
                      blurRadius: 10),
                ]),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Fixing Unlocking for Mercedez",
                  style: TextStyle(
                      color: AppColors.fontDarkColor,
                      fontFamily: AppConstants.textFont,
                      fontWeight: FontWeight.bold,
                      fontSize: 12.sp),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Text(
                  "Cost: \$100. Posted 15 mins ago",
                  style: TextStyle(
                      color: AppColors.fontDarkColor,
                      fontFamily: AppConstants.textFont,
                      fontWeight: FontWeight.bold,
                      fontSize: 10.sp),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Text(
                  "Description about the job. Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College",
                  style: TextStyle(
                      color: AppColors.fontDarkColor,
                      fontFamily: AppConstants.textFont,
                      fontSize: 8.sp),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Car Model:",
                      style: TextStyle(
                          color: AppColors.fontDarkColor,
                          fontFamily: AppConstants.textFont,
                          fontWeight: FontWeight.bold,
                          fontSize: 10.sp),
                    ),
                    SizedBox(width: 1.w),
                    Text(
                      "Make",
                      style: TextStyle(
                          color: AppColors.fontDarkColor,
                          fontFamily: AppConstants.textFont,
                          fontSize: 10.sp),
                    ),
                    SizedBox(width: 1.w),
                    Text(
                      "Model",
                      style: TextStyle(
                          color: AppColors.fontDarkColor,
                          fontFamily: AppConstants.textFont,
                          fontSize: 10.sp),
                    ),
                    SizedBox(width: 1.w),
                    Text(
                      "Year",
                      style: TextStyle(
                          color: AppColors.fontDarkColor,
                          fontFamily: AppConstants.textFont,
                          fontSize: 10.sp),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Vehicle Control Module",
                      style: TextStyle(
                          color: AppColors.fontDarkColor,
                          fontFamily: AppConstants.textFont,
                          fontWeight: FontWeight.bold,
                          fontSize: 10.sp),
                    ),
                    SizedBox(width: 1.w),
                    Text(
                      "Smart Key Module",
                      style: TextStyle(
                          color: AppColors.fontDarkColor,
                          fontFamily: AppConstants.textFont,
                          fontSize: 10.sp),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    CustomButton(
                        color: AppColors.fontDarkColor,
                        fontColor: AppColors.whiteColor,
                        fontSize: 8.sp,
                        fontWeight: FontWeight.w600,
                        minSize: const Size(50, 35),
                        title: "Edit",
                        onPressed: () {}
                        //  () => value.registerAPI(),
                        ),
                    SizedBox(
                      width: 1.h,
                    ),
                    CustomButton(
                        color: AppColors.fontDarkColor,
                        fontColor: AppColors.whiteColor,
                        fontSize: 8.sp,
                        fontWeight: FontWeight.w600,
                        minSize: const Size(50, 35),
                        title: "View Details",
                        onPressed: () {}
                        //  () => value.registerAPI(),
                        ),
                    SizedBox(
                      width: 1.h,
                    ),
                    CustomButton(
                        color: AppColors.fontDarkColor,
                        fontColor: AppColors.whiteColor,
                        fontSize: 8.sp,
                        fontWeight: FontWeight.w600,
                        minSize: const Size(50, 35),
                        title: "View Offers",
                        onPressed: () {}
                        //  () => value.registerAPI(),
                        )
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
