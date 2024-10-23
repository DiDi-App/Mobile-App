import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'package:didi/src/core/theme/theme_colors.dart';
import 'package:didi/src/core/widgets/custom_button.dart';
import '../widgets/signup_icons.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final _formKey = GlobalKey<FormState>();
  String _email = "";
  String _password1 = "";

  void _onSubmitForm() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      debugPrint(_email);
      debugPrint(_password1);
      //   You can make ur request from this place forward;
    } else {
      return;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 7.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10.h),
              Text(
                "Welcome to Didi",
                style: TextStyle(
                  fontSize: 19.7.sp,
                  fontWeight: FontWeight.w700,
                  fontFamily: "Poppins",
                ),
              ),
              SizedBox(height: 0.8.h),
              Text(
                "Lets log you in to get started",
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w600,
                  fontSize: 15.sp,
                ),
              ),
              SizedBox(height: 5.h),
              Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Email",
                      style: TextStyle(
                          fontWeight: FontWeight.w600, fontFamily: "Poppins"),
                    ),
                    SizedBox(height: 1.h),
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      cursorColor: AppThemeColors.kPrimaryButtonColor,
                      decoration:
                          const InputDecoration(hintText: "Enter your email"),
                      validator: (value) {
                        if (value == null || value.trim().isEmpty) {
                          return "Enter an email address";
                        } else if (!RegExp(
                                r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$')
                            .hasMatch(value)) {
                          return "Enter a valid email address";
                        }
                        return null;
                      },
                      onSaved: (value) {
                        _email = value!;
                      },
                    ),
                    SizedBox(height: 3.h),
                    const Text(
                      "Password",
                      style: TextStyle(
                          fontWeight: FontWeight.w600, fontFamily: "Poppins"),
                    ),
                    SizedBox(height: 1.h),
                    TextFormField(
                      obscureText: true,
                      cursorColor: AppThemeColors.kPrimaryButtonColor,
                      decoration:
                          const InputDecoration(hintText: "Enter password"),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Enter password";
                        } else if (value.length < 7) {
                          return "Password should be more than 6 characters";
                        }
                        return null;
                      },
                      onSaved: (value) {
                        _password1 = value!;
                      },
                    ),
                    SizedBox(height: 0.8.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(
                                context, '/resetPasswordRequest');
                          },
                          child: Text(
                            "Forgot password?",
                            style: TextStyle(
                                color: Colors.blue,
                                fontFamily: "Poppins",
                                fontSize: 14.5.sp,
                                fontWeight: FontWeight.w500),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 4.h),
                    CustomButton(
                      text: "Login",
                      width: 90.w,
                      onPressed: _onSubmitForm,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 4.h),
              Row(
                children: [
                  const Expanded(
                    child: Divider(
                      thickness: 0.5,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(width: 4.w),
                  Text(
                    "Sign in with",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w600,
                      fontSize: 15.5.sp,
                    ),
                  ),
                  SizedBox(width: 4.w),
                  const Expanded(
                    child: Divider(
                      thickness: 0.5,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
              SizedBox(height: 2.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SignUpIcons(
                    svgUrl: "assets/svg/google_icon.svg",
                    onTap: () {},
                  ),
                  SizedBox(width: 5.w),
                  SignUpIcons(
                    svgUrl: "assets/svg/facebook_icon.svg",
                    onTap: () {},
                  ),
                  SizedBox(width: 5.w),
                  SignUpIcons(
                    svgUrl: "assets/svg/apple_icon.svg",
                    onTap: () {},
                  ),
                ],
              ),
              SizedBox(height: 6.h),
              Center(
                child: RichText(
                  text: TextSpan(
                    text: "Don't have an account? ",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w400,
                      fontSize: 15.8.sp,
                    ),
                    children: [
                      TextSpan(
                        text: "sign up here",
                        style: TextStyle(
                          fontFamily: "Poppins",
                          color: Colors.blue,
                          fontSize: 15.8.sp,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.pushReplacementNamed(context, "/signUp");
                          },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
