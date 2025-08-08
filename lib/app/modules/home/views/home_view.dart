import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/home_controller.dart';
import '../../../core/core.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Bimbingin App'), centerTitle: true),
      body: SingleChildScrollView(
        padding: AppSpacing.paddingLg,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header Section
            Text(
              'Selamat Datang di Bimbingin App',
              style: AppTypography.headlineLarge,
            ),
            SizedBox(height: AppSpacing.sm),
            Text(
              'Asisten Pembelajaran dengan AI untuk Guru dan Siswa',
              style: AppTypography.bodyMedium,
            ),
            SizedBox(height: AppSpacing.xl),

            // Theme Demo Section
            _buildThemeDemoSection(),
            SizedBox(height: AppSpacing.xl),

            // Button Demo Section
            _buildButtonDemoSection(),
            SizedBox(height: AppSpacing.xl),

            // Text Field Demo Section
            _buildTextFieldDemoSection(),
            SizedBox(height: AppSpacing.xl),

            // Color Demo Section
            _buildColorDemoSection(),
          ],
        ),
      ),
    );
  }

  Widget _buildThemeDemoSection() {
    return Card(
      child: Padding(
        padding: AppSpacing.paddingLg,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Typography Demo', style: AppTypography.titleLarge),
            SizedBox(height: AppSpacing.md),
            Text(
              'Display Large - Heading Utama',
              style: AppTypography.displayLarge,
            ),
            SizedBox(height: AppSpacing.sm),
            Text(
              'Headline Medium - Sub Heading',
              style: AppTypography.headlineMedium,
            ),
            SizedBox(height: AppSpacing.sm),
            Text('Title Large - Judul Bagian', style: AppTypography.titleLarge),
            SizedBox(height: AppSpacing.sm),
            Text(
              'Body Medium - Teks konten utama aplikasi',
              style: AppTypography.bodyMedium,
            ),
            SizedBox(height: AppSpacing.sm),
            Text(
              'Caption - Teks kecil untuk informasi tambahan',
              style: AppTypography.caption,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildButtonDemoSection() {
    return Card(
      child: Padding(
        padding: AppSpacing.paddingLg,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Button Demo', style: AppTypography.titleLarge),
            SizedBox(height: AppSpacing.md),

            // Primary Buttons
            AppPrimaryButton(
              text: 'Primary Button',
              onPressed: () => Get.snackbar('Info', 'Primary button tapped!'),
            ),
            SizedBox(height: AppSpacing.sm),

            AppPrimaryButton(
              text: 'Primary Button with Icon',
              onPressed: () =>
                  Get.snackbar('Info', 'Primary button with icon tapped!'),
              icon: const Icon(Icons.arrow_forward, size: 16),
            ),
            SizedBox(height: AppSpacing.sm),

            AppPrimaryButton(
              text: 'Loading Button',
              onPressed: () {},
              isLoading: true,
            ),
            SizedBox(height: AppSpacing.md),

            // Secondary Buttons
            AppSecondaryButton(
              text: 'Secondary Button',
              onPressed: () => Get.snackbar('Info', 'Secondary button tapped!'),
            ),
            SizedBox(height: AppSpacing.sm),

            AppTextButton(
              text: 'Text Button',
              onPressed: () => Get.snackbar('Info', 'Text button tapped!'),
            ),
            SizedBox(height: AppSpacing.sm),

            // Small Button
            AppPrimaryButton(
              text: 'Small Button',
              onPressed: () => Get.snackbar('Info', 'Small button tapped!'),
              size: AppButtonSize.small,
              isFullWidth: false,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTextFieldDemoSection() {
    return Card(
      child: Padding(
        padding: AppSpacing.paddingLg,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Text Field Demo', style: AppTypography.titleLarge),
            SizedBox(height: AppSpacing.md),

            AppTextField(
              label: 'Email',
              hint: 'Masukkan email Anda',
              helperText: 'Email akan digunakan untuk login',
            ),
            SizedBox(height: AppSpacing.md),

            AppPasswordField(label: 'Password', hint: 'Masukkan password Anda'),
            SizedBox(height: AppSpacing.md),

            AppNumberField(label: 'Umur', hint: 'Masukkan umur Anda'),
            SizedBox(height: AppSpacing.md),

            AppTextField(
              label: 'Deskripsi',
              hint: 'Masukkan deskripsi',
              maxLines: 3,
              type: AppTextFieldType.filled,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildColorDemoSection() {
    return Card(
      child: Padding(
        padding: AppSpacing.paddingLg,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Color Demo', style: AppTypography.titleLarge),
            SizedBox(height: AppSpacing.md),

            Wrap(
              spacing: AppSpacing.sm,
              runSpacing: AppSpacing.sm,
              children: [
                _buildColorChip('Primary', AppColors.primary),
                _buildColorChip('Primary Light', AppColors.primaryLight),
                _buildColorChip('Primary Dark', AppColors.primaryDark),
                _buildColorChip('Accent', AppColors.accent),
                _buildColorChip('Success', AppColors.success),
                _buildColorChip('Error', AppColors.error),
                _buildColorChip('Warning', AppColors.warning),
                _buildColorChip('Info', AppColors.info),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildColorChip(String label, Color color) {
    return Container(
      padding: AppSpacing.paddingSm,
      decoration: BoxDecoration(
        color: color,
        borderRadius: AppSpacing.borderRadiusMd,
      ),
      child: Text(
        label,
        style: AppTypography.bodySmall.copyWith(
          color: AppColors.textInverse,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
