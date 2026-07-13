import 'package:flutter/material.dart';
import 'package:portfolio/features/home/pages/home_controller.dart';
import '../../../../shared/widgets/page_container.dart';
import '../../../../core/theme/app_size.dart';
import 'widgets/hero_text.dart';
import 'widgets/hero_avatar.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    final height = size.height;

    return PageContainer(
      child: SizedBox(
        key: HomeController.heroKey,
        height: height - AppSize.navbarHeight,
        child: Row(
          children: [
            const HeroText(),

            const HeroAvatar()
            
          ],
        ),
      ),
    );
  }
}
