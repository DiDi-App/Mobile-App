import 'package:didi/src/core/theme/theme_colors.dart';
import 'package:flutter/material.dart';

class CustomChip extends StatefulWidget {
  const CustomChip({super.key, required this.onTap, required this.label});

  final VoidCallback onTap;
  final String label;

  @override
  State<CustomChip> createState() => _CustomChipState();
}

class _CustomChipState extends State<CustomChip> {
  int ctr = 0;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.onTap();
        ctr += 1;
        setState(() {});
      },
      child: Chip(
        label: Text(widget.label),
        backgroundColor: ctr % 2 == 1
            ? AppThemeColors.kPrimaryButtonColor
            : AppThemeColors.kTextFieldColor,
        visualDensity: VisualDensity.compact,
      ),
    );
  }
}
