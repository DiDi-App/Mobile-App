import 'package:cached_network_image/cached_network_image.dart';
import 'package:didi/src/core/enums/status.dart';
import 'package:didi/src/core/theme/theme_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class OrderItem extends StatelessWidget {
  const OrderItem({
    super.key,
    required this.status,
    this.showTrailing = false,
  });

  final OrderStatus status;

  final bool showTrailing;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 1.h),
      child: Column(
        children: [
          Row(
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
                      height: 9.h,
                      width: 25.w,
                      child: CachedNetworkImage(
                        imageUrl:
                            "https://s3-alpha-sig.figma.com/img/09e0/0b8d/8839ae83655bea151d87fd6746130b0c?Expires=1732492800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=fxWoEfnpGLZl4A~m6Q7G0B4712dF3fi8DwJtBPuwNL1aDYEijAn1zVKMr3DK6TMkR~ZI9JP02zw9Xx5iTcQtDB1x87~D3hqPIVg27d9QmBrugdHA5QmOH6uc6N0hZwmWqnwgsDHryf1dL4Ht4x61c5r7RYGH7rEOoYHYYtuyVKAT~kW5HL3LrGi95JgUXpGkSPD6WuCSUwsScU0ZOC43Ob~ivZsyxnhey17~iBEWduRl1SjdL3iWhtKl6BkYfg2O6u7EDU2zYg39pankH4jUnPpLGgwV8GRBc6XkoKKAEtA0~3w5g4reWlfjeu27Yznyhz3MtjHK2GQjBkIKbde9zw__",
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
              if (showTrailing)
                CircleAvatar(
                  backgroundColor: AppThemeColors.kTextFieldColor,
                  radius: 2.3.h,
                  child: IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset(
                      "assets/svg/rotate.svg",
                    ),
                  ),
                ),
            ],
          ),
          SizedBox(height: 1.h),
          Row(
            children: [
              Text(
                "23 Nov,2023 2:46pm",
                style: TextStyle(
                  fontSize: 14.sp,
                ),
              ),
              SizedBox(width: 4.w),
              if (status == OrderStatus.delivered)
                Text(
                  "Delivered!",
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.bold,
                    color: AppThemeColors.kDeliveredColor,
                  ),
                ),
              if (status == OrderStatus.pending)
                Text(
                  "Pending!",
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.bold,
                    color: AppThemeColors.kPendingColor,
                  ),
                ),
              if (status == OrderStatus.cancelled)
                Text(
                  "Cancelled!",
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.bold,
                    color: AppThemeColors.kPrimaryButtonColor,
                  ),
                ),
            ],
          ),
          SizedBox(height: 1.h),
          const Divider(),
        ],
      ),
    );
  }
}
