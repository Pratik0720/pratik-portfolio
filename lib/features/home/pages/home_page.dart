import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import '../widgets/navbar/navbar.dart';
import '../sections/home_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Navbar()
          .animate()
          .fadeIn(duration: 600.ms)
          .slideY(
            begin: -0.3,
            end: 0,
          ),

          Expanded(
            child: Center(
              child: HeroSection(),
            ) 
          )
          
        ],
      ),
    );
  }
}
