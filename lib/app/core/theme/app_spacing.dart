import 'package:flutter/material.dart';

class AppSpacing {
  // Base spacing unit
  static const double _baseUnit = 4.0;

  // Spacing values
  static const double xs = _baseUnit; // 4
  static const double sm = _baseUnit * 2; // 8
  static const double md = _baseUnit * 3; // 12
  static const double lg = _baseUnit * 4; // 16
  static const double xl = _baseUnit * 6; // 24
  static const double xxl = _baseUnit * 8; // 32
  static const double xxxl = _baseUnit * 12; // 48

  // Padding values
  static const EdgeInsets paddingXs = EdgeInsets.all(xs);
  static const EdgeInsets paddingSm = EdgeInsets.all(sm);
  static const EdgeInsets paddingMd = EdgeInsets.all(md);
  static const EdgeInsets paddingLg = EdgeInsets.all(lg);
  static const EdgeInsets paddingXl = EdgeInsets.all(xl);
  static const EdgeInsets paddingXxl = EdgeInsets.all(xxl);

  // Horizontal padding
  static const EdgeInsets paddingHXs = EdgeInsets.symmetric(horizontal: xs);
  static const EdgeInsets paddingHSm = EdgeInsets.symmetric(horizontal: sm);
  static const EdgeInsets paddingHMd = EdgeInsets.symmetric(horizontal: md);
  static const EdgeInsets paddingHLg = EdgeInsets.symmetric(horizontal: lg);
  static const EdgeInsets paddingHXl = EdgeInsets.symmetric(horizontal: xl);
  static const EdgeInsets paddingHXxl = EdgeInsets.symmetric(horizontal: xxl);

  // Vertical padding
  static const EdgeInsets paddingVXs = EdgeInsets.symmetric(vertical: xs);
  static const EdgeInsets paddingVSm = EdgeInsets.symmetric(vertical: sm);
  static const EdgeInsets paddingVMd = EdgeInsets.symmetric(vertical: md);
  static const EdgeInsets paddingVLg = EdgeInsets.symmetric(vertical: lg);
  static const EdgeInsets paddingVXl = EdgeInsets.symmetric(vertical: xl);
  static const EdgeInsets paddingVXxl = EdgeInsets.symmetric(vertical: xxl);

  // Margin values
  static const EdgeInsets marginXs = EdgeInsets.all(xs);
  static const EdgeInsets marginSm = EdgeInsets.all(sm);
  static const EdgeInsets marginMd = EdgeInsets.all(md);
  static const EdgeInsets marginLg = EdgeInsets.all(lg);
  static const EdgeInsets marginXl = EdgeInsets.all(xl);
  static const EdgeInsets marginXxl = EdgeInsets.all(xxl);

  // Border radius values
  static const double radiusXs = _baseUnit; // 4
  static const double radiusSm = _baseUnit * 1.5; // 6
  static const double radiusMd = _baseUnit * 2; // 8
  static const double radiusLg = _baseUnit * 3; // 12
  static const double radiusXl = _baseUnit * 4; // 16
  static const double radiusXxl = _baseUnit * 6; // 24
  static const double radiusCircular = 50; // For circular shapes

  // Border radius objects
  static const BorderRadius borderRadiusXs = BorderRadius.all(
    Radius.circular(radiusXs),
  );
  static const BorderRadius borderRadiusSm = BorderRadius.all(
    Radius.circular(radiusSm),
  );
  static const BorderRadius borderRadiusMd = BorderRadius.all(
    Radius.circular(radiusMd),
  );
  static const BorderRadius borderRadiusLg = BorderRadius.all(
    Radius.circular(radiusLg),
  );
  static const BorderRadius borderRadiusXl = BorderRadius.all(
    Radius.circular(radiusXl),
  );
  static const BorderRadius borderRadiusXxl = BorderRadius.all(
    Radius.circular(radiusXxl),
  );
  static const BorderRadius borderRadiusCircular = BorderRadius.all(
    Radius.circular(radiusCircular),
  );

  // Icon sizes
  static const double iconSizeXs = _baseUnit * 3; // 12
  static const double iconSizeSm = _baseUnit * 4; // 16
  static const double iconSizeMd = _baseUnit * 5; // 20
  static const double iconSizeLg = _baseUnit * 6; // 24
  static const double iconSizeXl = _baseUnit * 8; // 32
  static const double iconSizeXxl = _baseUnit * 10; // 40

  // Button heights
  static const double buttonHeightSm = _baseUnit * 8; // 32
  static const double buttonHeightMd = _baseUnit * 10; // 40
  static const double buttonHeightLg = _baseUnit * 12; // 48
  static const double buttonHeightXl = _baseUnit * 14; // 56

  // Input field heights
  static const double inputHeightSm = _baseUnit * 8; // 32
  static const double inputHeightMd = _baseUnit * 10; // 40
  static const double inputHeightLg = _baseUnit * 12; // 48

  // Card dimensions
  static const double cardElevation = 2.0;
  static const double cardElevationHover = 4.0;

  // App bar height
  static const double appBarHeight = _baseUnit * 14; // 56

  // Bottom navigation bar height
  static const double bottomNavHeight = _baseUnit * 14; // 56

  // Floating action button size
  static const double fabSize = _baseUnit * 14; // 56

  // Divider thickness
  static const double dividerThickness = 1.0;

  // Shadow blur radius
  static const double shadowBlurRadius = 4.0;
  static const double shadowBlurRadiusLg = 8.0;

  // Animation durations
  static const Duration animationDurationFast = Duration(milliseconds: 150);
  static const Duration animationDurationNormal = Duration(milliseconds: 300);
  static const Duration animationDurationSlow = Duration(milliseconds: 500);

  // Screen breakpoints (for responsive design)
  static const double breakpointSm = 600;
  static const double breakpointMd = 900;
  static const double breakpointLg = 1200;
  static const double breakpointXl = 1600;
}
