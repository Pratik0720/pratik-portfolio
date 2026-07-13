import 'package:flutter/material.dart';
import 'package:portfolio/core/theme/app_text_styles.dart';

import '../../../core/theme/app_spacing.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_radius.dart';

class SocialButton extends StatefulWidget {
  final IconData icon;
  final String title;
  final VoidCallback onTap;

  const SocialButton({
    super.key,
    required this.onTap,
    required this.title,
    required this.icon,
  });

  @override
  State<StatefulWidget> createState() => _SocialButtonState();
}

class _SocialButtonState extends State<SocialButton> {

  bool _isHovered = false;
  

  @override
  Widget build(BuildContext context) {
    final foregroundColor = _isHovered ? Colors.white : AppColors.textPrimary;

    
    return MouseRegion(
      onEnter: (_) => setState(()=> _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      cursor: SystemMouseCursors.click,
      child: Material(
        borderRadius: BorderRadius.circular(AppRadius.lg),
        color: Colors.transparent,
        child: InkWell(
          onTap: widget.onTap,
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            padding: const EdgeInsets.symmetric(vertical: AppSpacing.sm, horizontal: AppSpacing.md),
            decoration: BoxDecoration(
            color: _isHovered
            ? AppColors.primary
            : Colors.transparent,

            borderRadius: BorderRadius.circular(AppRadius.lg)
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              
              Icon(
                widget.icon,
                color: foregroundColor,
              ),

              const SizedBox(width: AppSpacing.xs,),

              Text(
                widget.title,
                style: AppTextStyle.body.copyWith(
                  fontWeight: _isHovered 
                  ? FontWeight.w700
                  : FontWeight.w400,
                  color: foregroundColor
                ),
              )
            ],
          ),
          ),
        ),
      ),  
    );

  }
}
