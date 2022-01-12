# dev-eza-api
This is dart API module for dev-EzArchive

## Features

This package is responsible for comunicating with dev-eza server for dart as well as providing necessary serialization and models that the api returns.

Install pubspec.yaml file:
```
  dev_basic_api:
    git:
      url: https://github.com/ffw-dev/dev-eza-api.git
      ref: main
```


!!! main.dart file includes configureInjectionDependencies function which has to be called before runnApp(); !!! - this is because this module uses dependecy injection to inject baseHttpService class responsible for all http calls to all endpoint classes

```
import 'package:dev_eza_api/main.dart';
void main() async {
      configureInjectionDependencies();
      runApp(const MyApp());
}
