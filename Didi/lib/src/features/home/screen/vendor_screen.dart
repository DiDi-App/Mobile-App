import 'package:didi/src/core/constants.dart';
import 'package:didi/src/core/theme/theme_colors.dart';
import 'package:didi/src/features/home/widgets/menu_item.dart';
import 'package:didi/src/features/home/widgets/rounded_buttons.dart';
import 'package:didi/src/features/home/widgets/vendor_info_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:routemaster/routemaster.dart';
import 'package:transparent_image/transparent_image.dart';

class VendorScreen extends StatelessWidget {
  const VendorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 38.h,
            child: Stack(
              children: [
                FadeInImage(
                  placeholder: MemoryImage(kTransparentImage),
                  image: const NetworkImage(
                    "https://s3-alpha-sig.figma.com/img/09e0/0b8d/8839ae83655bea151d87fd6746130b0c?Expires=1732492800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=fxWoEfnpGLZl4A~m6Q7G0B4712dF3fi8DwJtBPuwNL1aDYEijAn1zVKMr3DK6TMkR~ZI9JP02zw9Xx5iTcQtDB1x87~D3hqPIVg27d9QmBrugdHA5QmOH6uc6N0hZwmWqnwgsDHryf1dL4Ht4x61c5r7RYGH7rEOoYHYYtuyVKAT~kW5HL3LrGi95JgUXpGkSPD6WuCSUwsScU0ZOC43Ob~ivZsyxnhey17~iBEWduRl1SjdL3iWhtKl6BkYfg2O6u7EDU2zYg39pankH4jUnPpLGgwV8GRBc6XkoKKAEtA0~3w5g4reWlfjeu27Yznyhz3MtjHK2GQjBkIKbde9zw__",
                  ),
                  height: 25.h,
                  width: double.infinity,
                  fit: BoxFit.cover,
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
                  right: 7.w,
                  top: 5.h,
                  child: RoundedButtons(
                    child: SvgPicture.asset("assets/svg/search.svg"),
                    onTap: () {},
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  width: 100.w,
                  child: const VendorInfoContainer(),
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 3.2.h),
                    Text(
                      "Main Dishes",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 16.5.sp,
                        fontWeight: FontWeight.w600,
                        color: AppThemeColors.kWhiteColor,
                        height: 1.2,
                      ),
                    ),
                    SizedBox(height: 3.h),
                    Expanded(
                      child: ListView.builder(
                        shrinkWrap: true,
                        padding: EdgeInsets.zero,
                        itemCount: 6,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              const MenuItem(),
                              Divider(
                                height: 5.h,
                                thickness: 1,
                                color: AppThemeColors.kDividerColor,
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
        ],
      ),
    );
  }
}
