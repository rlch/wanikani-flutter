// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'features/home/data/datasources/gravatar.dart' as _i3;
import 'features/home/data/repositories/gravatar.dart' as _i4;
import 'features/home/domain/usecases/get_gravatar.dart'
    as _i5; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.factory<_i3.IGravatarLocalDataSource>(() => _i3.GravatarLocalDataSource());
  gh.factory<_i3.IGravatarRemoteDataSource>(
      () => _i3.GravatarRemoteDataSource());
  gh.factory<_i4.GravatarRepository>(() => _i4.GravatarRepository(
      get<_i3.IGravatarLocalDataSource>(),
      get<_i3.IGravatarRemoteDataSource>()));
  gh.factory<_i5.GetGravatar>(
      () => _i5.GetGravatar(get<_i4.GravatarRepository>()));
  return get;
}
