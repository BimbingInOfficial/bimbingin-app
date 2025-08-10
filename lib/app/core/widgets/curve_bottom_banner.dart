import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/// Clipper untuk membuat lengkung di bagian bawah container.
class BottomArcClipper extends CustomClipper<Path> {
  final double curveHeight;
  const BottomArcClipper({required this.curveHeight});

  @override
  Path getClip(Size size) {
    final w = size.width;
    final h = size.height;
    final ch = curveHeight.clamp(0, 200).toDouble(); // aman dari nilai ekstrem

    return Path()
      ..lineTo(0, h - ch)
      ..quadraticBezierTo(w / 2, h + ch, w, h - ch)
      ..lineTo(w, 0)
      ..close();
  }

  @override
  bool shouldReclip(covariant BottomArcClipper old) =>
      old.curveHeight != curveHeight;
}

/// Wrapper banner dengan bottom curve. Bisa pakai color atau gradient.
class CurvedBottomBanner extends StatelessWidget {
  final Widget child;
  final double curveHeight;
  final EdgeInsetsGeometry padding;
  final bool includeSafeTopPadding;
  final Color? color;
  final Gradient? gradient;
  final SystemUiOverlayStyle? overlayStyle;

  const CurvedBottomBanner({
    super.key,
    required this.child,
    this.curveHeight = 30,
    this.padding = const EdgeInsets.all(16),
    this.includeSafeTopPadding = true,
    this.color,
    this.gradient,
    this.overlayStyle,
  });

  @override
  Widget build(BuildContext context) {
    final safeTop = includeSafeTopPadding
        ? MediaQuery.of(context).padding.top
        : 0.0;

    final content = Container(
      width: double.infinity,
      padding: padding.add(
        EdgeInsets.only(top: safeTop),
      ), // Hanya tambahkan safeTop jika includeSafeTopPadding true
      decoration: BoxDecoration(color: color, gradient: gradient),
      child: child,
    );

    final clipped = ClipPath(
      clipper: BottomArcClipper(curveHeight: curveHeight),
      child: content,
    );

    return overlayStyle != null
        ? AnnotatedRegion<SystemUiOverlayStyle>(
            value: overlayStyle!,
            child: clipped,
          )
        : clipped;
  }
}
