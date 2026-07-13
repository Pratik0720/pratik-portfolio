import 'package:flutter/material.dart';

class HeroImage extends StatelessWidget {
  final double width;
  final double height;
  const HeroImage({
    super.key,
    required this.height,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/hero/avatar.png',
      width: width,
      height: height,
      fit: BoxFit.contain,
    );
  }
}
