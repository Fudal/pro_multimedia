import 'package:auto_route/auto_route.dart';
import 'package:pro_multimedia/routing/router.gr.dart';

@RoutePage(name: 'HomeRouter')
class HomeRouterPage extends AutoRouter {
  const HomeRouterPage({super.key});
}

class HomeRoutes {
  List<AutoRoute> items = [
    AutoRoute(page: HomeRoute.page, initial: true, maintainState: false),
  ];
}
