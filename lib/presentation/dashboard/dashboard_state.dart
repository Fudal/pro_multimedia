part of 'dashboard_cubit.dart';

abstract class DashboardState extends Equatable {
  const DashboardState();
}

class DashboardLoading extends DashboardState {
  @override
  List<Object> get props => [];
}

class DashboardLoaded extends DashboardState {
  final List<PageRouteInfo> tabRoutes;
  final int initialIndex;
  final bool indexSet;

  const DashboardLoaded({
    required this.tabRoutes,
    required this.initialIndex,
    this.indexSet = false,
  });

  @override
  List<Object> get props => [tabRoutes, initialIndex, indexSet];
}
