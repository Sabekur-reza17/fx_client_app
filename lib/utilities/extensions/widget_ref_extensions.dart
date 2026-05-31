import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

extension WidgetRefExtensions on WidgetRef {
  Widget provideChild<S, VM extends Notifier<S>>(
      NotifierProvider<VM, S> provider, {
        required Widget child,
      }) {
    listen(provider, (previous, next) {
      // next.resetEffects();
    });
    return child;
  }
}