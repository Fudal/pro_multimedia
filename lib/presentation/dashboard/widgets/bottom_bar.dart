import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:pro_multimedia/extensions/context_extension.dart';
import 'package:pro_multimedia/style/app_colors.dart';

class HomeBottomNavigationBar extends StatefulWidget {
  final TabsRouter tabsRouter;
  final List<PageRouteInfo<dynamic>> tabRoutes;
  final int initialIndex;

  const HomeBottomNavigationBar({super.key,
    required this.tabsRouter,
    required this.tabRoutes,
    this.initialIndex = 0,
  });

  @override
  createState() => _HomeBottomNavigationBarState();
}

class _HomeBottomNavigationBarState extends State<HomeBottomNavigationBar> {
  late VoidCallback _tabsRouterListener;
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _currentIndex = widget.initialIndex;
    _tabsRouterListener = () {
      setState(() {
        _currentIndex = widget.tabsRouter.activeIndex;
      });
    };

    widget.tabsRouter.addListener(_tabsRouterListener);
  }

  @override
  void dispose() {
    widget.tabsRouter.removeListener(_tabsRouterListener);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _currentIndex,
      onTap: (index) {
        FocusScope.of(context).unfocus();
        if (index == _currentIndex) return;

        widget.tabsRouter.setActiveIndex(index);
        setState(() => _currentIndex = index);
      },
      backgroundColor: AppColors.primary_10,
      type: BottomNavigationBarType.fixed,
      selectedLabelStyle: context.typo.body3,
      unselectedItemColor: AppColors.dark_100,
      items: [
        _bottomNavigationBarItem(
          icon: Ionicons.home_outline,
          index: 0,
          label: context.tr.slaskie,
        ),
        _bottomNavigationBarItem(
          icon: Ionicons.newspaper_outline,
          index: 1,
          label: context.tr.aktualnosci,
        ),
        _bottomNavigationBarItem(
          icon: Ionicons.calendar_outline,
          index: 2,
          label: context.tr.wydarzenia,
        ),
        _bottomNavigationBarItem(
          icon: Ionicons.map_outline,
          index: 3,
          label: context.tr.eksploruj,
        ),
      ],
    );
  }

  BottomNavigationBarItem _bottomNavigationBarItem({
    required IconData icon,
    required int index,
    required String label,
  }) {
    return BottomNavigationBarItem(
      label: label,
      icon: Icon(icon),
    );
  }
}
