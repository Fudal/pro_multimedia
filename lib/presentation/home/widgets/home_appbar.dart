import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pro_multimedia/extensions/size_extension.dart';
import 'package:pro_multimedia/presentation/home/home_cubit.dart';
import 'package:pro_multimedia/presentation/video_player/video_player_tile.dart';
import 'package:pro_multimedia/presentation/widgets/icon_with_opacity_tile.dart';
import 'package:pro_multimedia/style/app_colors.dart';
import 'package:pro_multimedia/style/dimens.dart';
import 'package:pro_multimedia/style/files/general.dart';
import 'package:pro_multimedia/style/images/general.dart';

class HomeAppbar extends StatelessWidget {
  final HomeLoaded state;
  const HomeAppbar({super.key, required this.state});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: AppColors.white,
      expandedHeight: context.screenHeight/2,
      pinned: true,
      leading: const IconWithOpacityTile(icon: Icons.menu),
      actions: [
        const IconWithOpacityTile(icon: Icons.favorite_border_outlined),
        const IconWithOpacityTile(icon: Icons.search),
      ],
      scrolledUnderElevation: 4,
      collapsedHeight: kToolbarHeight,
      flexibleSpace: AnimatedBuilder(
        animation: state.scrollController,
        builder: (context, child) {
          final color = context.read<HomeCubit>().calculateColor();
          return FlexibleSpaceBar(
            background: VideoPlayerTile(videoPath: AppFiles.common.slaskieVideo),
            title: ColorFiltered(
              colorFilter: ColorFilter.mode(color, BlendMode.srcIn),
              child: Image.asset(AppImages.common.logoWhite, height: 40),
            ),
            centerTitle: true,
            titlePadding: const EdgeInsets.symmetric(vertical: Dimens.spacingL),
          );
        },
      ),
    );
  }
}
