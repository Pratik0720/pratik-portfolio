import 'package:flutter/material.dart';
import 'package:portfolio/features/home/pages/home_controller.dart';

class ExperienceSection extends StatelessWidget {
  const ExperienceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      key: HomeController.experienceKey,
      height: 900,
      child: Center(
        child: Text("Experience"),
      ),
    );
  }
}