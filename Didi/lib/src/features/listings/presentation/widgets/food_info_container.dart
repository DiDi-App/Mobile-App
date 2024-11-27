import 'package:didi/src/core/theme/theme_colors.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class FoodInfoContainer extends StatelessWidget {
  const FoodInfoContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppThemeColors.kContainerColor,
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 3.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Special Fufu with Sweet Lamin",
              style: TextStyle(
                fontFamily: "Poppins",
                fontSize: 16.5.sp,
                height: 1.2,
                fontWeight: FontWeight.w600,
                color: AppThemeColors.kWhiteColor,
              ),
            ),
            SizedBox(
              height: 1.h,
            ),
            RichText(
              text: TextSpan(
                text: "Staring price is ",
                style: TextStyle(
                  color: AppThemeColors.kStartingPriceColor,
                  fontWeight: FontWeight.w500,
                  fontSize: 15.sp,
                  fontFamily: "Poppins",
                ),
                children: [
                  TextSpan(
                    text: "GHC 15",
                    style: TextStyle(
                      color: AppThemeColors.kWhiteColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 15.5.sp,
                      fontFamily: "Poppins",
                    ),
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
