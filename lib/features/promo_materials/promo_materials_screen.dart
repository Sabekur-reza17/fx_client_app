import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:fx_client_app/core/base_hook_consumer_widget.dart';
import 'package:fx_client_app/core/vm_provider.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:fx_client_app/components/async_image.dart';

import 'promo_materials_event.dart';
import 'promo_materials_state.dart';
import 'promo_materials_view_model.dart';

@RoutePage()
class PromoMaterialsScreen extends BaseHookConsumerWidget<PromoMaterialsState, PromoMaterialsViewModel> {
  const PromoMaterialsScreen({super.key});

  @override
  NotifierProvider<PromoMaterialsViewModel, PromoMaterialsState> provider() => VmProvider.promoMaterialsVMP;

  @override
  Widget buildChild(BuildContext context, PromoMaterialsViewModel vm, PromoMaterialsState state, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: const Text('Promo Materials')),
      body: RefreshIndicator(
        onRefresh: () async => vm.onEvent(RetryLoadPromos()),
        child: state.isLoading && state.promos.isEmpty
            ? const Center(child: CircularProgressIndicator())
            : state.error != null && state.promos.isEmpty
                ? Center(child: Text(state.error!))
                : ListView.builder(
                    padding: const EdgeInsets.all(16),
                    itemCount: state.promos.length,
                    itemBuilder: (context, index) {
                      final promo = state.promos[index];
                      return Card(
                        margin: const EdgeInsets.only(bottom: 16),
                        clipBehavior: Clip.antiAlias,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                        child: InkWell(
                          onTap: () async {
                            final uri = Uri.parse(promo.targetUrl);
                            if (await canLaunchUrl(uri)) {
                              await launchUrl(uri);
                            }
                          },
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              AsyncImage(
                                imageUrl: promo.imageUrl,
                                height: 200,
                                fit: BoxFit.cover,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      promo.name,
                                      style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                                    ),
                                    const SizedBox(height: 8),
                                    Text(
                                      promo.type,
                                      style: TextStyle(color: Theme.of(context).colorScheme.primary),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
      ),
    );
  }
}
