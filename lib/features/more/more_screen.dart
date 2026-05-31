import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:fx_client_app/core/app_router.gr.dart';
import 'package:fx_client_app/core/base_hook_consumer_widget.dart';
import 'package:fx_client_app/core/vm_provider.dart';

import 'more_event.dart';
import 'more_state.dart';
import 'more_view_model.dart';

@RoutePage()
class MoreScreen extends BaseHookConsumerWidget<MoreState, MoreViewModel> {
  const MoreScreen({super.key});

  @override
  NotifierProvider<MoreViewModel, MoreState> provider() => VmProvider.moreVMP;

  @override
  Widget buildChild(BuildContext context, MoreViewModel vm, MoreState state, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: const Text('Settings & More')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 16),
            Card(
              child: Column(
                children: [
                  ListTile(
                    leading: const Icon(Icons.show_chart),
                    title: const Text('Open Trades'),
                    trailing: const Icon(Icons.chevron_right),
                    onTap: () => context.router.push(const OpenTradesRoute()),
                  ),
                  const Divider(height: 1),
                  ListTile(
                    leading: const Icon(Icons.history),
                    title: const Text('Trade History'),
                    trailing: const Icon(Icons.chevron_right),
                    onTap: () => context.router.push(const ClosedTradesRoute()),
                  ),
                  const Divider(height: 1),
                  ListTile(
                    leading: const Icon(Icons.lock_outline),
                    title: const Text('Update Password'),
                    trailing: const Icon(Icons.chevron_right),
                    onTap: () => context.router.push(const UpdatePasswordRoute()),
                  ),
                ],
              ),
            ),
            const Spacer(),
            FilledButton.icon(
              icon: state.isLoading 
                  ? const SizedBox(width: 20, height: 20, child: CircularProgressIndicator(color: Colors.white, strokeWidth: 2))
                  : const Icon(Icons.logout),
              onPressed: state.isLoading 
                  ? null
                  : () async {
                      vm.onEvent(LogoutEvent());
                      if (!context.mounted) return;
                      context.router.replaceAll([const LoginRoute()]);
                    },
              label: const Text('Logout'),
              style: FilledButton.styleFrom(
                backgroundColor: Theme.of(context).colorScheme.error,
                foregroundColor: Theme.of(context).colorScheme.onError,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
