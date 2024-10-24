import 'package:didi/src/features/home/screen/tab_bar_view.dart';
import 'package:didi/src/features/home/screen/vendor_screen.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'package:didi/src/core/theme/theme_config.dart';
import 'package:didi/src/features/onboarding/pages/onboarding_screen.dart';
import 'package:didi/src/features/auth/pages/signup_screen.dart';
import 'package:didi/src/features/auth/pages/signin_screen.dart';
import 'package:didi/src/features/auth/pages/password_reset_request.dart';
import 'package:didi/src/features/auth/pages/otp_screen.dart';
import 'package:didi/src/features/auth/pages/password_change_screen.dart';
import 'package:didi/src/features/auth/pages/password_reset_complete.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (context, orientation, screenType) {
        return MaterialApp(
          initialRoute: '/',
          routes: {
            '/': (context) => const OnboardingScreen(),
            '/signUp': (context) => const SignUpScreen(),
            '/signIn': (context) => const SignInScreen(),
            '/resetPasswordRequest': (context) => const ResetPasswordRequest(),
            '/otpVerification': (context) => const OtpScreen(),
            '/passwordChange': (context) => const PasswordChangeScreen(),
            '/passwordResetComplete': (context) =>
                const PasswordResetComplete(),
            '/homePage': (context) => const TabBarPage(),
            '/vendorPage': (context) => const VendorScreen(),
          },
          debugShowCheckedModeBanner: false,
          darkTheme: ThemeConfig().darkTheme,
          theme: ThemeConfig().lightTheme,
          themeMode: ThemeMode.dark,
        );
      },
    );
  }
}
