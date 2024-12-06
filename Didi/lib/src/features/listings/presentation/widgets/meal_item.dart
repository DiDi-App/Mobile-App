import 'package:cached_network_image/cached_network_image.dart';
import 'package:didi/src/core/theme/theme_colors.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:routemaster/routemaster.dart';

class MealItem extends StatelessWidget {
  const MealItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Routemaster.of(context).push("/foodList"),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: AppThemeColors.kTextFieldColor),
            clipBehavior: Clip.hardEdge,
            width: double.infinity,
            height: Device.screenType == ScreenType.tablet ? 15.h : 12.h,
            child: CachedNetworkImage(
              imageUrl:
                  "https://s3-alpha-sig.figma.com/img/462c/1c30/5c73404962f595b8f282c749bd00fb31?Expires=1734307200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=dBQkzPZ7tAmAxH0qDsnaqDVKp1kwsv717HLdQRwYK3Yea88t4lq0p5EZv~8mpBWx6jFOd7BhUnhtn9PwQMQAs-sDO5--e7ZCf4KVxqpE-PWELJobfhOCRU3TIDALk2yGifkusURW91bUnHeAPUiIxcAola5UW06PiUofmIzpyHy425s2y0ovR2BnuCRZzz~axmDiPV9vNmkrwIx0P5FXuPelMtwQF8RupioSHCRwdlbKc2lVnxNNkFpPwNB-XHUiVU3hcBSp-EOAzSaTEycyM3LiXdDusbgx2YK0rlJbNq-MecufIx1rx-2~eRiYtoIjSmtRsW9BXKsfYPbCGwC7Hw__",
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 3),
          Row(
            children: [
              Text(
                "Sweet Sweet Lamin",
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 13.5.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(width: 5),
              Icon(
                Icons.lock,
                size: 15.sp,
                color: AppThemeColors.kPrimaryButtonColor,
              )
            ],
          ),
          const SizedBox(height: 1),
          Row(
            children: [
              Icon(
                Icons.timelapse,
                size: 13.sp,
                color: AppThemeColors.kPrimaryButtonColor,
              ),
              const SizedBox(width: 5),
              Text(
                "30 - 40 mins",
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 12.3.sp,
                  fontWeight: FontWeight.w500,
                  color: AppThemeColors.kPrimaryButtonColor,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
