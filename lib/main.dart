import 'dart:convert';

import 'package:dev_eza_api/endpoints/authentication_endpoints.dart';
import 'package:dev_eza_api/endpoints/ezAsset_endpoints.dart';
import 'package:dev_eza_api/endpoints/session_endpoints.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'package:dio/dio.dart';

import 'main.config.dart';

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: r'$initGetIt', // default
  preferRelativeImports: true, // default
  asExtension: false, // default
)
void configureDependencies() => $initGetIt(getIt);

void main() {
  configureDependencies();
  print('YOU NEED TO PROVIDE CREDENTIALS IN SOURCE CODE');

  getIt<SessionEndpoints>().createSessionGet().then((value) {
    var formData = FormData.fromMap({
      'email': '',
      'password': ''
    });
    getIt<AuthenticationEndpoints>().emailPasswordPost(formData).then((value) {
      getIt<EzAssetEndpoints>().getGet('fe9ec808-0007-40ac-9ada-0000000008c3').then((value) => print(value.body.results[0].files?.length));
    });
  });
}
