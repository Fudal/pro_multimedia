import 'package:auto_route/auto_route.dart';
import 'package:pro_multimedia/routing/router.gr.dart';

@RoutePage(name: 'ExploreRouter')
class ExploreRouterPage extends AutoRouter {
  const ExploreRouterPage({super.key});
}

class ExploreRoutes {
  List<AutoRoute> items = [
    AutoRoute(page: ExploreRoute.page, initial: true, maintainState: false),
  ];
}
