import 'package:flutter/material.dart';
import 'package:portfolio/features/home/widgets/hero/hero_background.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../shared/widgets/page_container.dart';

class HeroAvatar extends StatelessWidget {
  const HeroAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        children: [
          HeroBackground(),
        ],
      )
    );
  }
}
