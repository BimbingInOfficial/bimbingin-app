import 'package:flutter/material.dart';
import '../theme/app_colors.dart';
import '../theme/app_spacing.dart';
import '../theme/app_typography.dart';

class JoinRoomButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String label;
  final bool dense;

  const JoinRoomButton({
    super.key,
    required this.onPressed,
    this.label = 'Gabung ke ruangan',
    this.dense = false,
  });

  @override
  Widget build(BuildContext context) {
    final vPad = dense ? AppSpacing.sm : AppSpacing.md;
    final hPad = dense ? AppSpacing.md : AppSpacing.lg;

    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primaryDark, 
        foregroundColor: Colors.white,
        padding: EdgeInsets.symmetric(vertical: vPad, horizontal: hPad),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        elevation: 0,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(Icons.group_add_rounded, size: 20),
          const SizedBox(width: AppSpacing.sm),
          Text(
            label,
            style: AppTypography.labelLarge.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
