import 'package:didi/src/core/theme/theme_colors.dart';
import 'package:flutter/material.dart';

class RoundedButtons extends StatelessWidget {
  const RoundedButtons({super.key, required this.child, required this.onTap});

  final Widget child;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: CircleAvatar(
        backgroundColor: AppThemeColors.kContainerColor,
        child: child,
      ),
    );
  }
}
