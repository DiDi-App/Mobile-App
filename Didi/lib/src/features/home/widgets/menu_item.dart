import 'package:didi/src/core/theme/theme_colors.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:transparent_image/transparent_image.dart';

class MenuItem extends StatelessWidget {
  const MenuItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
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
          height: 7.5.h,
          width: 125,
          child: FadeInImage(
            placeholder: MemoryImage(kTransparentImage),
            image: const NetworkImage(
              "https://s3-alpha-sig.figma.com/img/7c7c/531b/3da34e93e27d789f8c8aa942ef6a80a3?Expires=1730678400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=LCWZZmJNwRL7UzJ5oPZ6GxSIl~QeWLZr91ES4qQs2lj8qrnjDD7yWfxc6-spmsN4J1xxdETnnAMnOcmn75wTcojqdHn02Tj6rnhaHDw6IMD1latxCL140-vHXV~BqekxWZoyV1pA2toD8AxIoVn-J-Jp3qY-rVR4PIlSN8b8DTOzHtkQbKXTw2kPbAKx0IQgI3E1CZPWgy95cfIc3ZguF8A5ssdvbFC3gVjIADDbR7oQwQSwXh4F8-~a38qAc-ZzFTxyS0eXeTJRvTZdsvlr2SrIQkHpzdCqYczUDticImvfky696aBGD4y-9HeacMjBXwrfJp9loyZkiJlq0FBkzA__",
            ),
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }
}
