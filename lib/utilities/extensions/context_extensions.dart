import 'package:flutter/material.dart';

import '../../core/app_themes.dart';
import '../../l10n/app_localizations.dart';

extension ContextExtensions on BuildContext {
  AppLocalizations get locale => AppLocalizations.of(this)!;

  ThemeData get theme => Theme.of(this);

  ColorScheme get colorScheme => theme.colorScheme;

  TextTheme get textTheme => theme.textTheme;

  /// Profile / neutral UI tokens from [AppThemes] + [ProfilePalette].
  // 2026-04-29
  ProfilePalette get profilePalette =>
      theme.extension<ProfilePalette>() ??
      (colorScheme.brightness == Brightness.dark
          ? ProfilePalette.dark(colorScheme)
          : ProfilePalette.light);

  bool get isDark => colorScheme.brightness == Brightness.dark;
}
