import 'package:flutter/material.dart';

import '../l10n/app_localizations.dart';
import 'localization_map.dart';


abstract class UiText {
  const UiText();
  String asString(BuildContext context);

  factory UiText.dynamic(String value) = DynamicString;
  factory UiText.localized(String key, [Map<String, Object> args]) =
      StringResource;
}

class DynamicString extends UiText {
  final String value;
  const DynamicString(this.value);
  @override
  String asString(BuildContext context) => value;
}

class StringResource extends UiText {
  final String key;
  final Map<String, Object> args;
  const StringResource(this.key, [this.args = const {}]);

  @override
  String asString(BuildContext context) {
    final loc = AppLocalizations.of(context)!;
    final getter = localizationMap[key];
    if (getter != null) return getter(loc, args);
    return key; // fallback if key not found
  }
}