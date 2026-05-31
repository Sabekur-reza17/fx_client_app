import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:fx_client_app/core/base_hook_consumer_widget.dart';
import 'package:fx_client_app/core/vm_provider.dart';
import 'package:url_launcher/url_launcher.dart';

import 'home_event.dart';
import 'home_state.dart';
import 'home_view_model.dart';

@RoutePage()
class HomeScreen extends BaseHookConsumerWidget<HomeState, HomeViewModel> {
  const HomeScreen({super.key});

  @override
  NotifierProvider<HomeViewModel, HomeState> provider() => VmProvider.homeVMP;

  @override
  Widget buildChild(BuildContext context, HomeViewModel vm, HomeState state, WidgetRef ref) {
    final s = state.stats;

    return Scaffold(
      appBar: AppBar(title: const Text('Dashboard')),
      body: RefreshIndicator(
        onRefresh: () async => vm.onEvent(RetryLoadStats()),
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            if (state.isLoading) const LinearProgressIndicator(),
            if (state.error != null)
              Padding(
                padding: const EdgeInsets.only(top: 12),
                child: Text(
                  state.error!,
                  style: TextStyle(color: Theme.of(context).colorScheme.error),
                ),
              ),
            const SizedBox(height: 12),
            if (s == null && !state.isLoading)
              const Center(child: Text('No dashboard data. Pull to refresh.')),
            if (s != null) ...[
              _buildMainCard(context, 'Balance', '\$${s.balance.toStringAsFixed(2)}', Icons.account_balance_wallet),
              Row(
                children: [
                  Expanded(child: _buildMetricCard(context, 'Equity', '\$${s.equity.toStringAsFixed(2)}')),
                  const SizedBox(width: 12),
                  Expanded(child: _buildMetricCard(context, 'Free Margin', '\$${s.freeMargin.toStringAsFixed(2)}')),
                ],
              ),
              const SizedBox(height: 12),
              _buildMainCard(context, 'Total Trades', '${s.totalTradesCount} (Vol: ${s.totalTradesVolume})', Icons.bar_chart),
              Row(
                children: [
                  Expanded(child: _buildMetricCard(context, 'Current Trades', '${s.currentTradesCount}')),
                  const SizedBox(width: 12),
                  Expanded(child: _buildMetricCard(context, 'Current Volume', '${s.currentTradesVolume}')),
                ],
              ),
              const SizedBox(height: 24),
              if (s.depositLink.isNotEmpty)
                ElevatedButton.icon(
                  icon: const Icon(Icons.download),
                  label: const Text('Deposit Funds'),
                  onPressed: () => launchUrl(Uri.parse(s.depositLink)),
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                  ),
                ),
              const SizedBox(height: 12),
              if (s.withdrawalLink.isNotEmpty)
                OutlinedButton.icon(
                  icon: const Icon(Icons.upload),
                  label: const Text('Withdraw Funds'),
                  onPressed: () => launchUrl(Uri.parse(s.withdrawalLink)),
                  style: OutlinedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                  ),
                ),
            ],
          ],
        ),
      ),
    );
  }

  Widget _buildMainCard(BuildContext context, String title, String value, IconData icon) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.only(bottom: 12),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      color: Theme.of(context).colorScheme.primaryContainer,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          children: [
            Icon(icon, size: 40, color: Theme.of(context).colorScheme.primary),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 14,
                      color: Theme.of(context).colorScheme.onPrimaryContainer.withValues(alpha: 0.8),
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    value,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.onPrimaryContainer,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMetricCard(BuildContext context, String title, String value) {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.only(bottom: 12),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 8),
            Text(
              value,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
