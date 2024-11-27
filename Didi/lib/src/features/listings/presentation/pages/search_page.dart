import 'package:didi/src/core/constants.dart';
import 'package:didi/src/core/theme/theme_colors.dart';
import 'package:didi/src/features/listings/presentation/widgets/custom_search_app_bar.dart';
import 'package:didi/src/features/listings/presentation/widgets/recent_searches.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomSearchAppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: Constants.horizontalPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 2.h),
            const Column(
              children: [
                RecentSearch(),
                RecentSearch(),
                RecentSearch(),
              ],
            ),
            SizedBox(height: 2.h),
            Text(
              "Popular Categories",
              style: TextStyle(
                fontFamily: "Poppins",
                color: AppThemeColors.kWhiteColor,
                fontSize: 15.7.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 2.h),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "🏃 Lunch",
                  style: TextStyle(
                    fontFamily: "Poppins",
                    color: AppThemeColors.kWhiteColor,
                    fontSize: 14.8.sp,
                  ),
                ),
                SizedBox(height: 1.h),
                Text(
                  "🇬🇭 Ghanaian",
                  style: TextStyle(
                    fontFamily: "Poppins",
                    color: AppThemeColors.kWhiteColor,
                    fontSize: 14.8.sp,
                  ),
                ),
                SizedBox(height: 1.h),
                Text(
                  "🍖 Meat",
                  style: TextStyle(
                    fontFamily: "Poppins",
                    color: AppThemeColors.kWhiteColor,
                    fontSize: 14.8.sp,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
