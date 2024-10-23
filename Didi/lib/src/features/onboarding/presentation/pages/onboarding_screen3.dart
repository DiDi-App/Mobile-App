import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../widgets/page_indicator.dart';
import '../../../../core/theme/theme_colors.dart';

class OnboardingScreen3 extends StatelessWidget {
  const OnboardingScreen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 90.h,
            child: Stack(
              children: [
                Positioned(
                  left: 13.w,
                  bottom: 23.h,
                  child: Image.asset(
                    "assets/images/delivery.png",
                    width: 85.w,
                  ),
                ),
                Positioned(
                  left: 15.w,
                  bottom: 25.h,
                  child: Container(
                    width: 70.w,
                    height: 30,
                    decoration: const BoxDecoration(
                      shape: BoxShape.rectangle,
                      boxShadow: [
                        BoxShadow(
                          color: AppThemeColors.kOnboardingShadowColor,
                          blurRadius: 70,
                          spreadRadius: 0,
                          offset: Offset(0, 0), // Positioning the shadow below
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 10.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                PageIndicator(
                  width: 5.w,
                  color: AppThemeColors.kPageIndicatorColor,
                ),
                SizedBox(width: 2.w),
                PageIndicator(
                  width: 5.w,
                  color: AppThemeColors.kPageIndicatorColor,
                ),
                SizedBox(width: 2.w),
                PageIndicator(
                  width: 13.w,
                  color: AppThemeColors.kPageIndicatorColor,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
