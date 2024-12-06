import 'package:cached_network_image/cached_network_image.dart';
import 'package:didi/src/core/theme/theme_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class BasketItem extends StatelessWidget {
  const BasketItem({super.key});

  @override
  Widget build(BuildContext context) {
    final isTablet = Device.screenType == ScreenType.tablet;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 1.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Card(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                  ),
                  clipBehavior: Clip.hardEdge,
                  height: isTablet ? 10.h : 9.h,
                  width: isTablet ? 21.w : 25.w,
                  child: CachedNetworkImage(
                    imageUrl:
                        "https://s3-alpha-sig.figma.com/img/09e0/0b8d/8839ae83655bea151d87fd6746130b0c?Expires=1734307200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=p0lT9NTzeGHGzCZg2sB4MhTU8HeC8lkOf53-6JHVJP21OKTdpdFlHMqrcDsUQzQyORQwzmG4WpFxbXnWRaLju2nx-2Is8PMVB4lR8rIJhVA8qiz-t11sNkNsNmPP1G7nTCpJQRf-9I~QVHOeZGIRcLBnJ0nJssoIadSx6yZ9Nws-02ZMArJ9trHdiZmEPFIa0EVOKuZkw2BPWbT4BxCjA3PtO7tb95CN6GU~rETMH75ZLp2-yIzSissHX2AQ8RNDPVVvTiJwcfTeUBDvw9tvXhsfh9lHdd9eI6k13YLU5IQt0aYivIZXbDW9eWhr94qNQqm0~QfdrOxBOCvHsoyPkA__",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(width: 7),
              SizedBox(
                width: 33.w,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Special Fufu with Sweet Lamin",
                      style: TextStyle(
                        fontSize: 14.7.sp,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w700,
                        color: AppThemeColors.kWhiteColor,
                      ),
                    ),
                    Text(
                      "GHC 15.00",
                      style: TextStyle(
                        fontSize: 14.7.sp,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w700,
                        color: AppThemeColors.kPrimaryButtonColor,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              "assets/svg/trash.svg",
              height: 2.5.h,
            ),
          )
        ],
      ),
    );
  }
}
