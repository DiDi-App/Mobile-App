import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'package:didi/src/core/theme/theme_colors.dart';
import 'package:didi/src/core/widgets/custom_button.dart';

class PasswordChangeScreen extends StatefulWidget {
  const PasswordChangeScreen({super.key});

  @override
  State<PasswordChangeScreen> createState() => _PasswordChangeScreenState();
}

class _PasswordChangeScreenState extends State<PasswordChangeScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _password1Controller = TextEditingController();
  final TextEditingController _password2Controller = TextEditingController();

  void _onSubmitForm() {
    if (_formKey.currentState!.validate()) {
      Navigator.pushNamed(context, "/passwordResetComplete");
    } else {
      return;
    }
  }

  void dispose() {
    _password1Controller.dispose();
    _password2Controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back),
            color: AppThemeColors.kWhiteColor,
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 7.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 4.h),
                Text(
                  "New Password",
                  style: TextStyle(
                    fontSize: 19.sp,
                    fontWeight: FontWeight.w700,
                    fontFamily: "Poppins",
                  ),
                ),
                SizedBox(height: 0.8.h),
                Text(
                  "Now enter your new password",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 13.3.sp,
                  ),
                ),
                SizedBox(height: 3.h),
                Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Password",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontFamily: "Poppins",
                        ),
                      ),
                      SizedBox(height: 1.h),
                      TextFormField(
                        obscureText: true,
                        cursorColor: AppThemeColors.kPrimaryButtonColor,
                        controller: _password1Controller,
                        decoration:
                            InputDecoration(hintText: "Enter new password"),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Enter password";
                          } else if (value.length < 7) {
                            return "Password should be more than 6 characters";
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 3.h),
                      Text(
                        "Confirm Password",
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontFamily: "Poppins"),
                      ),
                      SizedBox(height: 1.h),
                      TextFormField(
                        obscureText: true,
                        cursorColor: AppThemeColors.kPrimaryButtonColor,
                        controller: _password2Controller,
                        decoration:
                            InputDecoration(hintText: "Confirm Password"),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Confirm password";
                          } else if (value.length < 7) {
                            return "Password should be more than 6 characters";
                          } else if (value != _password1Controller.text) {
                            return "The 2 password fields do not match";
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 2.3.h),
                      CustomButton(
                        text: "Reset password",
                        width: 90.w,
                        onPressed: _onSubmitForm,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
