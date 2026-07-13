import 'package:flutter/material.dart';
import 'package:portfolio/core/theme/app_radius.dart';
import 'package:portfolio/core/theme/app_spacing.dart';
import '../../../core/theme/app_text_styles.dart';
import '../../../core/theme/app_colors.dart';

class PrimaryButton extends StatefulWidget {
  final String title;
  final VoidCallback onTap;
  final IconData icon;


  const PrimaryButton({
    super.key,
    required this.onTap,
    required this.title,
    required this.icon,
  });

  @override
  State<StatefulWidget> createState() => _PrimaryButtonState();
}

class _PrimaryButtonState extends State<PrimaryButton> {
  bool _isHovered = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered= true),
      onExit: (_) => setState(() => _isHovered = false),
      cursor: SystemMouseCursors.click,
      child: Material(
        color: Colors.transparent,
        child: InkWell(
        onTap: widget.onTap,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          padding: const EdgeInsets.symmetric(vertical: AppSpacing.sm, horizontal: AppSpacing.md),

          decoration: BoxDecoration(
            color: _isHovered
            ? AppColors.primary
            : AppColors.surface,

            borderRadius: BorderRadius.circular(AppRadius.md)
          ),
          child: Row(
              mainAxisSize: MainAxisSize.min,

            children: [

              Icon(
                widget.icon,
                color: _isHovered
                  ? AppColors.textPrimary
                  : AppColors.primary,
                ),

              SizedBox(width: AppSpacing.sm,),

              Text(
                widget.title,
                style: AppTextStyle.body.copyWith(
                  color: _isHovered
                  ? AppColors.textPrimary
                  : AppColors.primary,
                )
              ),
            ],
          ),
        ),
      ),
      )
    );
  }
}
