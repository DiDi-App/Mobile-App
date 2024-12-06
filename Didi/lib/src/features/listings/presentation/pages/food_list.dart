import 'package:cached_network_image/cached_network_image.dart';
import 'package:didi/src/core/constants.dart';
import 'package:didi/src/core/theme/theme_colors.dart';
import 'package:didi/src/features/listings/presentation/widgets/menu_item.dart';
import 'package:didi/src/features/listings/presentation/widgets/rounded_buttons.dart';
import 'package:didi/src/features/listings/presentation/widgets/vendor_info_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:routemaster/routemaster.dart';

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
                    child: SvgPicture.asset(
                      "assets/svg/arrow_left.svg",
                      height: 1.5.h,
                    ),
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
                    SizedBox(height: 1.h),
                    Expanded(
                      child: ListView.builder(
                        shrinkWrap: true,
                        padding: EdgeInsets.zero,
                        itemCount: 6,
                        itemBuilder: (context, index) => const MenuItem(),
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
