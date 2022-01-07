import 'package:dev_eza_api/endpoints/session_endpoints.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

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
  getIt<SessionEndpoints>().createSessionGet().then((value) => print(value.body.results[0].guid));
}
