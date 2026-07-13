import 'package:flutter/material.dart';
import 'package:portfolio/features/home/pages/home_controller.dart';

class ProjectSection extends StatelessWidget {
  const ProjectSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      key: HomeController.projectsKey,
      height: 900,
      child: Center(
        child: Text("Projects"),
      ),
    );
  }
}