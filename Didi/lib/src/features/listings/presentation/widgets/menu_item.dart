import 'package:cached_network_image/cached_network_image.dart';
import 'package:didi/src/core/theme/theme_colors.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:routemaster/routemaster.dart';

class MenuItem extends StatelessWidget {
  const MenuItem({super.key});

  @override
  Widget build(BuildContext context) {
    final isTablet = Device.screenType == ScreenType.tablet;
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () => Routemaster.of(context).push("/foodList/foodDetail"),
        child: Container(
          margin: EdgeInsets.only(top: 2.h),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 40.w,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Fried Rice and Chicken",
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w600,
                            color: AppThemeColors.kWhiteColor,
                            height: 1.2,
                          ),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          "Served with plantain, salad, egg and chicken",
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 12.5.sp,
                            fontWeight: FontWeight.w400,
                            color: AppThemeColors.kLightTextColor,
                            height: 1.2,
                          ),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          "From GHC 6.0",
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            color: AppThemeColors.kPrimaryButtonColor,
                            height: 1.2,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: AppThemeColors.kPrimaryBackgroundColor,
                    ),
                    clipBehavior: Clip.hardEdge,
                    height: isTablet ? 9.h : 7.5.h,
                    width: isTablet ? 27.w : 29.w,
                    child: CachedNetworkImage(
                      fit: BoxFit.cover,
                      imageUrl:
                          "https://s3-alpha-sig.figma.com/img/17d4/b3b5/d9397a48cb11a15f9117c2a0975f9e69?Expires=1734307200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=eTHmDvGnG9lacXnUiVsrAOU7jdWX8bXBYEtyN2zKSHOPg1xcCjR1JOMiDIyMChRPhpfYF-kZKD7ZFNAttVsDKnaA6Cc0YN1SmH7fJydelVqzX5Ny5OPhj5yre6fv2MukKRHFpwZEc1KBY40-U9DZeTAOShowsH1F2GBVzf6d~S0-eHsex3XMbhVGeK3SLMwQbcBEGCBpgkwedrCYeDvoC2s1JnwH1JEVCoj2F4Z0Af2JpbLKy-IssOpOzNW5e8KntR28cBjOGajsqYrPyXeWVB~nroJfZowjB9sty6v2Wn2pDGsHmxo50pl8Gz0KOOwzILlXuEPSWsseescsUjVzhQ__",
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 2.h,
              ),
              const Divider(height: 0),
            ],
          ),
        ),
      ),
    );
  }
}
