import 'package:flutter/material.dart';
import 'package:portfolio/core/theme/app_colors.dart';
import 'package:portfolio/core/theme/app_padding.dart';
import 'package:portfolio/core/theme/app_radius.dart';
import 'package:portfolio/core/theme/app_spacing.dart';
import 'package:portfolio/core/theme/app_text_styles.dart';

class HeroFloatingCard extends StatelessWidget {
  final Color color;
  final String title;
  final String subtitle;
  final double ?fontSize;

  const HeroFloatingCard({
    super.key,
    required this.color,
    required this.title,
    required this.subtitle,
    this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppRadius.lg),
        color: color,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.16),
            blurRadius: AppRadius.lg,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: AppPadding.sm, horizontal: AppPadding.md),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: AppTextStyle.body.copyWith(
                color: AppColors.surface,
                fontWeight: FontWeight.bold,
              ),
            ),

            Text(
              subtitle,
              style: AppTextStyle.body.copyWith(
                color: AppColors.surface,
                fontWeight: FontWeight.bold,
                fontSize: fontSize
              ),
            ),
          ],
        ),
      ),
    );
  }
}
