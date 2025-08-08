import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../theme/app_colors.dart';
import '../theme/app_typography.dart';
import '../theme/app_spacing.dart';

class AppTextField extends StatefulWidget {
  final String? label;
  final String? hint;
  final String? helperText;
  final String? errorText;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final bool obscureText;
  final bool enabled;
  final bool readOnly;
  final int? maxLines;
  final int? minLines;
  final int? maxLength;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final VoidCallback? onTap;
  final ValueChanged<String>? onChanged;
  final ValueChanged<String>? onSubmitted;
  final FormFieldValidator<String>? validator;
  final List<TextInputFormatter>? inputFormatters;
  final AppTextFieldSize size;
  final AppTextFieldType type;

  const AppTextField({
    super.key,
    this.label,
    this.hint,
    this.helperText,
    this.errorText,
    this.controller,
    this.keyboardType,
    this.textInputAction,
    this.obscureText = false,
    this.enabled = true,
    this.readOnly = false,
    this.maxLines = 1,
    this.minLines,
    this.maxLength,
    this.prefixIcon,
    this.suffixIcon,
    this.onTap,
    this.onChanged,
    this.onSubmitted,
    this.validator,
    this.inputFormatters,
    this.size = AppTextFieldSize.medium,
    this.type = AppTextFieldType.outlined,
  });

  @override
  State<AppTextField> createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  bool _obscureText = false;
  late FocusNode _focusNode;

  @override
  void initState() {
    super.initState();
    _obscureText = widget.obscureText;
    _focusNode = FocusNode();
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.label != null) ...[
          Text(widget.label!, style: AppTypography.titleSmall),
          SizedBox(height: AppSpacing.xs),
        ],
        _buildTextField(),
        if (widget.helperText != null) ...[
          SizedBox(height: AppSpacing.xs),
          Text(
            widget.helperText!,
            style: AppTypography.caption.copyWith(
              color: AppColors.textSecondary,
            ),
          ),
        ],
      ],
    );
  }

  Widget _buildTextField() {
    final decoration = _getInputDecoration();

    return TextFormField(
      controller: widget.controller,
      keyboardType: widget.keyboardType,
      textInputAction: widget.textInputAction,
      obscureText: _obscureText,
      enabled: widget.enabled,
      readOnly: widget.readOnly,
      maxLines: widget.maxLines,
      minLines: widget.minLines,
      maxLength: widget.maxLength,
      onTap: widget.onTap,
      onChanged: widget.onChanged,
      onFieldSubmitted: widget.onSubmitted,
      validator: widget.validator,
      inputFormatters: widget.inputFormatters,
      focusNode: _focusNode,
      style: _getTextStyle(),
      decoration: decoration,
    );
  }

  InputDecoration _getInputDecoration() {
    final baseDecoration = InputDecoration(
      hintText: widget.hint,
      prefixIcon: widget.prefixIcon,
      suffixIcon: _buildSuffixIcon(),
      errorText: widget.errorText,
      contentPadding: _getContentPadding(),
    );

    switch (widget.type) {
      case AppTextFieldType.outlined:
        return baseDecoration.copyWith(
          border: OutlineInputBorder(
            borderRadius: AppSpacing.borderRadiusMd,
            borderSide: const BorderSide(color: AppColors.border),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: AppSpacing.borderRadiusMd,
            borderSide: const BorderSide(color: AppColors.border),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: AppSpacing.borderRadiusMd,
            borderSide: const BorderSide(color: AppColors.primary, width: 2),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: AppSpacing.borderRadiusMd,
            borderSide: const BorderSide(color: AppColors.error),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: AppSpacing.borderRadiusMd,
            borderSide: const BorderSide(color: AppColors.error, width: 2),
          ),
        );
      case AppTextFieldType.filled:
        return baseDecoration.copyWith(
          filled: true,
          fillColor: AppColors.surfaceLight,
          border: OutlineInputBorder(
            borderRadius: AppSpacing.borderRadiusMd,
            borderSide: BorderSide.none,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: AppSpacing.borderRadiusMd,
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: AppSpacing.borderRadiusMd,
            borderSide: const BorderSide(color: AppColors.primary, width: 2),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: AppSpacing.borderRadiusMd,
            borderSide: const BorderSide(color: AppColors.error),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: AppSpacing.borderRadiusMd,
            borderSide: const BorderSide(color: AppColors.error, width: 2),
          ),
        );
      case AppTextFieldType.underline:
        return baseDecoration.copyWith(
          border: const UnderlineInputBorder(
            borderSide: BorderSide(color: AppColors.border),
          ),
          enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: AppColors.border),
          ),
          focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: AppColors.primary, width: 2),
          ),
          errorBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: AppColors.error),
          ),
          focusedErrorBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: AppColors.error, width: 2),
          ),
        );
    }
  }

  Widget? _buildSuffixIcon() {
    if (widget.obscureText) {
      return IconButton(
        icon: Icon(
          _obscureText ? Icons.visibility : Icons.visibility_off,
          color: AppColors.textSecondary,
        ),
        onPressed: () {
          setState(() {
            _obscureText = !_obscureText;
          });
        },
      );
    }

    return widget.suffixIcon;
  }

  EdgeInsets _getContentPadding() {
    switch (widget.size) {
      case AppTextFieldSize.small:
        return const EdgeInsets.symmetric(
          horizontal: AppSpacing.md,
          vertical: AppSpacing.sm,
        );
      case AppTextFieldSize.medium:
        return const EdgeInsets.symmetric(
          horizontal: AppSpacing.lg,
          vertical: AppSpacing.md,
        );
      case AppTextFieldSize.large:
        return const EdgeInsets.symmetric(
          horizontal: AppSpacing.xl,
          vertical: AppSpacing.lg,
        );
    }
  }

  TextStyle _getTextStyle() {
    switch (widget.size) {
      case AppTextFieldSize.small:
        return AppTypography.bodySmall;
      case AppTextFieldSize.medium:
        return AppTypography.bodyMedium;
      case AppTextFieldSize.large:
        return AppTypography.bodyLarge;
    }
  }
}

enum AppTextFieldSize { small, medium, large }

enum AppTextFieldType { outlined, filled, underline }

// Convenience text field widgets
class AppPasswordField extends StatelessWidget {
  final String? label;
  final String? hint;
  final String? helperText;
  final String? errorText;
  final TextEditingController? controller;
  final TextInputAction? textInputAction;
  final bool enabled;
  final ValueChanged<String>? onChanged;
  final ValueChanged<String>? onSubmitted;
  final FormFieldValidator<String>? validator;
  final AppTextFieldSize size;
  final AppTextFieldType type;

  const AppPasswordField({
    super.key,
    this.label,
    this.hint,
    this.helperText,
    this.errorText,
    this.controller,
    this.textInputAction,
    this.enabled = true,
    this.onChanged,
    this.onSubmitted,
    this.validator,
    this.size = AppTextFieldSize.medium,
    this.type = AppTextFieldType.outlined,
  });

  @override
  Widget build(BuildContext context) {
    return AppTextField(
      label: label,
      hint: hint,
      helperText: helperText,
      errorText: errorText,
      controller: controller,
      keyboardType: TextInputType.visiblePassword,
      textInputAction: textInputAction,
      obscureText: true,
      enabled: enabled,
      onChanged: onChanged,
      onSubmitted: onSubmitted,
      validator: validator,
      size: size,
      type: type,
    );
  }
}

class AppEmailField extends StatelessWidget {
  final String? label;
  final String? hint;
  final String? helperText;
  final String? errorText;
  final TextEditingController? controller;
  final TextInputAction? textInputAction;
  final bool enabled;
  final ValueChanged<String>? onChanged;
  final ValueChanged<String>? onSubmitted;
  final FormFieldValidator<String>? validator;
  final AppTextFieldSize size;
  final AppTextFieldType type;

  const AppEmailField({
    super.key,
    this.label,
    this.hint,
    this.helperText,
    this.errorText,
    this.controller,
    this.textInputAction,
    this.enabled = true,
    this.onChanged,
    this.onSubmitted,
    this.validator,
    this.size = AppTextFieldSize.medium,
    this.type = AppTextFieldType.outlined,
  });

  @override
  Widget build(BuildContext context) {
    return AppTextField(
      label: label,
      hint: hint,
      helperText: helperText,
      errorText: errorText,
      controller: controller,
      keyboardType: TextInputType.emailAddress,
      textInputAction: textInputAction,
      enabled: enabled,
      onChanged: onChanged,
      onSubmitted: onSubmitted,
      validator: validator,
      size: size,
      type: type,
    );
  }
}

class AppNumberField extends StatelessWidget {
  final String? label;
  final String? hint;
  final String? helperText;
  final String? errorText;
  final TextEditingController? controller;
  final TextInputAction? textInputAction;
  final bool enabled;
  final ValueChanged<String>? onChanged;
  final ValueChanged<String>? onSubmitted;
  final FormFieldValidator<String>? validator;
  final AppTextFieldSize size;
  final AppTextFieldType type;

  const AppNumberField({
    super.key,
    this.label,
    this.hint,
    this.helperText,
    this.errorText,
    this.controller,
    this.textInputAction,
    this.enabled = true,
    this.onChanged,
    this.onSubmitted,
    this.validator,
    this.size = AppTextFieldSize.medium,
    this.type = AppTextFieldType.outlined,
  });

  @override
  Widget build(BuildContext context) {
    return AppTextField(
      label: label,
      hint: hint,
      helperText: helperText,
      errorText: errorText,
      controller: controller,
      keyboardType: TextInputType.number,
      textInputAction: textInputAction,
      enabled: enabled,
      onChanged: onChanged,
      onSubmitted: onSubmitted,
      validator: validator,
      size: size,
      type: type,
    );
  }
}
