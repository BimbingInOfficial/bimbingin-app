import 'package:bimbingin_app/app/core/theme/app_colors.dart';
import 'package:bimbingin_app/app/core/theme/app_spacing.dart';
import 'package:bimbingin_app/app/core/theme/app_typography.dart';
import 'package:bimbingin_app/app/core/widgets/topbanner_homepage.dart';
import 'package:flutter/material.dart';

class GuruHomepageView extends StatelessWidget {
  const GuruHomepageView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const TopBanner(
            greeting: 'Halo Tenti! 👋',
            title: 'Gaya mengajar dominan\nAnda telah teridentifikasi!',
            subtitle: 'Yuk, optimalkan cara mengajar sesuai dengan gaya Anda',
            percent: 78,
            label: 'Expert',
          ),
          Padding(
            padding: EdgeInsets.all(AppSpacing.xl),
            child: Text(
              'Distribusi Gaya Mengajar',
              style: AppTypography.titleLarge.copyWith(
                color: AppColors.textPrimary,
              ),
            ),
          ),
          SizedBox(height: AppSpacing.xxxl),
          
        ],
      ),
    );
  }
}
