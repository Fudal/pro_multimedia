import 'package:flutter/material.dart';
import 'package:pro_multimedia/extensions/context_extension.dart';
import 'package:pro_multimedia/presentation/widgets/custom_card.dart';
import 'package:pro_multimedia/presentation/widgets/custom_right_angle_icon.dart';
import 'package:pro_multimedia/style/app_colors.dart';
import 'package:pro_multimedia/style/dimens.dart';
import 'package:pro_multimedia/style/images/general.dart';

class CustomCardWithBackground extends CustomCard {
  final bool isBlackColor;
  final Widget customWidget;

  const CustomCardWithBackground({
    super.key,
    required super.title,
    super.backgroundColor = AppColors.primary_10,
    super.isSmall = false,
    required this.customWidget,
    this.isBlackColor = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: isSmall ? 120 : 200,
      decoration: BoxDecoration(color: backgroundColor, borderRadius: BorderRadius.circular(Dimens.spacingS)),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: const EdgeInsets.all(Dimens.spacingSM),
              child: Text(
                title,
                style: context.typo.body1.copyWith(color: isBlackColor ? AppColors.dark_100 : AppColors.white),
                textAlign: TextAlign.start,
              ),
            ),
          ),
          Positioned(
            top: Dimens.spacingM,
            left: Dimens.spacingS,
            child: Image.asset(AppImages.common.flagPath, color: AppColors.white),
          ),
          Positioned(
            top: Dimens.spacingM,
            right: Dimens.spacingS,
            child: CustomRightAngleIcon(color: isBlackColor ? AppColors.dark_100 : AppColors.white),
          ),
          Positioned(top: Dimens.spacingM, left: Dimens.spacingS, child: customWidget),
        ],
      ),
    );
  }
}
