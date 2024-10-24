import 'package:didi/src/core/theme/theme_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class VendorInfoContainer extends StatelessWidget {
  const VendorInfoContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppThemeColors.kContainerColor,
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Sweet Sweet Lamin - Night Market",
              style: TextStyle(
                fontFamily: "Poppins",
                fontSize: 16.3.sp,
                fontWeight: FontWeight.w600,
                color: AppThemeColors.kWhiteColor,
              ),
            ),
            Row(
              children: [
                Row(
                  children: [
                    SvgPicture.asset(
                      "assets/svg/Vector.svg",
                      height: 1.5.h,
                    ),
                    Text(
                      "4.5",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 5.w),
                Row(
                  children: [
                    SvgPicture.asset(
                      "assets/svg/motorbike.svg",
                      height: 1.5.h,
                    ),
                    Text(
                      "Delivery",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Divider(
              height: 3.5.h,
              thickness: 1,
              color: AppThemeColors.kDividerColor,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SvgPicture.asset(
                      "assets/svg/moped.svg",
                      height: 3.h,
                    ),
                    const SizedBox(width: 5),
                    Column(
                      children: [
                        Text(
                          "GHC 7.00",
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 12.5.sp,
                            fontWeight: FontWeight.w600,
                            color: AppThemeColors.kPrimaryButtonColor,
                            height: 1.2,
                          ),
                        ),
                        Text(
                          "15 - 30 mins",
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 12.5.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const Icon(
                  Icons.arrow_forward_ios,
                  size: 17,
                  color: AppThemeColors.kDividerColor,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
