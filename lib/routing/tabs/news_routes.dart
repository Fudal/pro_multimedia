import 'package:auto_route/auto_route.dart';
import 'package:pro_multimedia/routing/router.gr.dart';

@RoutePage(name: 'NewsRouter')
class NewsRouterPage extends AutoRouter {
  const NewsRouterPage({super.key});
}

class NewsRoutes {
  List<AutoRoute> items = [
    AutoRoute(page: NewsRoute.page, initial: true, maintainState: false),
  ];
}
