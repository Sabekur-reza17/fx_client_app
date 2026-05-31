import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:fx_client_app/core/base_hook_consumer_widget.dart';
import 'package:fx_client_app/core/vm_provider.dart';
import 'package:intl/intl.dart';

import 'signals_archive_event.dart';
import 'signals_archive_state.dart';
import 'signals_archive_view_model.dart';

@RoutePage()
class SignalsArchiveScreen extends BaseHookConsumerWidget<SignalsArchiveState, SignalsArchiveViewModel> {
  const SignalsArchiveScreen({super.key});

  @override
  NotifierProvider<SignalsArchiveViewModel, SignalsArchiveState> provider() => VmProvider.signalsArchiveVMP;

  final allPairs = const [
    'EURUSD', 'GBPUSD', 'USDJPY', 'USDCHF', 'USDCAD', 'AUDUSD', 'NZDUSD'
  ];

  @override
  Widget buildChild(BuildContext context, SignalsArchiveViewModel vm, SignalsArchiveState state, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: const Text('Signals Archive')),
      body: Column(
        children: [
          _buildFilters(context, vm, state),
          const Divider(height: 1),
          Expanded(
            child: RefreshIndicator(
              onRefresh: () async => vm.onEvent(RetryLoadSignals()),
              child: state.isLoading && state.signals.isEmpty
                  ? const Center(child: CircularProgressIndicator())
                  : state.error != null && state.signals.isEmpty
                      ? Center(child: Text(state.error!))
                      : state.signals.isEmpty
                          ? const Center(child: Text('No signals found for this period.'))
                          : ListView.builder(
                              padding: const EdgeInsets.all(16),
                              itemCount: state.signals.length,
                              itemBuilder: (context, index) {
                                final signal = state.signals[index];
                                return Card(
                                  margin: const EdgeInsets.only(bottom: 12),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12),
                                    side: BorderSide(
                                      color: signal.profit >= 0 ? Colors.green.shade200 : Colors.red.shade200,
                                      width: 1,
                                    )
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(16.0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              signal.symbol,
                                              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                                            ),
                                            Text(
                                              'Action: ${signal.action == 0 ? "BUY" : signal.action == 1 ? "SELL" : signal.action}',
                                              style: TextStyle(
                                                color: signal.action == 0 ? Colors.green : Colors.red,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(height: 8),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text("Price: ${signal.price}"),
                                            Text('Vol: ${signal.volume}'),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text('SL: ${signal.stopLoss}'),
                                            Text('TP: ${signal.takeProfit}'),
                                          ],
                                        ),
                                        const SizedBox(height: 8),
                                        Align(
                                          alignment: Alignment.centerRight,
                                          child: Text(
                                            'Profit: ${signal.profit}',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: signal.profit >= 0 ? Colors.green : Colors.red,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              },
                            ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFilters(BuildContext context, SignalsArchiveViewModel vm, SignalsArchiveState state) {
    return Container(
      color: Theme.of(context).colorScheme.surface,
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: allPairs.map((pair) {
                final isSelected = state.selectedPairs.contains(pair);
                return Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: FilterChip(
                    label: Text(pair),
                    selected: isSelected,
                    onSelected: (selected) {
                      final newPairs = List<String>.from(state.selectedPairs);
                      if (selected) {
                        newPairs.add(pair);
                      } else {
                        newPairs.remove(pair);
                      }
                      if (newPairs.isNotEmpty) {
                         vm.onEvent(UpdateFilter(selectedPairs: newPairs));
                      }
                    },
                  ),
                );
              }).toList(),
            ),
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              Expanded(
                child: OutlinedButton(
                  onPressed: () async {
                    final picked = await showDatePicker(
                      context: context,
                      initialDate: state.startDate ?? DateTime.now(),
                      firstDate: DateTime(2000),
                      lastDate: state.endDate ?? DateTime.now(),
                    );
                    if (picked != null) {
                      vm.onEvent(UpdateFilter(startDate: picked));
                    }
                  },
                  child: Text(
                    state.startDate != null
                        ? DateFormat.yMMMd().format(state.startDate!)
                        : 'Start Date',
                  ),
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: OutlinedButton(
                  onPressed: () async {
                    final picked = await showDatePicker(
                      context: context,
                      initialDate: state.endDate ?? DateTime.now(),
                      firstDate: state.startDate ?? DateTime(2000),
                      lastDate: DateTime.now(),
                    );
                    if (picked != null) {
                      vm.onEvent(UpdateFilter(endDate: picked));
                    }
                  },
                  child: Text(
                    state.endDate != null
                        ? DateFormat.yMMMd().format(state.endDate!)
                        : 'End Date',
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
