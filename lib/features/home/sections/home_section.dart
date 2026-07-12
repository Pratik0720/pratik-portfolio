import 'package:flutter/material.dart';
import '../../../shared/widgets/page_container.dart';
import '../../../core/theme/app_size.dart';
import '../widgets/hero/hero_text.dart';
import '../widgets/hero/hero_avatar.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    final height = size.height;

    return PageContainer(
      child: SizedBox(
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
