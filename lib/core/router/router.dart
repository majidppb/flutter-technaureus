import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../features/home/presentation/checkout/checkout.dart';
import '../../features/home/presentation/core/navbar/navbar.dart';
import '../../features/home/presentation/customer/customer.dart';
import '../../features/home/presentation/home/home.dart';
import '../../features/home/presentation/product/product.dart';

final _rootKey = GlobalKey<NavigatorState>();
final _homeKey = GlobalKey<NavigatorState>();
final _productKey = GlobalKey<NavigatorState>();
final _customerKey = GlobalKey<NavigatorState>();

final router = GoRouter(
  navigatorKey: _rootKey,
  initialLocation: HomeScreen.path,
  routes: [
    StatefulShellRoute.indexedStack(
      parentNavigatorKey: _rootKey,
      branches: [
        StatefulShellBranch(
          navigatorKey: _homeKey,
          initialLocation: HomeScreen.path,
          routes: [
            GoRoute(
              path: HomeScreen.path,
              pageBuilder: (context, GoRouterState state) =>
                  _getPage(state, const HomeScreen()),
            ),
          ],
        ),
        StatefulShellBranch(
          navigatorKey: _productKey,
          initialLocation: ProductScreen.path,
          routes: [
            GoRoute(
              path: ProductScreen.path,
              pageBuilder: (context, GoRouterState state) =>
                  _getPage(state, const ProductScreen()),
            ),
          ],
        ),
        StatefulShellBranch(
          navigatorKey: _customerKey,
          initialLocation: CustomerScreen.path,
          routes: [
            GoRoute(
              path: CustomerScreen.path,
              pageBuilder: (context, GoRouterState state) =>
                  _getPage(state, const CustomerScreen()),
            ),
          ],
        ),
      ],
      pageBuilder: (
        BuildContext context,
        GoRouterState state,
        StatefulNavigationShell navigationShell,
      ) {
        // Set bottom navbar index
        NavBarScreen.index = navigationShell.currentIndex;

        return _getPage(
          state,
          NavBarScreen(child: navigationShell),
        );
      },
    ),
    GoRoute(
      parentNavigatorKey: _rootKey,
      path: CheckoutScreen.path,
      pageBuilder: (context, state) =>
          _getPage(state, CheckoutScreen(customerId: state.extra as int)),
    ),
  ],
);

MaterialPage _getPage(GoRouterState state, Widget child) => MaterialPage(
      key: state.pageKey,
      child: child,
    );
