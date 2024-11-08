// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:pro_multimedia/presentation/dashboard/dashboard_cubit.dart'
    as _i642;
import 'package:pro_multimedia/presentation/home/home_cubit.dart' as _i144;
import 'package:pro_multimedia/presentation/video_player/video_player_cubit.dart'
    as _i560;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i144.HomeCubit>(() => _i144.HomeCubit());
    gh.factory<_i560.VideoPlayerCubit>(() => _i560.VideoPlayerCubit());
    gh.factory<_i642.DashboardCubit>(() => _i642.DashboardCubit());
    return this;
  }
}
