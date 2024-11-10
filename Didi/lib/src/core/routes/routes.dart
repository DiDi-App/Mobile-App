part of "routes_imports.dart";

final loggedOutRoutes = RouteMap(
  routes: {
    '/': (_) => const MaterialPage(child: OnboardingScreen()),
    '/signUp': (_) => const MaterialPage(child: SignUpScreen()),
    '/signIn': (_) => const MaterialPage(child: SignInScreen()),
    '/resetPasswordRequest': (_) =>
        const MaterialPage(child: ResetPasswordRequest()),
    '/otpVerification/:email': (info) => MaterialPage(
          child: OtpScreen(email: info.pathParameters['email']!),
        ),
    '/passwordChange': (_) => const MaterialPage(child: PasswordChangeScreen()),
    '/passwordResetComplete': (_) =>
        const MaterialPage(child: PasswordResetComplete()),
  },
);

final loggedInRoutes = RouteMap(
  routes: {
    '/homePage': (_) => const MaterialPage(child: TabBarPage()),
    '/vendorPage': (_) => const MaterialPage(child: VendorScreen()),
  },
);
