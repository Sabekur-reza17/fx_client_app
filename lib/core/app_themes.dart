
import 'package:flutter/material.dart';

import 'app_colors.dart';

/// Profile / neutral surfaces resolved per brightness; read via [ThemeExtension].
/// 2026-04-29
@immutable
class ProfilePalette extends ThemeExtension<ProfilePalette> {
  const ProfilePalette({
    required this.scaffoldBackground,
    required this.valuePrimary,
    required this.labelSecondary,
    required this.labelTertiary,
    required this.fieldTileBackground,
    required this.iconChipBackground,
    required this.bottomSheetSurface,
    required this.dragHandle,
    required this.menuDivider,
    required this.danger,
  });

  final Color scaffoldBackground;
  final Color valuePrimary;
  final Color labelSecondary;
  final Color labelTertiary;
  final Color fieldTileBackground;
  final Color iconChipBackground;
  final Color bottomSheetSurface;
  final Color dragHandle;
  final Color menuDivider;
  final Color danger;

  /// Figma light neutrals.
  static const ProfilePalette light = ProfilePalette(
    scaffoldBackground: AppColors.white,
    valuePrimary: AppColors.textPrimaryNeutral,
    labelSecondary: AppColors.textSecondaryNeutral,
    labelTertiary: AppColors.textTertiaryNeutral,
    fieldTileBackground: AppColors.profileFieldFill,
    iconChipBackground: AppColors.white,
    bottomSheetSurface: AppColors.white,
    dragHandle: AppColors.dragHandle,
    menuDivider: AppColors.menuDividerLight,
    danger: AppColors.danger,
  );

  /// Dark mode: derive from [ColorScheme] for consistency with [AppThemes.darkTheme].
  // 2026-04-29
  factory ProfilePalette.dark(ColorScheme scheme) {
    return ProfilePalette(
      scaffoldBackground: scheme.surface,
      valuePrimary: scheme.onSurface,
      labelSecondary: scheme.onSurfaceVariant,
      labelTertiary: scheme.outline,
      fieldTileBackground: scheme.surfaceContainerHighest,
      iconChipBackground: scheme.surfaceContainerHigh,
      bottomSheetSurface: scheme.surfaceContainerHigh,
      dragHandle: scheme.outlineVariant,
      menuDivider: scheme.outline.withValues(alpha: 0.3),
      danger: AppColors.danger,
    );
  }

  @override
  ProfilePalette copyWith({
    Color? scaffoldBackground,
    Color? valuePrimary,
    Color? labelSecondary,
    Color? labelTertiary,
    Color? fieldTileBackground,
    Color? iconChipBackground,
    Color? bottomSheetSurface,
    Color? dragHandle,
    Color? menuDivider,
    Color? danger,
  }) {
    return ProfilePalette(
      scaffoldBackground: scaffoldBackground ?? this.scaffoldBackground,
      valuePrimary: valuePrimary ?? this.valuePrimary,
      labelSecondary: labelSecondary ?? this.labelSecondary,
      labelTertiary: labelTertiary ?? this.labelTertiary,
      fieldTileBackground: fieldTileBackground ?? this.fieldTileBackground,
      iconChipBackground: iconChipBackground ?? this.iconChipBackground,
      bottomSheetSurface: bottomSheetSurface ?? this.bottomSheetSurface,
      dragHandle: dragHandle ?? this.dragHandle,
      menuDivider: menuDivider ?? this.menuDivider,
      danger: danger ?? this.danger,
    );
  }

  @override
  ThemeExtension<ProfilePalette> lerp(
      covariant ThemeExtension<ProfilePalette>? other,
      double t,
      ) {
    if (other is! ProfilePalette) return this;
    return ProfilePalette(
      scaffoldBackground:
      Color.lerp(scaffoldBackground, other.scaffoldBackground, t)!,
      valuePrimary: Color.lerp(valuePrimary, other.valuePrimary, t)!,
      labelSecondary: Color.lerp(labelSecondary, other.labelSecondary, t)!,
      labelTertiary: Color.lerp(labelTertiary, other.labelTertiary, t)!,
      fieldTileBackground:
      Color.lerp(fieldTileBackground, other.fieldTileBackground, t)!,
      iconChipBackground:
      Color.lerp(iconChipBackground, other.iconChipBackground, t)!,
      bottomSheetSurface:
      Color.lerp(bottomSheetSurface, other.bottomSheetSurface, t)!,
      dragHandle: Color.lerp(dragHandle, other.dragHandle, t)!,
      menuDivider: Color.lerp(menuDivider, other.menuDivider, t)!,
      danger: Color.lerp(danger, other.danger, t)!,
    );
  }
}

class AppThemes {
  static ThemeData lightTheme = () {
    // final colorScheme = ColorScheme.fromSeed(
    //   seedColor: _lightSeed,
    //   primary: AppColors.primaryColor,
    //   brightness: Brightness.light,
    // );
    final colorScheme = ColorScheme.light(
      primary: Color(0xFFE54861),
      secondary: Color(0xFFFFEDEF),
      surface: Color(0xFFFFFFFF),
    );
    return ThemeData(
      useMaterial3: true,
      colorScheme: colorScheme,
      brightness: Brightness.light,
      extensions: const <ThemeExtension<dynamic>>[ProfilePalette.light],
    );
  }();

  static ThemeData darkTheme = () {
    // final colorScheme = ColorScheme.fromSeed(
    //   seedColor: _darkSeed,
    //   primary: AppColors.primaryColor,
    //   brightness: Brightness.dark,
    // );
    final colorScheme = ColorScheme.dark(
      primary: Color(0xFFB2314D),
      secondary: Color(0xFFFF8FA3),
      surface: Color(0xFF121212),
    );
    return ThemeData(
      useMaterial3: true,
      colorScheme: colorScheme,
      brightness: Brightness.dark,
      extensions: <ThemeExtension<dynamic>>[ProfilePalette.dark(colorScheme)],
    );
  }();
}
