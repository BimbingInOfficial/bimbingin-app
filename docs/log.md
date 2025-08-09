# Changelog Proyek (Sesi Ini)

## Theme System
- Menambahkan design system lengkap:
  - `lib/app/core/theme/app_colors.dart`
  - `lib/app/core/theme/app_typography.dart`
  - `lib/app/core/theme/app_spacing.dart`
  - `lib/app/core/theme/app_theme.dart`
  - `lib/app/core/theme/theme.dart` (export)
- Konfigurasi `ThemeData` menyeluruh (AppBar, Buttons, Inputs, Chips, FAB, Divider, Dialog, Snackbar, BottomSheet, Tooltip, Slider, Radio, Checkbox, Switch, ProgressIndicator, BottomNavigationBar).
- Perbaikan deprecation:
  - `onBackground` → dihapus, gunakan `onSurface`.
  - `background` pada `ColorScheme` → gunakan `surface`.
  - Gunakan tipe `CardThemeData` dan `DialogThemeData` yang sesuai API terbaru.

## Core & Widgets
- Menambahkan widget umum:
  - `lib/app/core/widgets/app_button.dart` (Primary/Secondary/Text + loading + size)
  - `lib/app/core/widgets/app_text_field.dart` (outlined/filled/underline + password/email/number)
  - `lib/app/core/widgets/widgets.dart` (export)
- Menambahkan `lib/app/core/core.dart` untuk single import (`theme` + `widgets`).

## Routing & Entry
- Update `lib/main.dart`:
  - Set `title: "Bimbingin App"`, `debugShowCheckedModeBanner: false`.
  - Terapkan `theme: AppTheme.lightTheme`.
- Routing tetap via `AppPages` (GetX).

## Home Demo
- Rombak `lib/app/modules/home/views/home_view.dart` untuk demo design system (typography, buttons, text fields, color chips).

## Dependencies
- Tambah paket pada `pubspec.yaml` (ringkas):
  - UI/Style: `google_fonts`, `lottie`, `fl_chart`, `cached_network_image`, `flutter_spinkit`.
  - GetX: `get`.
  - Firebase: `firebase_core`, `firebase_auth`, `cloud_firestore`, `firebase_storage`.
  - Network: `http`, `dio`.
  - Utilities: `shared_preferences`, `permission_handler`, `device_info_plus`, `connectivity_plus`.
  - Form: `form_builder_validators` (upgrade ke `^11.1.2` untuk kompatibilitas `intl`).
  - Dev: `build_runner`, `json_serializable`, `mockito`.
- Jalankan `flutter pub get` dan selesaikan konflik versi `form_builder_validators` dengan upgrade.

## Dokumentasi
- Menambah dokumentasi:
  - `docs/theme_guide.md` (panduan design system).
  - `docs/dependencies.md` (panduan dependencies & setup).
- Update `README.md` (tech stack, theme usage, dependencies guide).

## Auth - Login Screen
- Menambahkan `lib/app/modules/auth/views/login_view.dart`:
  - Hero image + overlay warna primer.
  - Logo di bagian atas, heading & subheading.
  - Card login rounded dengan shadow; input email/username & password.
  - Checkbox persetujuan + link "Lupa Sandi?".
  - Tombol aksi bulat mengambang di bawah card.
- Layout overlap card ke area hero:
  - Implementasi akhir: `SingleChildScrollView` + `Transform.translate(offset: Offset(0, -overlap))` untuk stabilitas tampilan.
- Interaksi checkbox:
  - Ubah `_LoginCard` menjadi `StatefulWidget`.
  - Tambah state `_acceptTerms` dan toggle di `onChanged`.

## Lain-lain
- Konsolidasi import ke `core.dart` pada beberapa file.
- Penyesuaian kecil styling (radius, shadow, padding) agar konsisten dengan design system.
