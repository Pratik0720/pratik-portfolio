import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:portfolio/core/theme/app_colors.dart';
import 'package:portfolio/core/theme/app_radius.dart';
import 'package:portfolio/features/home/widgets/hero/hero_constants.dart';

class HeroBackground extends StatelessWidget {
  final double width;
  final double height;

  const HeroBackground({
    super.key,
    required this.width,
    required this.height,
  });

  

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height * HeroConstants.backgroundHeightFactor,
      width: width * HeroConstants.backgroundWidthFactor,
      child: DecoratedBox(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.10),
              blurRadius: 40,
              spreadRadius: 2,
              offset: const Offset(0, 18),
            )
          ],
          color: AppColors.primary,
          borderRadius: BorderRadius.circular(AppRadius.lg),
          
        ),
      
      ),
    );
  }
}
