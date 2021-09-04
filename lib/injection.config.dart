// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'core/data/datasources/client/dio_module.dart' as _i14;
import 'core/data/datasources/resources/assignments.dart' as _i9;
import 'core/data/datasources/resources/subjects.dart' as _i7;
import 'core/data/datasources/resources/summary.dart' as _i8;
import 'core/data/repositories/resources/subjects.dart' as _i10;
import 'core/data/repositories/resources/summary.dart' as _i11;
import 'core/domain/usecases/subjects.dart' as _i12;
import 'core/domain/usecases/summary.dart' as _i13;
import 'features/home/data/datasources/gravatar.dart' as _i3;
import 'features/home/data/repositories/gravatar.dart' as _i5;
import 'features/home/domain/usecases/gravatar.dart'
    as _i6; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final dioModule = _$DioModule();
  gh.factory<_i3.IGravatarLocalDataSource>(() => _i3.GravatarLocalDataSource());
  gh.factory<_i3.IGravatarRemoteDataSource>(
      () => _i3.GravatarRemoteDataSource());
  gh.factory<String>(() => dioModule.baseUrl, instanceName: 'baseUrl');
  gh.factory<String>(() => dioModule.assignmentsUrl,
      instanceName: 'assignmentsUrl');
  gh.factory<String>(() => dioModule.subjectsUrl, instanceName: 'subjectsUrl');
  gh.factory<String>(() => dioModule.summaryUrl, instanceName: 'summaryUrl');
  await gh.factoryAsync<_i4.Dio>(
      () => dioModule.dio(get<String>(instanceName: 'baseUrl')),
      preResolve: true);
  gh.factory<_i5.GravatarRepository>(() => _i5.GravatarRepository(
      get<_i3.IGravatarLocalDataSource>(),
      get<_i3.IGravatarRemoteDataSource>()));
  gh.factory<_i6.GravatarUseCases>(
      () => _i6.GravatarUseCases(get<_i5.GravatarRepository>()));
  gh.lazySingleton<_i7.SubjectsRemoteDataSource>(() =>
      _i7.SubjectsRemoteDataSource(get<_i4.Dio>(),
          baseUrl: get<String>(instanceName: 'subjectsUrl')));
  gh.lazySingleton<_i8.SummaryRemoteDataSource>(() =>
      _i8.SummaryRemoteDataSource(get<_i4.Dio>(),
          baseUrl: get<String>(instanceName: 'summaryUrl')));
  gh.lazySingleton<_i9.AssignmentsRemoteDataSource>(() =>
      _i9.AssignmentsRemoteDataSource(get<_i4.Dio>(),
          baseUrl: get<String>(instanceName: 'assignmentsUrl')));
  gh.factory<_i10.ISubjectsRepository>(() =>
      _i10.SubjectsRepository(remote: get<_i7.SubjectsRemoteDataSource>()));
  gh.factory<_i11.ISummaryRepository>(
      () => _i11.SummaryRepository(remote: get<_i8.SummaryRemoteDataSource>()));
  gh.factory<_i12.SubjectsUseCases>(
      () => _i12.SubjectsUseCases(get<_i10.ISubjectsRepository>()));
  gh.factory<_i13.SummaryUseCases>(
      () => _i13.SummaryUseCases(get<_i11.ISummaryRepository>()));
  return get;
}

class _$DioModule extends _i14.DioModule {}
