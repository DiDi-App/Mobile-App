import 'package:cached_network_image/cached_network_image.dart';
import 'package:didi/src/core/theme/theme_colors.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

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
          CachedNetworkImage(
            imageUrl:
                "https://s3-alpha-sig.figma.com/img/7c7c/531b/3da34e93e27d789f8c8aa942ef6a80a3?Expires=1732492800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=Ta1-C7xg62ZQDuvW8Fzh2ldiY9XszlOeTIMTgdUQGC9YeGkxw~9hQOmyJFQSrHRQ-RwIGIjUkirEiwqgQv~1w8fMveRX9yEdWzJ3rKYSHCKXJDrUHk3f6wYdf2qskj5nLGLFC6NMOTFu7DN1zWfaOG7ppdn~dPBtu1ES92Z9m~YGcnW~PDcZ-cDnwN9vNhFuQk8ChVGnoJsVsu0xhiKbbw9aMYGDhVPjqCjKKvuKnBRBLanxGzU3uD7piaVjodLoknohN6XNqnLSTcDcZcVCp7J4fnH6QopxrUCANTV89PxTwgGCC8iy7ZuQlQihHQCIerUZ0CZBVQY~O7HhylJe-Q__",
            fit: BoxFit.cover,
            height: 14.h,
            width: double.infinity,
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
