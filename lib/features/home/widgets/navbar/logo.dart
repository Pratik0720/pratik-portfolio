import 'package:flutter/material.dart';

import 'package:portfolio/core/theme/app_colors.dart';
import 'package:portfolio/core/theme/app_text_styles.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 42,
          height: 42,
          decoration: BoxDecoration(
            color: AppColors.primary,
            borderRadius: BorderRadius.circular(22)
          ),
          alignment: Alignment.center,
          child: const Text(
            "PG",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold
            ),
          ),
        ),

        SizedBox(width: 12,),

        Text(
          "Pratik",
          style: AppTextStyle.subtitle.copyWith(
            fontWeight: FontWeight.w600
          ),
        )
      ],
    );
  }
}
