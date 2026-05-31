
import 'package:flutter/material.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../utilities/extensions/widget_ref_extensions.dart';




abstract class BaseHookConsumerWidget<S, VM extends Notifier<S>>
    extends HookConsumerWidget {
  const BaseHookConsumerWidget({super.key});

  VM _viewModels(
      WidgetRef ref, NotifierProvider<VM, S> provider) {
    return ref.read(provider.notifier);
  }

  SVM sharedViewModel<STATE, SVM extends Notifier<STATE>>(
      WidgetRef ref,
      NotifierProvider<SVM, STATE> provider,
      ) {
    return ref.read(provider.notifier);
  }

  S _viewModelStates(
      WidgetRef ref, NotifierProvider<VM, S> provider) {
    return ref.watch(provider);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final mProvider = provider();
    final vm = _viewModels(ref, mProvider);
    final state = _viewModelStates(ref, mProvider);
    return ref.provideChild(
      mProvider,
      child: buildChild(context, vm, state, ref),
    );
  }


  Widget buildChild(BuildContext context, VM vm, S state, WidgetRef ref);

  NotifierProvider<VM, S> provider();
}