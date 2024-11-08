import 'package:flutter/material.dart';
import 'package:pro_multimedia/extensions/context_extension.dart';
import 'package:pro_multimedia/presentation/widgets/favorite_icon_tile.dart';
import 'package:pro_multimedia/presentation/widgets/icon_with_opacity_tile.dart';
import 'package:pro_multimedia/style/app_colors.dart';
import 'package:pro_multimedia/style/app_typography.dart';
import 'package:pro_multimedia/style/dimens.dart';

class CustomCard extends StatelessWidget {
  final String title;
  final bool isFavorite;
  final bool isSmall;
  final String? imagePath;
  final Color? backgroundColor;

  const CustomCard({
    super.key,
    required this.title,
    this.backgroundColor = AppColors.primary_10,
    this.imagePath,
    this.isFavorite = false,
    this.isSmall = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: isSmall ? 120 : 200,
      decoration: BoxDecoration(color: backgroundColor, borderRadius: BorderRadius.circular(Dimens.spacingS)),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Positioned.fill(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(Dimens.spacingS),
              child: Image.asset(imagePath!, fit: BoxFit.cover),
            ),
          ),
          Container(
            height: isSmall ? 30 : 80,
            width: double.infinity,
            decoration: BoxDecoration(
              color: AppColors.dark_100.withOpacity(0.3),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: const EdgeInsets.all(Dimens.spacingSM),
              child: Text(
                title,
                style: context.typo.body1.white(),
                textAlign: TextAlign.start,
              ),
            ),
          ),
          Positioned(
            top: Dimens.spacingS,
            right: Dimens.spacingS,
            child: isFavorite
                ? FavoriteIconTile()
                : IconWithOpacityTile(
                    icon: Icons.favorite_border_outlined,
                    customOpacity: 0.1,
                    withPadding: false,
                    iconColor: AppColors.white,
                  ),
          ),
        ],
      ),
    );
  }
}
