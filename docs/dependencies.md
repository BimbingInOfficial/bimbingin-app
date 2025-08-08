# Bimbingin App - Dependencies Guide

## 📦 Dependencies yang Diinstall

### **Core Dependencies**

#### **State Management**
- `get: ^4.7.2` - State management dan routing

#### **Typography**
- `google_fonts: ^6.1.0` - Font Inter dari Google Fonts

### **Firebase Dependencies**

#### **Core Firebase**
- `firebase_core: ^2.24.2` - Firebase initialization
- `firebase_auth: ^4.15.3` - User authentication
- `cloud_firestore: ^4.13.6` - NoSQL database
- `firebase_storage: ^11.5.6` - File storage

### **HTTP & API Dependencies**

#### **HTTP Client**
- `http: ^1.1.0` - HTTP requests untuk API calls
- `dio: ^5.4.0` - Advanced HTTP client dengan interceptors

#### **JSON Handling**
- `json_annotation: ^4.8.1` - JSON serialization annotations

### **UI/UX Dependencies**

#### **Loading & Progress**
- `flutter_spinkit: ^5.2.0` - Loading animations

#### **Image Handling**
- `cached_network_image: ^3.3.0` - Cached network images

#### **Charts & Analytics**
- `fl_chart: ^0.65.0` - Charts untuk dashboard analytics

#### **Animations**
- `lottie: ^2.7.0` - Lottie animations

#### **Icons**
- `font_awesome_flutter: ^10.6.0` - Font Awesome icons

### **Form & Input Dependencies**

#### **Form Validation**
- `form_builder_validators: ^11.1.2` - Form validation

#### **Date & File Picker**
- `flutter_datetime_picker_plus: ^2.1.0` - Date picker
- `file_picker: ^6.1.1` - File picker

### **Storage & Utilities**

#### **Local Storage**
- `shared_preferences: ^2.2.2` - Local key-value storage

#### **Device & System**
- `permission_handler: ^11.1.0` - Permission handling
- `device_info_plus: ^9.1.1` - Device information
- `connectivity_plus: ^5.0.2` - Network connectivity

### **Development Dependencies**

#### **Code Generation**
- `build_runner: ^2.4.7` - Code generation
- `json_serializable: ^6.7.1` - JSON serialization

#### **Testing**
- `mockito: ^5.4.4` - Mocking untuk testing

## 🎯 **Penggunaan Berdasarkan PRD**

### **1. Authentication & User Management**
```dart
// Firebase Auth untuk login/register
import 'package:firebase_auth/firebase_auth.dart';

// Shared Preferences untuk local storage
import 'package:shared_preferences/shared_preferences.dart';
```

### **2. Database & Storage**
```dart
// Firestore untuk data asesmen
import 'package:cloud_firestore/cloud_firestore.dart';

// Firebase Storage untuk file upload
import 'package:firebase_storage/firebase_storage.dart';
```

### **3. API Integration**
```dart
// HTTP untuk AI API calls
import 'package:http/http.dart' as http;

// Dio untuk advanced API handling
import 'package:dio/dio.dart';
```

### **4. UI Components**
```dart
// Loading animations
import 'package:flutter_spinkit/flutter_spinkit.dart';

// Charts untuk dashboard
import 'package:fl_chart/fl_chart.dart';

// Lottie animations
import 'package:lottie/lottie.dart';
```

### **5. Form Handling**
```dart
// Form validation
import 'package:form_builder_validators/form_builder_validators.dart';

// Date picker
import 'package:flutter_datetime_picker_plus/flutter_datetime_picker_plus.dart';

// File picker
import 'package:file_picker/file_picker.dart';
```

## 📋 **Implementasi Berdasarkan Fitur PRD**

### **Asesmen Grasha-Riechmann**
- **Form Validation**: `form_builder_validators`
- **Data Storage**: `cloud_firestore`
- **User Management**: `firebase_auth`

### **AI Chatbot Integration**
- **HTTP Client**: `http`, `dio`
- **Local Storage**: `shared_preferences`
- **Loading States**: `flutter_spinkit`

### **Dashboard Analytics**
- **Charts**: `fl_chart`
- **Data Fetching**: `cloud_firestore`
- **Caching**: `cached_network_image`

### **File Management**
- **File Upload**: `firebase_storage`
- **File Picker**: `file_picker`
- **Permissions**: `permission_handler`

## 🔧 **Setup Instructions**

### **1. Firebase Setup**
```bash
# Install Firebase CLI
npm install -g firebase-tools

# Login to Firebase
firebase login

# Initialize Firebase
firebase init
```

### **2. Platform Configuration**

#### **Android (android/app/build.gradle)**
```gradle
android {
    compileSdkVersion 34
    
    defaultConfig {
        minSdkVersion 21
        targetSdkVersion 34
    }
}
```

#### **iOS (ios/Podfile)**
```ruby
platform :ios, '12.0'
```

### **3. Permissions**

#### **Android (android/app/src/main/AndroidManifest.xml)**
```xml
<uses-permission android:name="android.permission.INTERNET" />
<uses-permission android:name="android.permission.READ_EXTERNAL_STORAGE" />
<uses-permission android:name="android.permission.WRITE_EXTERNAL_STORAGE" />
```

#### **iOS (ios/Runner/Info.plist)**
```xml
<key>NSPhotoLibraryUsageDescription</key>
<string>This app needs access to photo library for file uploads</string>
```

## 🚀 **Next Steps**

### **Phase 1: Core Setup**
1. ✅ Dependencies installed
2. 🔄 Firebase configuration
3. 🔄 Authentication setup
4. 🔄 Basic routing

### **Phase 2: Features Implementation**
1. 🔄 Asesmen module
2. 🔄 AI integration
3. 🔄 Dashboard implementation
4. 🔄 File management

### **Phase 3: Enhancement**
1. 🔄 Analytics & charts
2. 🔄 Advanced animations
3. 🔄 Offline support
4. 🔄 Performance optimization

## 📚 **Useful Commands**

```bash
# Install dependencies
flutter pub get

# Run code generation
flutter packages pub run build_runner build

# Clean and rebuild
flutter clean && flutter pub get

# Check for outdated packages
flutter pub outdated

# Upgrade packages
flutter pub upgrade
```

## ⚠️ **Known Issues**

1. **file_picker warnings**: Tidak mempengaruhi fungsionalitas
2. **Version conflicts**: Sudah diselesaikan dengan upgrade form_builder_validators
3. **Platform-specific setup**: Perlu konfigurasi manual untuk permissions

---

**Note**: Semua dependencies dipilih berdasarkan kebutuhan PRD dan best practices untuk Flutter development.
