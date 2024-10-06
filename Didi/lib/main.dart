import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'package:didi/src/core/theme/theme_config.dart';
import 'package:didi/src/features/onboarding/presentation/pages/onboarding_screen.dart';
import 'package:didi/src/features/auth/presentation/pages/signup_screen.dart';
import 'package:didi/src/features/auth/presentation/pages/signin_screen.dart';
import 'package:didi/src/features/auth/presentation/pages/password_reset_request.dart';
import 'package:didi/src/features/auth/presentation/pages/otp_screen.dart';
import 'package:didi/src/features/auth/presentation/pages/password_change_screen.dart';
import 'package:didi/src/features/auth/presentation/pages/password_reset_complete.dart';

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
            '/passwordResetComplete': (context) => const PasswordResetComplete()
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
