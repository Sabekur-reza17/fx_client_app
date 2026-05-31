import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:fx_client_app/core/app_router.gr.dart';
import 'package:fx_client_app/utilities/extensions/context_extensions.dart';

@RoutePage()
class BottomNavigationScreen extends HookConsumerWidget {
  final List<PageRouteInfo> _routes = [
    const SignalsArchiveRoute(),
    const PromoMaterialsRoute(),
    const HomeRoute(),
    const ProfileRoute(),
    const MoreRoute(),
  ];
  final Color _unselectedColor = const Color(0xFF8A94A3);
  final Color _selectedColor = const Color(0xFFE54861);

  BottomNavigationScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AutoTabsScaffold(
      routes: _routes,
      bottomNavigationBuilder: (_, tabsRouter) {
        return BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: tabsRouter.activeIndex,
          selectedItemColor: _selectedColor,
          unselectedItemColor: _unselectedColor,
          onTap: (index) {
            tabsRouter.setActiveIndex(index);
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                tabsRouter.activeIndex == 0
                    ? Icons.query_stats
                    : Icons.query_stats_outlined,
              ),
              label: context.locale.exam,
            ),
            BottomNavigationBarItem(
              icon: Icon(
                tabsRouter.activeIndex == 1
                    ? Icons.campaign
                    : Icons.campaign_outlined,
              ),
              label: context.locale.qna,
            ),
            BottomNavigationBarItem(
              icon: Icon(
                tabsRouter.activeIndex == 2 ? Icons.home : Icons.home_outlined,
              ),
              label: context.locale.home,
            ),
            BottomNavigationBarItem(
              icon: Icon(
                tabsRouter.activeIndex == 3
                    ? Icons.person
                    : Icons.person_outline,
              ),
              label: context.locale.myClass,
            ),
            BottomNavigationBarItem(
              icon: Icon(
                tabsRouter.activeIndex == 4
                    ? Icons.more_horiz
                    : Icons.more_horiz_outlined,
              ),
              label: context.locale.more,
            ),
          ],
        );
      },
    );
  }
}
