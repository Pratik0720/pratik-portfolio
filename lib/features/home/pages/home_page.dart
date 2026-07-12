import 'package:flutter/material.dart';

import '../widgets/navbar/navbar.dart';
import '../sections/home_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          Navbar(),

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
