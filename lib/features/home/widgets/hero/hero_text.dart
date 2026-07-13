import 'package:flutter/material.dart';
import 'package:portfolio/shared/widgets/buttons/primary_button.dart';
import 'package:portfolio/shared/widgets/buttons/social_button.dart';
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
          ),

          Text(
            "Gangurde",
            style: AppTextStyle.hero.copyWith(
              color: AppColors.primary,
              fontWeight: FontWeight.normal

            ),
          ),

          SizedBox(height: AppSpacing.sm,),

          Text(
            "Flutter Developer | Android | Kotlin | AI/ML Enthusiast | Building Smart & Scalable Apps",
            style: AppTextStyle.subtitle.copyWith(color: AppColors.textPrimary),
          ),

          SizedBox(height: AppSpacing.sm,),

          Text(
            "Description.",
            style: AppTextStyle.body.copyWith(
              color: AppColors.textPrimary
            ),
          ),

          SizedBox(height: AppSpacing.lg,),

          PrimaryButton(
            onTap: () {} , 
            title: "Download", 
            icon: Icons.download
          ),

          SizedBox(height: AppSpacing.md,),
          Row(
            children: [
              SocialButton(icon: Icons.download, title: "Github", onTap: () {}),
              
              SizedBox(width: AppSpacing.sm,),

                            SocialButton(icon: Icons.download, title: "Linkdin", onTap: () {})

            ],
          )
        ],
      ),
    );
  }
}
