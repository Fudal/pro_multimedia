import 'package:auto_route/auto_route.dart';
import 'package:pro_multimedia/routing/router.gr.dart';

@RoutePage(name: 'EventsRouter')
class EventsRouterPage extends AutoRouter {
  const EventsRouterPage({super.key});
}

class EventsRoutes {
  List<AutoRoute> items = [
    AutoRoute(page: EventsRoute.page, initial: true, maintainState: false),
  ];
}
