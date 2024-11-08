import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:pro_multimedia/presentation/widgets/custom_card.dart';
import 'package:pro_multimedia/style/dimens.dart';

class CustomCardGrid extends StatelessWidget {
  final List<CustomCard> cards;

  const CustomCardGrid({super.key, required this.cards});

  @override
  Widget build(BuildContext context) {
    return SliverMasonryGrid.count(
      crossAxisCount: 2,
      mainAxisSpacing: Dimens.spacingS,
      crossAxisSpacing: Dimens.spacingS,
      childCount: cards.length,
      itemBuilder: (BuildContext context, int index) {
        return cards[index];
      }
    );
  }
}
