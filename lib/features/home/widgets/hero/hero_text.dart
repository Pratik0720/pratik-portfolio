import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:portfolio/features/home/widgets/hero/hero_buttons.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_text_styles.dart';
import '../../../../core/theme/app_spacing.dart';


class HeroText extends StatelessWidget {
  const HeroText({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 4,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Pratik",
            style: AppTextStyle.title.copyWith(
              color: AppColors.textPrimary,
              fontWeight: FontWeight.normal
            ),
          )
          .animate()
          .fadeIn(duration: 500.ms)
          .slideX(begin: -0.2, end: 0),
          

          Text(
            "Gangurde",
            style: AppTextStyle.hero.copyWith(
              color: AppColors.primary,
              fontWeight: FontWeight.normal

            ),
          )
          .animate()
          .fadeIn(delay: 150.ms, duration: 500.ms)
          .slideX(begin: -0.2, end: 0),

          const SizedBox(height: AppSpacing.sm,),

          Text(
            "Flutter Developer | Android | Kotlin | AI/ML Enthusiast | Building Smart & Scalable Apps",
            style: AppTextStyle.subtitle.copyWith(color: AppColors.textPrimary),
          )
          .animate()
          .fadeIn(delay: 300.ms, duration: 500.ms)
          .slideX(begin: -0.2, end: 0),

          const SizedBox(height: AppSpacing.sm,),

          Text(
            "Description.",
            style: AppTextStyle.body.copyWith(
              color: AppColors.textPrimary
            ),
          )
          .animate()
          .fadeIn(delay: 450.ms, duration: 500.ms)
          .slideX(begin: -0.2, end: 0),

          const SizedBox(height: AppSpacing.xl,),

          HeroButtons(
            onResumeTap: (){},
            onGithubTap: (){},
            onLinkedInTap: (){},
          )
          .animate()
          .fadeIn(
            delay: 600.ms,
            duration: 500.ms,
          )
          .slideY(
            begin: 0.25,
            end: 0,
          )

         
        ],
      ),
    );
  }
}
