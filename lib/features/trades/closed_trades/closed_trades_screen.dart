import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:fx_client_app/core/base_hook_consumer_widget.dart';
import 'package:fx_client_app/core/vm_provider.dart';
import 'package:fx_client_app/domain/models/trade.dart';

import 'closed_trades_event.dart';
import 'closed_trades_state.dart';
import 'closed_trades_view_model.dart';

@RoutePage()
class ClosedTradesScreen
    extends BaseHookConsumerWidget<ClosedTradesState, ClosedTradesViewModel> {
  const ClosedTradesScreen({super.key});

  @override
  NotifierProvider<ClosedTradesViewModel, ClosedTradesState> provider() =>
      VmProvider.closedTradesVMP;

  @override
  Widget buildChild(
    BuildContext context,
    ClosedTradesViewModel vm,
    ClosedTradesState state,
    WidgetRef ref,
  ) {
    return Scaffold(
      appBar: AppBar(title: const Text('Trade History')),
      body: RefreshIndicator(
        onRefresh: () async => vm.onEvent(LoadClosedTrades()),
        child: _buildBody(context, state),
      ),
    );
  }

  Widget _buildBody(BuildContext context, ClosedTradesState state) {
    if (state.isLoading && state.trades.isEmpty) {
      return const Center(child: CircularProgressIndicator());
    }

    if (state.error != null && state.trades.isEmpty) {
      return Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            state.error!,
            style: TextStyle(color: Theme.of(context).colorScheme.error),
            textAlign: TextAlign.center,
          ),
        ),
      );
    }

    if (state.trades.isEmpty) {
      return const Center(child: Text('No closed trades found in the last 30 days.'));
    }

    return ListView.builder(
      padding: const EdgeInsets.all(12),
      itemCount: state.trades.length,
      itemBuilder: (context, index) {
        final trade = state.trades[index];
        return _TradeCard(trade: trade);
      },
    );
  }
}

class _TradeCard extends StatelessWidget {
  const _TradeCard({required this.trade});

  final Trade trade;

  @override
  Widget build(BuildContext context) {
    final isBuy = trade.cmd == 0;
    final typeText = isBuy ? 'BUY' : 'SELL';
    final typeColor = isBuy ? Colors.green : Colors.red;

    return Card(
      margin: const EdgeInsets.symmetric(vertical: 6),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  trade.symbol,
                  style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                Text(
                  '#${trade.ticket}',
                  style: const TextStyle(color: Colors.grey, fontSize: 12),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                  decoration: BoxDecoration(
                    color: typeColor.withValues(alpha: 0.1),
                    borderRadius: BorderRadius.circular(4),
                    border: Border.all(color: typeColor.withValues(alpha: 0.5)),
                  ),
                  child: Text(
                    typeText,
                    style: TextStyle(color: typeColor, fontWeight: FontWeight.bold, fontSize: 12),
                  ),
                ),
                const SizedBox(width: 8),
                Text('Vol: ${trade.volume}'),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Open: ${trade.openPrice}', style: const TextStyle(fontSize: 12)),
                    Text('Close: ${trade.closePrice}', style: const TextStyle(fontSize: 12)),
                  ],
                ),
                Text(
                  'Profit: ${trade.profit > 0 ? '+' : ''}${trade.profit}',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: trade.profit > 0 ? Colors.green : (trade.profit < 0 ? Colors.red : null),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
