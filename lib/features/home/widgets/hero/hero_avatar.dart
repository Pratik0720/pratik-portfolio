import 'package:flutter/material.dart';
import 'package:portfolio/features/home/widgets/hero/hero_background.dart';
import 'package:portfolio/features/home/widgets/hero/hero_constants.dart';
import 'package:portfolio/features/home/widgets/hero/hero_image.dart';

class HeroAvatar extends StatelessWidget {
  const HeroAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 6,
      child: LayoutBuilder(
        builder: (context, constraints) {
          final width = constraints.maxWidth;
          final height = constraints.maxHeight;
          return Stack(
            children: [
              Positioned(
                right: 0,
                bottom: 0,
                child: HeroBackground(
                  width: width,
                  height: height,
                ),
              ),

              Positioned(
                right: HeroConstants.imageRightOffset,
                bottom: HeroConstants.imageBottomOffset,
                child: HeroImage(
                  width: width * HeroConstants.imageWidthFactor,
                  height: height * HeroConstants.imageHeightFactor,
                ),
              ),

            ],
          );
        },
      ),
    );
  }
}
