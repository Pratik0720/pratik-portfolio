import 'package:flutter/material.dart';
import 'package:portfolio/features/home/pages/home_controller.dart';

class SkillsSection extends StatelessWidget {
  const SkillsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      key: HomeController.skillsKey,
      height: 900,
      child: Center(
        child: Text("Skills"),
      ),
    );
  }
}