import 'package:flutter/material.dart';
import 'package:pro_multimedia/style/app_colors.dart';
import 'package:pro_multimedia/style/dimens.dart';

class IconWithOpacityTile extends StatelessWidget {
  final IconData icon;
  final double customOpacity;
  final bool withPadding;
  final Color iconColor;

  const IconWithOpacityTile({
    super.key,
    required this.icon,
    this.customOpacity = 0.5,
    this.withPadding = true,
    this.iconColor = AppColors.primary_100,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: withPadding ? const EdgeInsets.all(Dimens.spacingS) : EdgeInsets.zero,
      child: CircleAvatar(
        backgroundColor: AppColors.white.withOpacity(customOpacity),
        child: IconButton(
          icon: Icon(icon, color: iconColor),
          onPressed: () {},
        ),
      ),
    );
  }
}
