// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'base_http_service.dart' as _i4;
import 'endpoints/authentication_endpoints.dart' as _i10;
import 'endpoints/ezAsset_endpoints.dart' as _i3;
import 'endpoints/ezFile_endpoints.dart' as _i5;
import 'endpoints/ezLabel_endpoints.dart' as _i6;
import 'endpoints/ezProject_endpoints.dart' as _i7;
import 'endpoints/session_endpoints.dart' as _i8;
import 'endpoints/user_endpoints.dart'
    as _i9; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.factory<_i3.EzAssetEndpoints>(
      () => _i3.EzAssetEndpoints(get<_i4.BaseHttpService>()));
  gh.factory<_i5.EzFileEndpoints>(
      () => _i5.EzFileEndpoints(get<_i4.BaseHttpService>()));
  gh.factory<_i6.EzLabelEndpoints>(
      () => _i6.EzLabelEndpoints(get<_i4.BaseHttpService>()));
  gh.factory<_i7.EzProjectEndpoints>(
      () => _i7.EzProjectEndpoints(get<_i4.BaseHttpService>()));
  gh.factory<_i8.SessionEndpoints>(
      () => _i8.SessionEndpoints(get<_i4.BaseHttpService>()));
  gh.factory<_i9.UserEndpoints>(
      () => _i9.UserEndpoints(get<_i4.BaseHttpService>()));
  gh.factory<_i10.AuthenticationEndpoints>(
      () => _i10.AuthenticationEndpoints(get<_i4.BaseHttpService>()));
  gh.singleton<_i4.BaseHttpService>(_i4.BaseHttpService());
  return get;
}
