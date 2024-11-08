import 'package:flutter/material.dart';
import 'package:pro_multimedia/extensions/context_extension.dart';
import 'package:pro_multimedia/presentation/home/home_cubit.dart';
import 'package:pro_multimedia/presentation/widgets/custom_button_rounded.dart';
import 'package:pro_multimedia/style/app_colors.dart';
import 'package:pro_multimedia/style/app_typography.dart';
import 'package:pro_multimedia/style/dimens.dart';
import 'package:pro_multimedia/utils/custom_sliver_appbar_delegate.dart';

class HomeHeader extends StatelessWidget {
  final HomeLoaded state;
  const HomeHeader({super.key, required this.state});

  @override
  Widget build(BuildContext context) {
    return SliverPersistentHeader(
      pinned: true,
      delegate: CustomSliverAppBarDelegate(
        child: Container(
          color: AppColors.success_10,
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(Dimens.spacingM),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(context.tr.polecane, style: context.typo.headline1.bold()),
                    const SizedBox(height: Dimens.spacingS),
                    Expanded(
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Flexible(
                            child: CustomButtonRounded(
                                text: context.tr.platne,
                                radius: Dimens.largeContainerRadius,
                                isSmall: true,
                                backgroundColor: AppColors.tertiary_90
                            ),
                          ),
                          const SizedBox(width: Dimens.spacingS),
                          Flexible(
                            child: CustomButtonRounded(
                                text: context.tr.bezplatne,
                                radius: Dimens.largeContainerRadius,
                                isSmall: true,
                                backgroundColor: AppColors.white,
                                textColorEnabled: AppColors.dark_100,
                                borderColor: AppColors.white
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Positioned(
                top: -30,
                right: Dimens.spacingM,
                child: Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    color: AppColors.success_100,
                    shape: BoxShape.circle,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(
                        state.isCollapsed ? Icons.keyboard_arrow_up_outlined : Icons.keyboard_arrow_down_outlined,
                        color: AppColors.white,
                        size: 30,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

