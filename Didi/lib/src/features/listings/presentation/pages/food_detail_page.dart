import 'package:cached_network_image/cached_network_image.dart';
import 'package:didi/src/core/constants.dart';
import 'package:didi/src/core/theme/theme_colors.dart';
import 'package:didi/src/features/listings/presentation/widgets/custom_buttom_app_bar.dart';
import 'package:didi/src/features/listings/presentation/widgets/food_info_container.dart';
import 'package:didi/src/features/listings/presentation/widgets/rounded_buttons.dart';
import 'package:didi/src/features/listings/presentation/widgets/row_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:routemaster/routemaster.dart';

class FoodDetailPage extends StatelessWidget {
  const FoodDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 34.h,
            child: Stack(
              children: [
                CachedNetworkImage(
                  fit: BoxFit.cover,
                  height: 25.h,
                  width: double.infinity,
                  imageUrl:
                      "https://s3-alpha-sig.figma.com/img/09e0/0b8d/8839ae83655bea151d87fd6746130b0c?Expires=1734307200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=p0lT9NTzeGHGzCZg2sB4MhTU8HeC8lkOf53-6JHVJP21OKTdpdFlHMqrcDsUQzQyORQwzmG4WpFxbXnWRaLju2nx-2Is8PMVB4lR8rIJhVA8qiz-t11sNkNsNmPP1G7nTCpJQRf-9I~QVHOeZGIRcLBnJ0nJssoIadSx6yZ9Nws-02ZMArJ9trHdiZmEPFIa0EVOKuZkw2BPWbT4BxCjA3PtO7tb95CN6GU~rETMH75ZLp2-yIzSissHX2AQ8RNDPVVvTiJwcfTeUBDvw9tvXhsfh9lHdd9eI6k13YLU5IQt0aYivIZXbDW9eWhr94qNQqm0~QfdrOxBOCvHsoyPkA__",
                ),
                Positioned(
                  left: 7.w,
                  top: 5.h,
                  child: RoundedButtons(
                    child: SvgPicture.asset("assets/svg/arrow_left.svg"),
                    onTap: () => Routemaster.of(context).pop(),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  width: 100.w,
                  child: const FoodInfoContainer(),
                ),
              ],
            ),
          ),
          SizedBox(height: 1.2.h),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: AppThemeColors.kContainerColor,
              ),
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: Constants.horizontalPadding,
                ),
                child: Expanded(
                  child: ListView(
                    padding: EdgeInsets.zero,
                    children: [
                      SizedBox(height: 2.5.h),
                      Row(
                        children: [
                          Text(
                            "Preferred choice",
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 16.5.sp,
                              fontWeight: FontWeight.w600,
                              color: AppThemeColors.kWhiteColor,
                              height: 1.2,
                            ),
                          ),
                          const SizedBox(width: 10),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: AppThemeColors.kPrimaryButtonColor,
                            ),
                            padding: const EdgeInsets.all(3),
                            child: Text(
                              "Required",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 13.sp,
                                color: AppThemeColors.kWhiteColor,
                              ),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 3),
                      const Column(
                        children: [
                          RowTile(
                            title: "Banku Only",
                            value: "Banku Only",
                            groupValue: "Banku Only",
                          ),
                          RowTile(
                            title: "Kokonte Only",
                            value: "Kokonte Only",
                            groupValue: "Banku Only",
                          ),
                        ],
                      ),
                      SizedBox(height: 2.h),
                      Text(
                        "Soup",
                        style: TextStyle(
                          color: AppThemeColors.kPrimaryButtonColor,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w600,
                          fontSize: 16.sp,
                        ),
                      ),
                      const Text(
                        "Select from one of these options",
                        style: TextStyle(
                          fontFamily: "Poppins",
                          color: AppThemeColors.kDividerColor,
                        ),
                      ),
                      const Column(
                        children: [
                          RowTile(
                            title: "Groundnut Soup",
                            value: "Groundnut Soup",
                            groupValue: "Groundnut Soup",
                          ),
                          RowTile(
                            title: "Palm nut Soup",
                            value: "Palm nut Soup",
                            groupValue: "Banku Only",
                          ),
                          RowTile(
                            title: "Kontomire",
                            value: "Kontomire",
                            groupValue: "Banku Only",
                          ),
                        ],
                      ),
                      SizedBox(height: 2.h),
                      Text(
                        "Packaging",
                        style: TextStyle(
                          color: AppThemeColors.kPrimaryButtonColor,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w600,
                          fontSize: 16.sp,
                        ),
                      ),
                      const Text(
                        "Select from one of these options",
                        style: TextStyle(
                          fontFamily: "Poppins",
                          color: AppThemeColors.kDividerColor,
                        ),
                      ),
                      const Column(
                        children: [
                          RowTile(
                            title: "Default",
                            value: "Default",
                            groupValue: "Default",
                          ),
                          RowTile(
                            title: "Disposable Containers",
                            value: "Disposable Containers",
                            groupValue: "Default",
                          ),
                        ],
                      ),
                      SizedBox(height: 2.h),
                      Text(
                        "Add Ons",
                        style: TextStyle(
                          color: AppThemeColors.kPrimaryButtonColor,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w600,
                          fontSize: 16.sp,
                        ),
                      ),
                      const Text(
                        "Select from one of these options",
                        style: TextStyle(
                          fontFamily: "Poppins",
                          color: AppThemeColors.kDividerColor,
                        ),
                      ),
                      const Column(
                        children: [
                          RowTile(
                            title: "Default",
                            value: "Default",
                            groupValue: "Default",
                          ),
                          RowTile(
                            title: "Disposable Containers",
                            value: "Disposable Containers",
                            groupValue: "Default",
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: const CustomButtomAppBar(),
    );
  }
}
