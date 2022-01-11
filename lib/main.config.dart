// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'base_http_service.dart' as _i4;
import 'endpoints/authentication_endpoints.dart' as _i8;
import 'endpoints/ezAsset_endpoints.dart' as _i3;
import 'endpoints/ezLabel_endpoints.dart' as _i5;
import 'endpoints/ezProject_endpoints.dart' as _i6;
import 'endpoints/session_endpoints.dart'
    as _i7; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.factory<_i3.EzAssetEndpoints>(
      () => _i3.EzAssetEndpoints(get<_i4.BaseHttpService>()));
  gh.factory<_i5.EzLabelEndpoints>(
      () => _i5.EzLabelEndpoints(get<_i4.BaseHttpService>()));
  gh.factory<_i6.EzProjectEndpoints>(
      () => _i6.EzProjectEndpoints(get<_i4.BaseHttpService>()));
  gh.factory<_i7.SessionEndpoints>(
      () => _i7.SessionEndpoints(get<_i4.BaseHttpService>()));
  gh.factory<_i8.AuthenticationEndpoints>(
      () => _i8.AuthenticationEndpoints(get<_i4.BaseHttpService>()));
  gh.singleton<_i4.BaseHttpService>(_i4.BaseHttpService());
  return get;
}
