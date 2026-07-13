import 'package:flutter/material.dart';
import 'package:portfolio/features/home/pages/home_controller.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      key: HomeController.contactKey,
      height: 900,
      child: Center(
        child: Text("Contact"),
      ),
    );
  }
}