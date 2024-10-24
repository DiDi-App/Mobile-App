import 'package:didi/src/core/theme/theme_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
// import 'package:responsive_sizer/responsive_sizer.dart';

class HomeTextField extends StatelessWidget {
  const HomeTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(
        fontFamily: "Poppins",
        fontSize: 14.1.sp,
        color: AppThemeColors.kWhiteColor.withOpacity(0.8),
      ),
      decoration: InputDecoration(
        hintText: "What do you want to order today?",
        suffixIcon: SvgPicture.asset(
          colorFilter: ColorFilter.mode(
            AppThemeColors.kWhiteColor.withOpacity(0.8),
            BlendMode.srcIn,
          ),
          "assets/svg/search.svg",
          fit: BoxFit.scaleDown,
        ),
        filled: true,
        fillColor: AppThemeColors.kTextFieldColor,
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 14, vertical: 15),
        border: const OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.all(Radius.circular(7)),
        ),
      ),
    );
  }
}
