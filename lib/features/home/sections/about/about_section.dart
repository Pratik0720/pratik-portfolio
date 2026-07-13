import 'package:flutter/material.dart';
import '../../pages/home_controller.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      key: HomeController.aboutKey,
      height: 900,
      child: Center(
        child: Text("About"),
      ),
    );
  }
}