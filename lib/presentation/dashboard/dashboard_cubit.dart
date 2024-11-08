import 'package:auto_route/auto_route.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:pro_multimedia/routing/router.gr.dart';
import 'package:pro_multimedia/utils/safe_cubit.dart';

part 'dashboard_state.dart';

@injectable
class DashboardCubit extends SafeCubit<DashboardState> {

  DashboardCubit(): super(DashboardLoading());

  int _initialIndex = 0;
  bool _indexSet = false;
  List<PageRouteInfo<dynamic>> _tabRoutes = [];

  Future<void> loadDashboard({int? initialIndex}) async {
    emit(DashboardLoading());
    _initialIndex = initialIndex ?? 0;
    _tabRoutes = getTabsRoutes();

    emit(_buildDashboardLoadedState());
  }

  List<PageRouteInfo<dynamic>> getTabsRoutes() {
    final List<PageRouteInfo<dynamic>> tabRoutes = [];
    tabRoutes
      ..add(const HomeRouter())
      ..add(const NewsRouter())
      ..add(const EventsRouter())
      ..add(const ExploreRouter());
    return tabRoutes;
  }

  void setIndex(int index) {
    _indexSet = true;
    _initialIndex = index;
    emit(_buildDashboardLoadedState());
  }

  DashboardLoaded _buildDashboardLoadedState() {
    return DashboardLoaded(
      tabRoutes: _tabRoutes,
      initialIndex: _initialIndex,
      indexSet: _indexSet,
    );
  }
}
