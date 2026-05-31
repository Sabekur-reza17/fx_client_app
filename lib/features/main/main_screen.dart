import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:fx_client_app/core/base_hook_consumer_widget.dart';
import 'package:fx_client_app/core/vm_provider.dart';

import 'main_event.dart';
import 'main_state.dart';
import 'main_view_model.dart';

@RoutePage()
class MainScreen extends BaseHookConsumerWidget<MainState, MainViewModel> {
  const MainScreen({super.key});

  @override
  Widget buildChild(
    BuildContext context,
    MainViewModel vm,
    MainState state,
    WidgetRef ref,
  ) {
    useEffect(() {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        vm.onEvent(LoadCourses());
      });
      return null;
    }, const []);

    useEffect(() {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (state.isNotificationPressed) {
          vm.onEvent(NavigationToNotification());
        }
      });
      return null;
    }, [state.isNotificationPressed]);

    return const AutoRouter();
  }

  @override
  NotifierProvider<MainViewModel, MainState> provider() => VmProvider.mainVMP;
}
