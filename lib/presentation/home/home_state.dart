part of 'home_cubit.dart';

abstract class HomeState extends Equatable {
  const HomeState();
}

class HomeLoading extends HomeState {
  @override
  List<Object> get props => [];
}

class HomeError extends HomeState {
  final dynamic error;

  const HomeError(this.error);

  @override
  List<Object?> get props => [error];
}

class HomeLoaded extends HomeState {
  final ScrollController scrollController;
  final bool isCollapsed;

  const HomeLoaded({required this.scrollController, required this.isCollapsed});

  @override
  List<Object> get props => [scrollController, isCollapsed];
}
