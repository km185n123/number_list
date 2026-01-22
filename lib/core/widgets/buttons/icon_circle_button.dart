import 'package:flutter/material.dart';
import '../../theme/app_colors.dart';

class IconCircleButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;

  const IconCircleButton({
    super.key,
    required this.icon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: Icon(icon, size: 30, color: AppColors.primary),
      style: IconButton.styleFrom(
        backgroundColor: AppColors.primary.withValues(alpha: 0.12),
        shape: const CircleBorder(),
      ),
    );
  }
}
