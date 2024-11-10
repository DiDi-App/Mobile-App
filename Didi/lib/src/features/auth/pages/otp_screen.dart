import 'package:didi/src/core/constants.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'package:didi/src/core/theme/theme_colors.dart';
import 'package:didi/src/features/auth/widgets/pin_fields.dart';
import 'package:didi/src/core/widgets/custom_button.dart';
import 'package:routemaster/routemaster.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key, required this.email});
  final String email;

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  final _formKey = GlobalKey<FormState>();
  String _input1 = "";
  String _input2 = "";
  String _input3 = "";
  String _input4 = "";

  void _onSubmitForm() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      debugPrint("$_input1$_input2$_input3$_input4");
      Routemaster.of(context).push('/passwordChange');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Routemaster.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back),
          color: AppThemeColors.kWhiteColor,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: Constants.horizontalPadding),
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 3.h),
              Text(
                "Verification Email",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.5.sp,
                  fontWeight: FontWeight.w600,
                  fontFamily: "Poppins",
                ),
              ),
              SizedBox(
                height: 1.5.h,
              ),
              Text(
                "Please enter the code that has been sent to",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: "Poppins",
                  fontSize: 14.3.sp,
                ),
              ),
              Text(
                widget.email,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontFamily: "Poppins",
                  fontSize: 14.3.sp,
                ),
              ),
              SizedBox(height: 3.h),
              Form(
                key: _formKey,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    PinField(
                      onChanged: (String val) {
                        _input1 = val;
                        if (val.length == 1) {
                          FocusScope.of(context).nextFocus();
                        }
                      },
                    ),
                    SizedBox(width: 3.w),
                    PinField(
                      onChanged: (String val) {
                        _input2 = val;
                        if (val.length == 1) {
                          FocusScope.of(context).nextFocus();
                        } else {
                          FocusScope.of(context).previousFocus();
                        }
                      },
                    ),
                    SizedBox(width: 3.w),
                    PinField(
                      onChanged: (String val) {
                        _input3 = val;
                        if (val.length == 1) {
                          FocusScope.of(context).nextFocus();
                        } else {
                          FocusScope.of(context).previousFocus();
                        }
                      },
                    ),
                    SizedBox(width: 3.w),
                    PinField(
                      onChanged: (String val) {
                        _input4 = val;
                        if (val.length != 1) {
                          FocusScope.of(context).previousFocus();
                        }
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(height: 2.5.h),
              RichText(
                text: TextSpan(
                  text: "If you didn't receive the code? ",
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w400,
                    fontSize: 14.5.sp,
                  ),
                  children: [
                    TextSpan(
                      text: "Resend",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w600,
                        color: AppThemeColors.kPrimaryButtonColor,
                        fontSize: 14.5.sp,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 2.5.h),
              CustomButton(
                text: "Continue",
                width: 86.w,
                onPressed: _onSubmitForm,
              )
            ],
          ),
        ),
      ),
    );
  }
}
