import 'package:didi/src/core/theme/theme_colors.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:transparent_image/transparent_image.dart';

class AnnouncementCard extends StatelessWidget {
  const AnnouncementCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
      clipBehavior: Clip.hardEdge,
      child: Stack(
        children: [
          FadeInImage(
            placeholder: MemoryImage(kTransparentImage),
            image: const NetworkImage(
              "https://s3-alpha-sig.figma.com/img/7c7c/531b/3da34e93e27d789f8c8aa942ef6a80a3?Expires=1730678400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=LCWZZmJNwRL7UzJ5oPZ6GxSIl~QeWLZr91ES4qQs2lj8qrnjDD7yWfxc6-spmsN4J1xxdETnnAMnOcmn75wTcojqdHn02Tj6rnhaHDw6IMD1latxCL140-vHXV~BqekxWZoyV1pA2toD8AxIoVn-J-Jp3qY-rVR4PIlSN8b8DTOzHtkQbKXTw2kPbAKx0IQgI3E1CZPWgy95cfIc3ZguF8A5ssdvbFC3gVjIADDbR7oQwQSwXh4F8-~a38qAc-ZzFTxyS0eXeTJRvTZdsvlr2SrIQkHpzdCqYczUDticImvfky696aBGD4y-9HeacMjBXwrfJp9loyZkiJlq0FBkzA__",
            ),
            height: 14.h,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Positioned(
            left: 0,
            top: 0,
            right: 0,
            bottom: 0,
            child: Container(
              color: Colors.black.withOpacity(0.3),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Get 50% off all local foods ordered",
                    style: TextStyle(
                      // fontFamily: "Poppins",
                      fontWeight: FontWeight.w800,
                      color: AppThemeColors.kWhiteColor,
                      fontSize: 15.3.sp,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 6),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3.7),
                      color: AppThemeColors.kPrimaryButtonColor,
                    ),
                    child: Text(
                      "Order now",
                      style: TextStyle(
                        color: AppThemeColors.kWhiteColor,
                        fontFamily: "Poppins",
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
