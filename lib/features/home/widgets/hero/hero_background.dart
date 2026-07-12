import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:portfolio/core/theme/app_colors.dart';

class HeroBackground extends StatelessWidget {
  const HeroBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        constraints.maxWidth;
        constraints.maxHeight;
        return DecoratedBox(
          decoration: BoxDecoration(
            color: AppColors.primary,
            borderRadius: BorderRadius.circular(16),
          ),
        );
      },
    );
  }
}
