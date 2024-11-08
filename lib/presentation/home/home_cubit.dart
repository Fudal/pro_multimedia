import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:pro_multimedia/extensions/size_extension.dart';
import 'package:pro_multimedia/style/app_colors.dart';
import 'package:pro_multimedia/utils/safe_cubit.dart';

part 'home_state.dart';

@injectable
class HomeCubit extends SafeCubit<HomeState> {
  HomeCubit() : super(HomeLoading());

  final ScrollController _scrollController = ScrollController();

  bool _isCollapsed = true;

  Future<void> init(BuildContext context) async {
    try {
      emit(HomeLoading());
      final maxOffset = context.screenHeight / 2 - kToolbarHeight;
      _scrollController.addListener(() {
        final bool isCollapsed = _scrollController.offset >= maxOffset;
        if (isCollapsed != _isCollapsed) {
          _isCollapsed = isCollapsed;
          emit(_buildHomeLoadedState());
        }

      });
      emit(_buildHomeLoadedState());
    } catch (e, s) {
      debugPrintStack(label: e.toString(), stackTrace: s);
      emit(HomeError(e));
    }
  }

  @override
  Future<void> close() {
    _scrollController.dispose();
    return super.close();
  }

  HomeLoaded _buildHomeLoadedState() {
    return HomeLoaded(
      scrollController: _scrollController,
      isCollapsed: _isCollapsed,
    );
  }

  Color calculateColor() {
    const startOffset = 0.0;
    const endOffset = 400.0;
    double t = (_scrollController.offset - startOffset) / (endOffset - startOffset);
    t = t.clamp(0.0, 1.0);
    return Color.lerp(AppColors.white, AppColors.primary_100, t)!;
  }
}
