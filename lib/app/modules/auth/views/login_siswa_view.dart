import 'package:flutter/material.dart';
import 'package:bimbingin_app/app/core/core.dart';

class LoginSiswaView extends StatelessWidget {
  const LoginSiswaView({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final double heroHeight = size.height * 0.42;
    const double overlap = 60; // jarak card naik ke area hero

    return Scaffold(
      backgroundColor: AppColors.background,
      body: SingleChildScrollView(
        child: Column(
          children: [
            // HERO SECTION
            SizedBox(
              width: double.infinity,
              height: heroHeight,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Image.asset(
                    'assets/images/hero_login.png',
                    fit: BoxFit.cover,
                  ),
                  Container(color: AppColors.primary.withOpacity(0.70)),
                  // Logo di bagian atas tengah
                  Positioned(
                    top: 80,
                    left: 0,
                    right: 0,
                    child: Center(
                      child: Image.asset(
                        'assets/images/logo_putih.png',
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  // Heading & subheading kiri bawah
                  Positioned(
                    left: 24,
                    right: 24,
                    bottom: 100,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Selamat datang di BimbingIn 👋',
                          style: AppTypography.headlineLarge.copyWith(
                            color: AppColors.textInverse,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'Masuk dan temukan cara belajar terbaikmu!',
                          style: AppTypography.bodyMedium.copyWith(
                            color: AppColors.textInverse.withOpacity(0.90),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // CARD LOGIN (naik ke area hero)
            Transform.translate(
              offset: const Offset(0, -overlap),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 16, 20, 32),
                child: _LoginCard(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _LoginCard extends StatefulWidget {
  const _LoginCard({super.key});

  @override
  State<_LoginCard> createState() => _LoginCardState();
}

class _LoginCardState extends State<_LoginCard> {
  bool _acceptTerms = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: double.infinity,
          padding: const EdgeInsets.fromLTRB(20, 28, 20, 56),
          decoration: BoxDecoration(
            color: AppColors.background,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.06),
                blurRadius: 16,
                offset: const Offset(0, 8),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  'Masuk',
                  style: AppTypography.headlineMedium.copyWith(
                    color: AppColors.textPrimary,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              const SizedBox(height: 24),

              // Email / Username
              AppTextField(
                hint: 'Email atau username',
                prefixIcon: const Icon(
                  Icons.person_outline,
                  color: AppColors.textTertiary,
                ),
              ),
              const SizedBox(height: 16),

              // Password
              const _PasswordField(),
              const SizedBox(height: 8),

              // Checkbox + Lupa Sandi
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Checkbox(
                    value: _acceptTerms,
                    onChanged: (value) {
                      setState(() {
                        _acceptTerms = value ?? false;
                      });
                    },
                    activeColor: AppColors.primary,
                  ),
                  Expanded(
                    child: Text(
                      'Saya menyetujui Ketentuan Layanan dan Kebijakan Privasi',
                      style: AppTypography.bodySmall.copyWith(
                        color: AppColors.textPrimary,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const SizedBox(width: 8),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Lupa Sandi?',
                      style: AppTypography.bodySmall.copyWith(
                        color: AppColors.textTertiary,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),

        // Tombol bulat mengambang di bawah card
        Positioned(
          bottom: -28,
          left: 0,
          right: 0,
          child: Center(child: _RoundActionButton(onPressed: () {})),
        ),
      ],
    );
  }
}

class _PasswordField extends StatefulWidget {
  const _PasswordField();

  @override
  State<_PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<_PasswordField> {
  bool _obscure = true;

  @override
  Widget build(BuildContext context) {
    return AppTextField(
      hint: 'Password',
      obscureText: _obscure,
      prefixIcon: const Icon(Icons.lock_outline, color: AppColors.textTertiary),
      suffixIcon: IconButton(
        icon: Icon(
          _obscure ? Icons.visibility : Icons.visibility_off,
          color: AppColors.textSecondary,
        ),
        onPressed: () => setState(() => _obscure = !_obscure),
      ),
    );
  }
}

class _RoundActionButton extends StatelessWidget {
  final VoidCallback onPressed;
  const _RoundActionButton({required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 8,
      shape: const CircleBorder(),
      shadowColor: AppColors.shadow,
      child: InkWell(
        onTap: onPressed,
        customBorder: const CircleBorder(),
        child: Ink(
          width: 64,
          height: 64,
          decoration: const BoxDecoration(
            color: AppColors.primary,
            shape: BoxShape.circle,
          ),
          child: const Center(
            child: Icon(Icons.arrow_forward, color: Colors.white, size: 28),
          ),
        ),
      ),
    );
  }
}
