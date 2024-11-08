import 'package:auto_route/auto_route.dart';
import 'package:pro_multimedia/routing/router.gr.dart';
import 'package:pro_multimedia/routing/tabs/events_routes.dart';
import 'package:pro_multimedia/routing/tabs/explore_routes.dart';
import 'package:pro_multimedia/routing/tabs/home_routes.dart';
import 'package:pro_multimedia/routing/tabs/news_routes.dart';

class TabsRoutes {
  List<AutoRoute> items = [
    AutoRoute(
      page: HomeRouter.page,
      children: HomeRoutes().items,
    ),
    AutoRoute(
      page: NewsRouter.page,
      children: NewsRoutes().items,
    ),
    AutoRoute(
      page: EventsRouter.page,
      children: EventsRoutes().items,
    ),
    AutoRoute(
      page: ExploreRouter.page,
      children: ExploreRoutes().items,
    ),
  ];
}
