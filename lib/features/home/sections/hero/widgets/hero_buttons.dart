import 'package:flutter/material.dart';

import '../../../../../shared/widgets/buttons/primary_button.dart';
import '../../../../../shared/widgets/buttons/social_button.dart';
import '../../../../../core/theme/app_spacing.dart';

class HeroButtons extends StatelessWidget {
  final VoidCallback onResumeTap;
  final VoidCallback onGithubTap;
  final VoidCallback onLinkedInTap;
  const HeroButtons({
    super.key,
    required this.onResumeTap,
    required this.onGithubTap,
    required this.onLinkedInTap 
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        PrimaryButton(onTap: onResumeTap, 
        title: "Resume", 
        icon: Icons.download
      ),

        const SizedBox(height: AppSpacing.xl),

        Row(
          children: [
            SocialButton(
              onTap: onGithubTap, 
              title: "GitHub", 
              icon: Icons.code
            ),

            const SizedBox(width: AppSpacing.lg),

            SocialButton(
              onTap: onLinkedInTap,
              title: "LinkedIn",
              icon: Icons.work_outline,
            ),
          ],
        ),
      ],
    );
  }
}
