import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:pro_multimedia/extensions/context_extension.dart';
import 'package:pro_multimedia/presentation/home/home_cubit.dart';
import 'package:pro_multimedia/presentation/home/widgets/home_appbar.dart';
import 'package:pro_multimedia/presentation/home/widgets/home_header.dart';
import 'package:pro_multimedia/presentation/widgets/custom_card.dart';
import 'package:pro_multimedia/presentation/widgets/custom_card_grid.dart';
import 'package:pro_multimedia/presentation/widgets/custom_card_with_background.dart';
import 'package:pro_multimedia/style/app_colors.dart';
import 'package:pro_multimedia/style/dimens.dart';
import 'package:pro_multimedia/style/images/general.dart';

class HomePageContent extends StatelessWidget {
  final HomeLoaded state;
  const HomePageContent({super.key, required this.state});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      controller: state.scrollController,
      slivers: <Widget>[
        HomeAppbar(state: state),
        HomeHeader(state: state),
        SliverPadding(
          padding: const EdgeInsets.all(Dimens.spacingM),
          sliver: CustomCardGrid(
            cards: [
              CustomCardWithBackground(
                title: context.tr.zaplanujPodroz,
                backgroundColor: AppColors.success_100,
                isSmall: true,
                isBlackColor: true,
                customWidget: Image.asset(AppImages.common.flagPath, width: 40, color: AppColors.dark_100),
              ),
              CustomCard(
                title: context.tr.dluzszeGodziny,
                imagePath: AppImages.common.museum,
              ),
              CustomCardWithBackground(
                title: context.tr.szlaki,
                backgroundColor: AppColors.primary_200,
                customWidget: Icon(Ionicons.footsteps_outline, size: 48, color: AppColors.white),
              ),
              CustomCard(
                title: context.tr.dlaLicealistow,
                imagePath: AppImages.common.kopice,
              ),
              CustomCard(
                title: context.tr.dluzszeGodziny,
                imagePath: AppImages.common.planetarium,
                isFavorite: true,
              ),
              CustomCard(
                title: context.tr.nieDlaLicealistow,
                imagePath: AppImages.common.stadium,
              ),
              CustomCard(
                title: context.tr.dluzszeGodziny,
                imagePath: AppImages.common.opera,
                isFavorite: true,
              ),
              CustomCard(
                title: context.tr.nieDlaLicealistow,
                imagePath: AppImages.common.carboneum,
              ),
              CustomCard(
                title: context.tr.dluzszeGodziny,
                imagePath: AppImages.common.museum,
              ),
            ],
          ),
        )
      ],
    );
  }
}
