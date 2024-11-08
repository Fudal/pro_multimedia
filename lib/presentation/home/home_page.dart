import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pro_multimedia/extensions/context_extension.dart';
import 'package:pro_multimedia/injections/bloc_factory.dart';
import 'package:pro_multimedia/presentation/home/home_cubit.dart';
import 'package:pro_multimedia/presentation/home/widgets/home_page_content.dart';
import 'package:pro_multimedia/presentation/widgets/info_dialog.dart';
import 'package:pro_multimedia/routing/router.gr.dart';
import 'package:pro_multimedia/style/app_colors.dart';

@RoutePage()
class HomePage extends StatelessWidget implements AutoRouteWrapper {
  const HomePage({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    final BlocFactory blocFactory = BlocFactory.of(context);
    return BlocProvider<HomeCubit>(
      create: (mainContext) => blocFactory.get()..init(context),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.success_10,
      body: BlocConsumer<HomeCubit, HomeState>(
        listener: (_, state) {
          if (state is HomeError) {
            InfoDialog(
              error: state.error,
              message: context.tr.wystapilBlad,
              firstCallback: () => context.router.replace(DashboardRoute()),
            ).show(context);
          }
        },
        builder: (_, state) {
          if (state is HomeLoaded) {
            return HomePageContent(state: state);
          } else {
            return const CircularProgressIndicator();
          }
        },
      )
    );
  }
}
