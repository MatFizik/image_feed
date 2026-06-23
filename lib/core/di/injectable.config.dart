// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:image_feed/features/data/image_feed_repository_impl.dart'
    as _i1019;
import 'package:image_feed/features/domain/image_feed_repository.dart' as _i448;
import 'package:image_feed/features/domain/image_feed_use_case.dart' as _i55;
import 'package:image_feed/features/presentation/bloc/image_feed_bloc.dart'
    as _i704;
import 'package:injectable/injectable.dart' as _i526;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.lazySingleton<_i448.ImageFeedRepository>(
      () => _i1019.ImageFeedRepositoryImpl(),
    );
    gh.factory<_i55.GetPhotosUseCase>(
      () => _i55.GetPhotosUseCase(gh<_i448.ImageFeedRepository>()),
    );
    gh.factory<_i704.ImageFeedBloc>(
      () => _i704.ImageFeedBloc(gh<_i55.GetPhotosUseCase>()),
    );
    return this;
  }
}
