import 'package:didi/src/core/theme/theme_colors.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:transparent_image/transparent_image.dart';

class MealItem extends StatelessWidget {
  const MealItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).pushNamed("/vendorPage"),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: AppThemeColors.kTextFieldColor),
            clipBehavior: Clip.hardEdge,
            width: double.infinity,
            height: 12.5.h,
            child: FadeInImage(
              placeholder: MemoryImage(kTransparentImage),
              image: const NetworkImage(
                "https://s3-alpha-sig.figma.com/img/7c7c/531b/3da34e93e27d789f8c8aa942ef6a80a3?Expires=1730678400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=LCWZZmJNwRL7UzJ5oPZ6GxSIl~QeWLZr91ES4qQs2lj8qrnjDD7yWfxc6-spmsN4J1xxdETnnAMnOcmn75wTcojqdHn02Tj6rnhaHDw6IMD1latxCL140-vHXV~BqekxWZoyV1pA2toD8AxIoVn-J-Jp3qY-rVR4PIlSN8b8DTOzHtkQbKXTw2kPbAKx0IQgI3E1CZPWgy95cfIc3ZguF8A5ssdvbFC3gVjIADDbR7oQwQSwXh4F8-~a38qAc-ZzFTxyS0eXeTJRvTZdsvlr2SrIQkHpzdCqYczUDticImvfky696aBGD4y-9HeacMjBXwrfJp9loyZkiJlq0FBkzA__",
              ),
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
                  fontSize: 13.sp,
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
          const SizedBox(height: 3),
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
                  fontSize: 11.5.sp,
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
