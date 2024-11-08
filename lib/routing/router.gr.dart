// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i10;
import 'package:flutter/material.dart' as _i11;
import 'package:pro_multimedia/presentation/dashboard/dashboard_page.dart'
    as _i1;
import 'package:pro_multimedia/presentation/events/events_page.dart' as _i2;
import 'package:pro_multimedia/presentation/explore/explore_page.dart' as _i4;
import 'package:pro_multimedia/presentation/home/home_page.dart' as _i6;
import 'package:pro_multimedia/presentation/news/news_page.dart' as _i8;
import 'package:pro_multimedia/routing/tabs/events_routes.dart' as _i3;
import 'package:pro_multimedia/routing/tabs/explore_routes.dart' as _i5;
import 'package:pro_multimedia/routing/tabs/home_routes.dart' as _i7;
import 'package:pro_multimedia/routing/tabs/news_routes.dart' as _i9;

/// generated route for
/// [_i1.DashboardPage]
class DashboardRoute extends _i10.PageRouteInfo<DashboardRouteArgs> {
  DashboardRoute({
    _i11.Key? key,
    int? initialIndex = 0,
    List<_i10.PageRouteInfo>? children,
  }) : super(
          DashboardRoute.name,
          args: DashboardRouteArgs(
            key: key,
            initialIndex: initialIndex,
          ),
          initialChildren: children,
        );

  static const String name = 'DashboardRoute';

  static _i10.PageInfo page = _i10.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<DashboardRouteArgs>(
          orElse: () => const DashboardRouteArgs());
      return _i10.WrappedRoute(
          child: _i1.DashboardPage(
        key: args.key,
        initialIndex: args.initialIndex,
      ));
    },
  );
}

class DashboardRouteArgs {
  const DashboardRouteArgs({
    this.key,
    this.initialIndex = 0,
  });

  final _i11.Key? key;

  final int? initialIndex;

  @override
  String toString() {
    return 'DashboardRouteArgs{key: $key, initialIndex: $initialIndex}';
  }
}

/// generated route for
/// [_i2.EventsPage]
class EventsRoute extends _i10.PageRouteInfo<void> {
  const EventsRoute({List<_i10.PageRouteInfo>? children})
      : super(
          EventsRoute.name,
          initialChildren: children,
        );

  static const String name = 'EventsRoute';

  static _i10.PageInfo page = _i10.PageInfo(
    name,
    builder: (data) {
      return const _i2.EventsPage();
    },
  );
}

/// generated route for
/// [_i3.EventsRouterPage]
class EventsRouter extends _i10.PageRouteInfo<void> {
  const EventsRouter({List<_i10.PageRouteInfo>? children})
      : super(
          EventsRouter.name,
          initialChildren: children,
        );

  static const String name = 'EventsRouter';

  static _i10.PageInfo page = _i10.PageInfo(
    name,
    builder: (data) {
      return const _i3.EventsRouterPage();
    },
  );
}

/// generated route for
/// [_i4.ExplorePage]
class ExploreRoute extends _i10.PageRouteInfo<void> {
  const ExploreRoute({List<_i10.PageRouteInfo>? children})
      : super(
          ExploreRoute.name,
          initialChildren: children,
        );

  static const String name = 'ExploreRoute';

  static _i10.PageInfo page = _i10.PageInfo(
    name,
    builder: (data) {
      return const _i4.ExplorePage();
    },
  );
}

/// generated route for
/// [_i5.ExploreRouterPage]
class ExploreRouter extends _i10.PageRouteInfo<void> {
  const ExploreRouter({List<_i10.PageRouteInfo>? children})
      : super(
          ExploreRouter.name,
          initialChildren: children,
        );

  static const String name = 'ExploreRouter';

  static _i10.PageInfo page = _i10.PageInfo(
    name,
    builder: (data) {
      return const _i5.ExploreRouterPage();
    },
  );
}

/// generated route for
/// [_i6.HomePage]
class HomeRoute extends _i10.PageRouteInfo<void> {
  const HomeRoute({List<_i10.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static _i10.PageInfo page = _i10.PageInfo(
    name,
    builder: (data) {
      return _i10.WrappedRoute(child: const _i6.HomePage());
    },
  );
}

/// generated route for
/// [_i7.HomeRouterPage]
class HomeRouter extends _i10.PageRouteInfo<void> {
  const HomeRouter({List<_i10.PageRouteInfo>? children})
      : super(
          HomeRouter.name,
          initialChildren: children,
        );

  static const String name = 'HomeRouter';

  static _i10.PageInfo page = _i10.PageInfo(
    name,
    builder: (data) {
      return const _i7.HomeRouterPage();
    },
  );
}

/// generated route for
/// [_i8.NewsPage]
class NewsRoute extends _i10.PageRouteInfo<void> {
  const NewsRoute({List<_i10.PageRouteInfo>? children})
      : super(
          NewsRoute.name,
          initialChildren: children,
        );

  static const String name = 'NewsRoute';

  static _i10.PageInfo page = _i10.PageInfo(
    name,
    builder: (data) {
      return const _i8.NewsPage();
    },
  );
}

/// generated route for
/// [_i9.NewsRouterPage]
class NewsRouter extends _i10.PageRouteInfo<void> {
  const NewsRouter({List<_i10.PageRouteInfo>? children})
      : super(
          NewsRouter.name,
          initialChildren: children,
        );

  static const String name = 'NewsRouter';

  static _i10.PageInfo page = _i10.PageInfo(
    name,
    builder: (data) {
      return const _i9.NewsRouterPage();
    },
  );
}
