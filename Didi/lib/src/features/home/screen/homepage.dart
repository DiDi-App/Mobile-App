import 'package:didi/src/core/constants.dart';
import 'package:didi/src/core/theme/theme_colors.dart';
import 'package:didi/src/features/home/widgets/announcement_card.dart';
import 'package:didi/src/features/home/widgets/custom_chip.dart';
import 'package:didi/src/features/home/widgets/home_text_field.dart';
import 'package:didi/src/features/home/widgets/meal_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Homepage extends StatelessWidget {
  Homepage({super.key});

  final List<String> selectedCategories = [];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.location_on_outlined,
                  size: 1.5.h,
                ),
                SizedBox(width: 2.w),
                Text(
                  "University of Ghana",
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 13.5.sp,
                  ),
                )
              ],
            ),
            SizedBox(height: 1.7.h),
            Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: Constants.horizontalPadding),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                        text: TextSpan(
                          text: "Hi There ",
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w400,
                            fontSize: 15.sp,
                          ),
                          children: [
                            TextSpan(
                              text: "Christian!",
                              style: TextStyle(
                                fontFamily: "Poppins",
                                color: AppThemeColors.kWhiteColor,
                                fontWeight: FontWeight.w600,
                                fontSize: 15.5.sp,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text(
                        "How is your day going?",
                        style: TextStyle(
                          fontFamily: "Poppins",
                          fontSize: 12.sp,
                        ),
                      )
                    ],
                  ),
                  SvgPicture.asset(
                    "assets/svg/cart.svg",
                    height: 4.h,
                  ),
                ],
              ),
            ),
            SizedBox(height: 2.5.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.7.w),
              child: const HomeTextField(),
            ),
            SizedBox(height: 2.3.h),
            Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: Constants.horizontalPadding),
              child: const AnnouncementCard(),
            ),
            SizedBox(height: 2.3.h),
            SizedBox(
              height: 4.h,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: Constants.markets.length,
                itemBuilder: (context, index) {
                  final item = Constants.markets[index];
                  return Padding(
                    padding: const EdgeInsets.only(left: 13),
                    child: CustomChip(
                      label: item,
                      onTap: () {
                        if (selectedCategories.contains(item)) {
                          selectedCategories.remove(item);
                        } else {
                          selectedCategories.add(item);
                        }
                      },
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 2.5.h),
            Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: Constants.horizontalPadding),
              child: GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 18,
                  childAspectRatio: 60 / 51,
                  mainAxisSpacing: 2.h,
                ),
                itemCount: 5,
                itemBuilder: (context, index) {
                  return const MealItem();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
