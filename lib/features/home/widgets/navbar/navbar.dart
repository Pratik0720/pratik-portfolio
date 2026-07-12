import 'package:flutter/material.dart';
import 'package:portfolio/features/home/widgets/navbar/logo.dart';
import 'package:portfolio/features/home/widgets/navbar/nav_item.dart';

import '../../../../shared/widgets/page_container.dart';

class Navbar extends StatelessWidget {
  const Navbar({super.key});

  @override
  Widget build(BuildContext context) {
    return PageContainer(
      child: SizedBox(
        height: 80,
        child: Row(
          children: [
            Logo(),

            Spacer(),

            //navigation items
            NavItem(title: "Home", onTap: () {}),

            SizedBox(height: 12),

            NavItem(title: "About", onTap: () {}),

            SizedBox(height: 12),

            NavItem(title: "Skill", onTap: () {}),

            SizedBox(height: 12),

            NavItem(title: "Projects", onTap: () {}),

            SizedBox(width: 32),

            //resume button
            ElevatedButton(onPressed: () {}, child: const Text("Resume")),
          ],
        ),
      ),
    );
  }
}
