import 'package:flutter/material.dart';
import 'package:pro_multimedia/style/app_colors.dart';
import 'package:pro_multimedia/style/dimens.dart';

class FavoriteIconTile extends StatelessWidget {
  const FavoriteIconTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: AppColors.white),
      ),
      padding: const EdgeInsets.all(Dimens.spacingXs),
      child: Icon(Icons.favorite, color: AppColors.success_100),
    );
  }
}
