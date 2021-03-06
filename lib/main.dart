import 'dart:convert';
import 'dart:math';

import 'package:dev_eza_api/base_http_service.dart';
import 'package:dev_eza_api/endpoints/authentication_endpoints.dart';
import 'package:dev_eza_api/endpoints/ezAsset_endpoints.dart';
import 'package:dev_eza_api/endpoints/ezFile_endpoints.dart';
import 'package:dev_eza_api/endpoints/ezLabel_endpoints.dart';
import 'package:dev_eza_api/endpoints/ezProject_endpoints.dart';
import 'package:dev_eza_api/endpoints/search_endpoints.dart';
import 'package:dev_eza_api/endpoints/session_endpoints.dart';
import 'package:dev_eza_api/endpoints/user_endpoints.dart';
import 'package:dev_eza_api/response_models/ezSearch/ezSearchResult.dart';
import 'package:dev_eza_api/response_models/session.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'main.config.dart';

export 'enums/ezUserEnum.dart';
export 'response_models/ezAsset.dart';
export 'response_models/ezDestination.dart';
export 'response_models/ezFileCreateResponse.dart';
export 'response_models/ezFiles.dart';
export 'response_models/ezLabel/ezLabel.dart';
export 'response_models/ezLabel/ezLabelAdditionalProps.dart';
export 'response_models/ezLabel/ezLabelAnnotations.dart';
export 'response_models/ezLabel/ezLabelAssociateWith.dart';
export 'response_models/ezLabel/ezLabelData.dart';
export 'response_models/ezLabel/ezLabelFields.dart';
export 'response_models/ezProject.dart';
export 'response_models/ezUser.dart';
export 'response_models/ezWasSuccessResponse.dart';
export 'response_models/secure_cookie.dart';
export 'response_models/session.dart';
export 'response_models/user.dart';

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: r'$initGetIt', // default
  preferRelativeImports: true, // default
  asExtension: false, // default
)
void configureDependencies() => $initGetIt(getIt);

class DevEzaApi {
  static final AuthenticationEndpoints authenticationEndpoints = getIt<AuthenticationEndpoints>();
  static final UserEndpoints userEndpoints = getIt<UserEndpoints>();
  static final EzAssetEndpoints ezAssetEndpoints = getIt<EzAssetEndpoints>();
  static final EzFileEndpoints ezFileEndpoints = getIt<EzFileEndpoints>();
  static final EzLabelEndpoints ezLabelEndpoints = getIt<EzLabelEndpoints>();
  static final EzProjectEndpoints ezProjectEndpoints = getIt<EzProjectEndpoints>();
  static final SessionEndpoints sessionEndpoints = getIt<SessionEndpoints>();
  static final SearchEndpoints searchEndpoints = getIt<SearchEndpoints>();

  static void removeSession() => getIt<BaseHttpService>().session = null;

  static bool hasSession() => getIt<BaseHttpService>().session != null;

  static void addSession(Session s) => getIt<BaseHttpService>().session = s;

  static Session? session() => getIt<BaseHttpService>().session;
}

