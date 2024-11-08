import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:pro_multimedia/routing/router.gr.dart';
import 'package:pro_multimedia/routing/tabs_routes.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey: navigatorKey);

  @override
  RouteType get defaultRouteType => const RouteType.adaptive();

  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: DashboardRoute.page, initial: true, children: TabsRoutes().items),
  ];
}
