import 'package:flutter/material.dart';

class PageContainer extends StatelessWidget {
  final Widget child;

  const PageContainer({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ConstrainedBox(
        constraints: const BoxConstraints(
          maxWidth: 1400,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 24,
          ),
          child: child,
        ),
      ),
    );
  }
}