import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../theme/app_colors.dart';
import '../theme/app_spacing.dart';
import '../theme/app_typography.dart';
import 'circular_score.dart';

class TopBanner extends StatelessWidget {
  final String greeting; // e.g., "Halo Tenti! 👋"
  final String title;    // e.g., "Gaya mengajar dominan..."
  final String subtitle; // e.g., "Yuk, optimalkan..."
  final double percent;  // 0..100
  final String label;    // e.g., "Expert"
  final double curveHeight; // depth of the bottom arc

  const TopBanner({
    super.key,
    required this.greeting,
    required this.title,
    required this.subtitle,
    required this.percent,
    required this.label,
    this.curveHeight = 30,
  });

  @override
  Widget build(BuildContext context) {
    final topInset = MediaQuery.of(context).padding.top; 

    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light, // status bar icons light on blue bg
      child: ClipPath(
        clipper: _BottomArcClipper(curveHeight: curveHeight),
        child: Container(
          width: double.infinity,
          color: AppColors.primary,
          padding: EdgeInsets.fromLTRB(
            AppSpacing.xl,
            topInset + AppSpacing.xl,
            AppSpacing.xl,
            AppSpacing.xxl + curveHeight / 2, 
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                greeting,
                style: AppTypography.labelLarge.copyWith(
                  color: Colors.white.withOpacity(0.9),
                ),
              ),
              SizedBox(height: AppSpacing.sm),
              Text(
                title,
                style: AppTypography.headlineMedium.copyWith(
                  color: Colors.white,
                  height: 1.2,
                ),
              ),
              SizedBox(height: AppSpacing.sm),
              Text(
                subtitle,
                style: AppTypography.bodyMedium.copyWith(
                  color: Colors.white.withOpacity(0.9),
                ),
              ),
              SizedBox(height: AppSpacing.xl),
              Center(
                child: CircularScore(
                  percent: percent,
                  label: label,
                  size: 200,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _BottomArcClipper extends CustomClipper<Path> {
  final double curveHeight;
  _BottomArcClipper({required this.curveHeight});

  @override
  Path getClip(Size size) {
    final w = size.width;
    final h = size.height;
    final ch = curveHeight.clamp(0, 200); // avoid extreme

    final path = Path()
      ..lineTo(0, h - ch)
      ..quadraticBezierTo(w / 2, h + ch, w, h - ch)
      ..lineTo(w, 0)
      ..close();
    return path;
  }

  @override
  bool shouldReclip(covariant _BottomArcClipper oldClipper) =>
      oldClipper.curveHeight != curveHeight;
}

class _BottomCurveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0, size.height - 40);
    path.quadraticBezierTo(
      size.width / 2, size.height + 40,
      size.width, size.height - 40,
    );
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
