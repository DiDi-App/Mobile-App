import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'package:didi/src/core/widgets/custom_button.dart';

class OnboardingScreen4 extends StatelessWidget {
  const OnboardingScreen4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: 10.h),
            Image.asset(
              "assets/images/qr_code.png",
              width: 200,
            ),
            SizedBox(
              height: 12.h,
            ),
            CustomButton(
              text: "Login",
              onPressed: () {
                Navigator.pushReplacementNamed(context, "/signIn");
              },
              width: 75.w,
            ),
            SizedBox(height: 2.h),
            CustomButton(
              text: "Sign Up",
              backgroundColor: Colors.transparent,
              borderColor: Colors.white,
              width: 75.w,
              onPressed: () {
                Navigator.pushReplacementNamed(context, "/signUp");
              },
            ),
          ],
        ),
      ),
    );
  }
}
