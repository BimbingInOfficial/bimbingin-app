import 'dart:math' as math;
import 'package:flutter/material.dart';
import '../theme/app_spacing.dart';
import '../theme/app_typography.dart';

/// Mini circular statistic with 4 fixed dashes (top, right, bottom, left)
/// The colored ring is NOT tied to percent; percent shown as text only.
class MiniCircularStat extends StatelessWidget {
  final Color color;
  final double percent; // 0..100
  final String label;
  final double size;
  final double strokeWidth;
  final double segmentSweepRadians; // length of each dash (in radians)

  const MiniCircularStat({
    super.key,
    required this.color,
    required this.percent,
    required this.label,
    this.size = 65,
    this.strokeWidth = 8,
    this.segmentSweepRadians = 0.95, // ≈54° per dash, adjust to taste
  }) : assert(percent >= 0 && percent <= 100, 'percent must be 0..100');

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          width: size,
          height: size,
          child: Stack(
            alignment: Alignment.center,
            children: [
              CustomPaint(
                size: Size(size, size),
                painter: _FourDashRingPainter(
                  color: color,
                  trackColor: const Color(0xFFE9EDF5), // soft gray like design
                  strokeWidth: strokeWidth,
                  dashSweep: segmentSweepRadians,
                ),
              ),
              Text(
                '${percent.toStringAsFixed(0)}%',
                style: AppTypography.titleMedium.copyWith(
                  color: const Color(0xFF1F2340), // dark navy-ish
                  fontWeight: FontWeight.w800,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: AppSpacing.sm),
        SizedBox(
          width: size + 12,
          child: Text(
            label,
            textAlign: TextAlign.center,
            style: AppTypography.labelLarge.copyWith(color: Colors.black54),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}

class _FourDashRingPainter extends CustomPainter {
  final Color color;
  final Color trackColor;
  final double strokeWidth;
  final double dashSweep;

  _FourDashRingPainter({
    required this.color,
    required this.trackColor,
    required this.strokeWidth,
    required this.dashSweep,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final radius = (size.width - strokeWidth) / 2;

    final trackPaint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth
      ..strokeCap = StrokeCap.round
      ..color = trackColor;

    final dashPaint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth
      ..strokeCap = StrokeCap.round
      ..color = color;

    // background ring
    canvas.drawCircle(center, radius, trackPaint);

    final rect = Rect.fromCircle(center: center, radius: radius);

    // Center angles for top, right, bottom, left
    const angles = [-math.pi / 2, 0.0, math.pi / 2, math.pi];
    for (final angle in angles) {
      final start = angle - dashSweep / 2; // center each dash on the axis
      canvas.drawArc(rect, start, dashSweep, false, dashPaint);
    }
  }

  @override
  bool shouldRepaint(covariant _FourDashRingPainter oldDelegate) =>
      oldDelegate.color != color ||
      oldDelegate.trackColor != trackColor ||
      oldDelegate.strokeWidth != strokeWidth ||
      oldDelegate.dashSweep != dashSweep;
}
