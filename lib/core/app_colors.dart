import 'package:flutter/material.dart';

/// Shared design tokens (Figma-aligned neutrals for profile and similar screens).
/// 2026-04-29
abstract final class AppColors {
  static const Color textPrimaryNeutral = Color(0xFF1F2937);
  static const Color textSecondaryNeutral = Color(0xFF5B6673);
  static const Color textTertiaryNeutral = Color(0xFF8A94A3);
  static const Color profileFieldFill = Color(0xFFFAFAFA);
  static const Color white = Color(0xFFFFFFFF);
  static const Color dragHandle = Color(0xFFD2D8DF);
  static const Color menuDividerLight = Color(0xFFE5E7EB);
  static const Color danger = Color(0xFFC9374F);
  static const Color primaryColor = Color(0xFFE54861);
  static const Color greenColor = Color(0xFF169F75);
  static const Color greenSuccessColor = Color(0xFF1FBF8F);
  static const Color white100 = Color(0xFFFAFAFA);
  static const Color blueColor = Color(0xFF1466E9);

  /// Edit-profile inputs (Figma borders).
  // 2026-04-29
  static const Color borderTertiary = Color(0xFFdee6ef);
  static const Color borderPrimaryLight = Color(0xFFf5f8fc);
  static const Color borderSecondary = Color(0xFFe9eef5);

  /// Modal scrim rgba(0,0,0,0.32) — same in light and dark.
  static final Color bottomSheetScrim =
  Colors.black.withValues(alpha: 0.32);

  static final primaryGradientLinear = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    colors: [
      Color(0xFFB2314D),
      Color(0xFFD8284B),
    ],
  );
}
