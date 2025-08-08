# Bimbingin App

Aplikasi mobile berbasis Flutter untuk asisten pembelajaran dengan AI untuk guru dan siswa.

## 📱 Tentang Aplikasi

Bimbingin App adalah aplikasi yang membantu guru dan siswa memahami gaya belajar dan mengajar melalui asesmen berbasis model **Grasha-Riechmann** dengan integrasi AI untuk memberikan rekomendasi personal.

## 🎨 Theme System

Aplikasi menggunakan sistem theme yang konsisten dan scalable dengan komponen-komponen berikut:

### 🎯 Fitur Theme
- **Color System**: Sistem warna yang terstruktur dengan primary, accent, dan semantic colors
- **Typography**: Menggunakan font Inter dari Google Fonts dengan hierarki yang jelas
- **Spacing**: Sistem spacing yang konsisten dengan base unit 4px
- **Components**: Custom widgets untuk button, text field, dan komponen lainnya

### 📁 Struktur Theme
```
lib/app/core/
├── theme/
│   ├── app_colors.dart      # Definisi warna
│   ├── app_typography.dart  # Definisi typography
│   ├── app_spacing.dart     # Definisi spacing
│   ├── app_theme.dart       # Theme configuration
│   └── theme.dart           # Theme exports
├── widgets/
│   ├── app_button.dart      # Custom button widgets
│   ├── app_text_field.dart  # Custom text field widgets
│   └── widgets.dart         # Widget exports
└── core.dart                # Core exports
```

### 🚀 Quick Start

1. **Install Dependencies**
   ```bash
   flutter pub get
   ```

2. **Run Application**
   ```bash
   flutter run
   ```

3. **View Theme Demo**
   - Buka aplikasi untuk melihat demo theme system
   - Demo mencakup typography, buttons, text fields, dan color system

## 🛠️ Tech Stack

- **Framework**: Flutter
- **State Management**: GetX
- **Backend**: Firebase (akan diimplementasikan)
- **AI Integration**: GPT API + K-means Clustering (akan diimplementasikan)
- **Font**: Google Fonts (Inter)

## 📋 Fitur Utama (Berdasarkan PRD)

### ✅ Sudah Diimplementasikan
- [x] Theme system yang konsisten
- [x] Custom widgets (buttons, text fields)
- [x] Typography system
- [x] Color system
- [x] Spacing system

### 🔄 Akan Diimplementasikan
- [ ] Firebase Authentication
- [ ] Asesmen Grasha-Riechmann
- [ ] AI Chatbot Integration
- [ ] Dashboard Guru & Siswa
- [ ] Riwayat Asesmen
- [ ] AI Analytics

## 🎨 Theme Usage Examples

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

### Using Buttons
```dart
AppPrimaryButton(
  text: 'Login',
  onPressed: () {},
  isLoading: false,
)
```

### Using Text Fields
```dart
AppTextField(
  label: 'Email',
  hint: 'Enter your email',
  onChanged: (value) {},
)
```

## 📚 Dokumentasi

- [Theme Guide](docs/theme_guide.md) - Panduan lengkap penggunaan theme system
- [PRD](docs/prd.md) - Product Requirements Document

## 🔧 Development

### Project Structure
```
bimbingin_app/
├── lib/
│   ├── app/
│   │   ├── core/           # Theme & widgets
│   │   ├── modules/        # Feature modules
│   │   └── routes/         # App routing
│   └── main.dart
├── docs/                   # Documentation
└── pubspec.yaml
```

### Adding New Components
1. Buat widget di `lib/app/core/widgets/`
2. Export di `lib/app/core/widgets/widgets.dart`
3. Gunakan di modules

### Customizing Theme
1. Edit file di `lib/app/core/theme/`
2. Lihat dokumentasi di `docs/theme_guide.md`

## 🤝 Contributing

1. Fork repository
2. Buat feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit changes (`git commit -m 'Add some AmazingFeature'`)
4. Push ke branch (`git push origin feature/AmazingFeature`)
5. Buat Pull Request

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

**Bimbingin App** - Asisten Pembelajaran dengan AI untuk Guru dan Siswa
