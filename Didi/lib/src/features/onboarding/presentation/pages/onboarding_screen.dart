import 'package:flutter/material.dart';

import 'package:didi/src/features/onboarding/presentation/pages/onboarding_screen1.dart';
import 'package:didi/src/features/onboarding/presentation/pages/onboarding_screen2.dart';
import 'package:didi/src/features/onboarding/presentation/pages/onboarding_screen3.dart';
import 'package:didi/src/features/onboarding/presentation/pages/onboarding_screen4.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController(initialPage: 0);

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _nextPage() {
    _pageController.nextPage(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeIn,
    );
  }

  void _previousPage() {
    _pageController.previousPage(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeIn,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: <Widget>[
          OnboardingScreen1(),
          OnboardingScreen2(),
          OnboardingScreen3(),
          OnboardingScreen4(),
        ],
      ),
    );
  }
}
