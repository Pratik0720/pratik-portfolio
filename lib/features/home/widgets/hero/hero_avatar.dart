import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:portfolio/core/theme/app_colors.dart';
import 'package:portfolio/core/theme/app_text_styles.dart';
import 'package:portfolio/features/home/widgets/hero/hero_background.dart';
import 'package:portfolio/features/home/widgets/hero/hero_constants.dart';
import 'package:portfolio/features/home/widgets/hero/hero_floating_card.dart';
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
                )
                .animate()
                .fadeIn(
                  delay: 300.ms,
                  duration: 700.ms,
                )
                .slideX(
                  begin: 0.25,
                  end: 0,
                ),
              ),

              Positioned(
                right: HeroConstants.professionCardRightOffset,
                bottom: HeroConstants.professionCardBottomOffset,

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "PROFESSION",
                      style: AppTextStyle.body.copyWith(
                        fontWeight: FontWeight.bold,
                        color: AppColors.textPrimary
                      ),
                    ).animate()
                    .fadeIn(
                      delay: 600.ms,
                      duration: 500.ms,
                    )
                    .scale(
                    begin: const Offset(0.8, 0.8),
                    end: const Offset(1, 1),
                    ),

                    HeroFloatingCard(
                      color: AppColors.secondary, 
                      title: "Flutter Developer ", 
                      subtitle: "Android & Kotlin", 
                    )
                    .animate()
                    .fadeIn(
                      delay: 800.ms,
                      duration: 500.ms,
                    )
                    .scale(
                    begin: const Offset(0.8, 0.8),
                    end: const Offset(1, 1),
                    ),
                  ],
                )
              )
              .animate(
                onPlay: (controller) => controller.repeat(reverse: true),
              )
              .moveY(
                begin: 0,
                end: -8,
                duration: 2.seconds,
                curve: Curves.easeInOut,
              ),

              Positioned(
                right: HeroConstants.nameCardRightOffset,
                bottom: HeroConstants.nameCardBottomOffset,

                child: HeroFloatingCard(
                  color: AppColors.secondary, 
                  title: "Pratik", 
                  subtitle: "Gangurde",
                  fontSize: 25, 
                ).animate()
                    .fadeIn(
                      delay: 950.ms,
                      duration: 500.ms,
                    )
                    .scale(
                    begin: const Offset(0.8, 0.8),
                    end: const Offset(1, 1),
                    ),
              )

            ],
          );
        },
      ),
    );
  }
}
