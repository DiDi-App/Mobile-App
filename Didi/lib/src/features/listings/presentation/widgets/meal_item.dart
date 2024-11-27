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
            height: 12.h,
            child: CachedNetworkImage(
              imageUrl:
                  "https://s3-alpha-sig.figma.com/img/7c7c/531b/3da34e93e27d789f8c8aa942ef6a80a3?Expires=1732492800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=Ta1-C7xg62ZQDuvW8Fzh2ldiY9XszlOeTIMTgdUQGC9YeGkxw~9hQOmyJFQSrHRQ-RwIGIjUkirEiwqgQv~1w8fMveRX9yEdWzJ3rKYSHCKXJDrUHk3f6wYdf2qskj5nLGLFC6NMOTFu7DN1zWfaOG7ppdn~dPBtu1ES92Z9m~YGcnW~PDcZ-cDnwN9vNhFuQk8ChVGnoJsVsu0xhiKbbw9aMYGDhVPjqCjKKvuKnBRBLanxGzU3uD7piaVjodLoknohN6XNqnLSTcDcZcVCp7J4fnH6QopxrUCANTV89PxTwgGCC8iy7ZuQlQihHQCIerUZ0CZBVQY~O7HhylJe-Q__",
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
