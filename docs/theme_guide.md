# Bimbingin App - Theme Guide

## 📋 Overview

Sistem theme Bimbingin App dirancang dengan pendekatan yang konsisten dan scalable untuk memastikan UI/UX yang seragam di seluruh aplikasi.

## 🎨 Color System

### Primary Colors
- `AppColors.primary` - Warna utama aplikasi (#1E88E5)
- `AppColors.primaryLight` - Varian terang (#42A5F5)
- `AppColors.primaryDark` - Varian gelap (#1565C0)

### Accent Colors
- `AppColors.accent` - Warna aksen (#FFC107)
- `AppColors.accentLight` - Varian terang (#FFD54F)
- `AppColors.accentDark` - Varian gelap (#FF8F00)

### Background Colors
- `AppColors.background` - Background utama (#FFFFFF)
- `AppColors.surface` - Surface cards (#F5F7FA)
- `AppColors.surfaceLight` - Surface terang (#FAFBFC)
- `AppColors.surfaceDark` - Surface gelap (#E8EAED)

### Text Colors
- `AppColors.textPrimary` - Teks utama (#212121)
- `AppColors.textSecondary` - Teks sekunder (#757575)
- `AppColors.textTertiary` - Teks tersier (#9E9E9E)
- `AppColors.textInverse` - Teks terbalik (#FFFFFF)

### Status Colors
- `AppColors.success` - Sukses (#4CAF50)
- `AppColors.error` - Error (#F44336)
- `AppColors.warning` - Warning (#FF9800)
- `AppColors.info` - Info (#2196F3)

## 📝 Typography System

### Font Family
Menggunakan **Inter** dari Google Fonts untuk konsistensi dan keterbacaan yang baik.

### Text Styles
```dart
// Display Styles
AppTypography.displayLarge    // 32px, Bold
AppTypography.displayMedium   // 28px, Bold
AppTypography.displaySmall    // 24px, Bold

// Headline Styles
AppTypography.headlineLarge   // 22px, Bold
AppTypography.headlineMedium  // 20px, SemiBold
AppTypography.headlineSmall   // 18px, SemiBold

// Title Styles
AppTypography.titleLarge      // 16px, SemiBold
AppTypography.titleMedium     // 16px, Medium
AppTypography.titleSmall      // 14px, Medium

// Body Styles
AppTypography.bodyLarge       // 16px, Regular
AppTypography.bodyMedium      // 14px, Regular
AppTypography.bodySmall       // 12px, Regular

// Label Styles
AppTypography.labelLarge      // 14px, Medium
AppTypography.labelMedium     // 12px, Medium
AppTypography.labelSmall      // 10px, Medium

// Button Styles
AppTypography.buttonLarge     // 16px, SemiBold
AppTypography.buttonMedium    // 14px, SemiBold
AppTypography.buttonSmall     // 12px, SemiBold

// Caption Styles
AppTypography.caption         // 12px, Regular
AppTypography.overline        // 10px, Medium, Letter Spacing
```

## 📏 Spacing System

### Base Unit
Sistem spacing menggunakan base unit 4px untuk konsistensi.

### Spacing Values
```dart
AppSpacing.xs    // 4px
AppSpacing.sm    // 8px
AppSpacing.md    // 12px
AppSpacing.lg    // 16px
AppSpacing.xl    // 24px
AppSpacing.xxl   // 32px
AppSpacing.xxxl  // 48px
```

### Padding & Margin
```dart
// All sides
AppSpacing.paddingXs, AppSpacing.marginXs
AppSpacing.paddingSm, AppSpacing.marginSm
AppSpacing.paddingMd, AppSpacing.marginMd
AppSpacing.paddingLg, AppSpacing.marginLg
AppSpacing.paddingXl, AppSpacing.marginXl
AppSpacing.paddingXxl, AppSpacing.marginXxl

// Horizontal only
AppSpacing.paddingHXs, AppSpacing.paddingHSm
AppSpacing.paddingHMd, AppSpacing.paddingHLg
AppSpacing.paddingHXl, AppSpacing.paddingHXxl

// Vertical only
AppSpacing.paddingVXs, AppSpacing.paddingVSm
AppSpacing.paddingVMd, AppSpacing.paddingVLg
AppSpacing.paddingVXl, AppSpacing.paddingVXxl
```

### Border Radius
```dart
AppSpacing.radiusXs      // 4px
AppSpacing.radiusSm      // 6px
AppSpacing.radiusMd      // 8px
AppSpacing.radiusLg      // 12px
AppSpacing.radiusXl      // 16px
AppSpacing.radiusXxl     // 24px
AppSpacing.radiusCircular // 50px
```

## 🎯 Component System

### Buttons
```dart
// Primary Button
AppPrimaryButton(
  text: 'Button Text',
  onPressed: () {},
  size: AppButtonSize.medium,
  isLoading: false,
  icon: Icon(Icons.arrow_forward),
  isFullWidth: true,
)

// Secondary Button
AppSecondaryButton(
  text: 'Button Text',
  onPressed: () {},
)

// Text Button
AppTextButton(
  text: 'Button Text',
  onPressed: () {},
)
```

### Text Fields
```dart
// Basic Text Field
AppTextField(
  label: 'Label',
  hint: 'Hint text',
  helperText: 'Helper text',
  onChanged: (value) {},
)

// Password Field
AppPasswordField(
  label: 'Password',
  hint: 'Enter password',
)

// Email Field
AppEmailField(
  label: 'Email',
  hint: 'Enter email',
)

// Number Field
AppNumberField(
  label: 'Age',
  hint: 'Enter age',
)
```

## 🎨 Theme Usage

### Applying Theme
```dart
// In main.dart
GetMaterialApp(
  theme: AppTheme.lightTheme,
  // ...
)
```

### Using Colors
```dart
Container(
  color: AppColors.primary,
  child: Text('Text', style: TextStyle(color: AppColors.textInverse)),
)
```

### Using Typography
```dart
Text(
  'Heading',
  style: AppTypography.headlineLarge,
)
```

### Using Spacing
```dart
Container(
  padding: AppSpacing.paddingLg,
  margin: AppSpacing.marginMd,
  child: Text('Content'),
)
```

## 🔧 Customization

### Adding New Colors
```dart
// In app_colors.dart
class AppColors {
  // Add new color
  static const Color newColor = Color(0xFF123456);
}
```

### Adding New Text Styles
```dart
// In app_typography.dart
class AppTypography {
  // Add new text style
  static TextStyle get customStyle => GoogleFonts.inter(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    color: AppColors.textPrimary,
  );
}
```

### Adding New Spacing
```dart
// In app_spacing.dart
class AppSpacing {
  // Add new spacing
  static const double customSpacing = _baseUnit * 5; // 20px
}
```

## 📱 Responsive Design

### Breakpoints
```dart
AppSpacing.breakpointSm  // 600px
AppSpacing.breakpointMd  // 900px
AppSpacing.breakpointLg  // 1200px
AppSpacing.breakpointXl  // 1600px
```

### Usage Example
```dart
LayoutBuilder(
  builder: (context, constraints) {
    if (constraints.maxWidth >= AppSpacing.breakpointMd) {
      return DesktopLayout();
    } else {
      return MobileLayout();
    }
  },
)
```

## 🎯 Best Practices

1. **Konsistensi**: Selalu gunakan komponen dari theme system
2. **Semantic Colors**: Gunakan warna sesuai maknanya (success, error, dll)
3. **Typography Hierarchy**: Gunakan text style yang sesuai dengan hierarki
4. **Spacing Consistency**: Gunakan spacing values yang konsisten
5. **Responsive**: Pertimbangkan responsive design untuk berbagai ukuran layar

## 🔄 Future Enhancements

- [ ] Dark theme implementation
- [ ] Custom animation curves
- [ ] Advanced responsive utilities
- [ ] Theme switching functionality
- [ ] Accessibility improvements

---

**Note**: Theme system ini dirancang untuk mendukung kebutuhan aplikasi Bimbingin App dengan fokus pada pendidikan dan pembelajaran yang user-friendly.
