import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pro_multimedia/injections/bloc_factory.dart';
import 'package:pro_multimedia/presentation/dashboard/dashboard_cubit.dart';
import 'package:pro_multimedia/presentation/dashboard/widgets/bottom_bar.dart';
import 'package:pro_multimedia/presentation/home/home_cubit.dart';

@RoutePage()
class DashboardPage extends StatelessWidget implements AutoRouteWrapper {
  final int? initialIndex;

  const DashboardPage({super.key, this.initialIndex = 0});

  @override
  Widget wrappedRoute(BuildContext context) {
    final BlocFactory blocFactory = BlocFactory.of(context);
    return MultiBlocProvider(
      providers: [
        BlocProvider<DashboardCubit>(create: (mainContext) => blocFactory.get()
          ..loadDashboard(initialIndex: initialIndex),),
        BlocProvider<HomeCubit>(create: (mainContext) => blocFactory.get()..init(context)),
      ],
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<DashboardCubit, DashboardState>(
        builder: (_, state) {
          if (state is DashboardLoaded) {
            return AutoTabsScaffold(
              routes: state.tabRoutes,
              homeIndex: initialIndex ?? 0,
              bottomNavigationBuilder: (_, tabsRouter) {
                return HomeBottomNavigationBar(
                  tabsRouter: tabsRouter,
                  tabRoutes: state.tabRoutes,
                  initialIndex: state.initialIndex,
                );
              },
            );
          } else {
            return const CircularProgressIndicator();
          }
        },
      ),
    );
  }
}
