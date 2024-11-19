import 'package:cached_network_image/cached_network_image.dart';
import 'package:didi/src/core/theme/theme_colors.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:routemaster/routemaster.dart';

class MenuItem extends StatelessWidget {
  const MenuItem({super.key});

  @override
  Widget build(BuildContext context) {
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
                    height: 7.5.h,
                    width: 125,
                    child: CachedNetworkImage(
                      fit: BoxFit.cover,
                      imageUrl:
                          "https://s3-alpha-sig.figma.com/img/7c7c/531b/3da34e93e27d789f8c8aa942ef6a80a3?Expires=1732492800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=Ta1-C7xg62ZQDuvW8Fzh2ldiY9XszlOeTIMTgdUQGC9YeGkxw~9hQOmyJFQSrHRQ-RwIGIjUkirEiwqgQv~1w8fMveRX9yEdWzJ3rKYSHCKXJDrUHk3f6wYdf2qskj5nLGLFC6NMOTFu7DN1zWfaOG7ppdn~dPBtu1ES92Z9m~YGcnW~PDcZ-cDnwN9vNhFuQk8ChVGnoJsVsu0xhiKbbw9aMYGDhVPjqCjKKvuKnBRBLanxGzU3uD7piaVjodLoknohN6XNqnLSTcDcZcVCp7J4fnH6QopxrUCANTV89PxTwgGCC8iy7ZuQlQihHQCIerUZ0CZBVQY~O7HhylJe-Q__",
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
