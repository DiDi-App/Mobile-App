import 'package:didi/src/core/theme/theme_colors.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class PhoneInputField extends StatelessWidget {
  const PhoneInputField({
    super.key,
    required this.controller,
    this.validator,
    this.keyboardType = TextInputType.text,
    this.obscureText = false,
  });

  final TextEditingController controller;
  final TextInputType keyboardType;
  final FormFieldValidator<String>? validator;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      controller: controller,
      keyboardType: keyboardType,
      cursorColor: AppThemeColors.kPrimaryButtonColor,
      decoration: InputDecoration(
        hintText: "Phone number",
        contentPadding: EdgeInsets.symmetric(horizontal: 1.8.h, vertical: 1.h),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: AppThemeColors.kWhiteColor,
            width: 1.5,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      validator: validator,
    );
  }
}
