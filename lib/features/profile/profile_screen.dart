import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:fx_client_app/core/base_hook_consumer_widget.dart';
import 'package:fx_client_app/core/vm_provider.dart';
import 'package:fx_client_app/utilities/extensions/context_extensions.dart';


import 'profile_event.dart';
import 'profile_state.dart';
import 'profile_view_model.dart';

@RoutePage()
class ProfileScreen
    extends BaseHookConsumerWidget<ProfileState, ProfileViewModel> {
  const ProfileScreen({super.key});

  @override
  NotifierProvider<ProfileViewModel, ProfileState> provider() =>
      VmProvider.profileVMP;

  @override
  Widget buildChild(
    BuildContext context,
    ProfileViewModel vm,
    ProfileState state,
    WidgetRef ref,
  ) {
    final p = state.profile;

    return Scaffold(
      appBar: AppBar(title: Text(context.locale.myClass)),
      body: RefreshIndicator(
        onRefresh: () async => vm.onEvent(RetryLoadProfile()),
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            if (state.isLoading) const LinearProgressIndicator(),
            if (state.error != null)
              Padding(
                padding: const EdgeInsets.only(top: 12),
                child: Text(
                  state.error!.asString(context),
                  style: TextStyle(color: Theme.of(context).colorScheme.error),
                ),
              ),
            const SizedBox(height: 12),
            if (p == null && !state.isLoading)
              const Text('No profile loaded. Pull to refresh.'),
            if (p != null) ...[
              _card('Name', p.name),
              _card('Phone', p.maskedPhone),
              _card('Country', p.country),
              _card('City', p.city),
              _card('Address', p.address),
              _card('Leverage', p.leverage.toString()),
              _card('Balance', p.balance.toStringAsFixed(2)),
              _card('Equity', p.equity.toStringAsFixed(2)),
              _card('Free margin', p.freeMargin.toStringAsFixed(2)),
              _card('Swap free', p.isSwapFree ? 'Yes' : 'No'),
              _card('Verification level', p.verificationLevel.toString()),

            ],
          ],
        ),
      ),
    );
  }

  Widget _card(String title, String value) {
    return Card(
      child: ListTile(
        title: Text(title),
        subtitle: Text(value.isEmpty ? '-' : value),
      ),
    );
  }
}

