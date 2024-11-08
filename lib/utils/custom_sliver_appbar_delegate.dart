import 'package:flutter/material.dart';

class CustomSliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  final Widget child;

  CustomSliverAppBarDelegate({required this.child});

  @override
  double get minExtent => 120.0;

  @override
  double get maxExtent => 120.0;

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return child;
  }

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}
