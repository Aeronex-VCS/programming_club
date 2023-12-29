import 'package:flutter/foundation.dart';

import 'app/app.dart';
import 'bootstrap.dart';

/// flutter run -t lib/main_development.dart --flavor dev
/// This entry point should be used for development only
void main() {
  if (kDebugMode) {
    print('Running in development mode');
  }
  // AppConfig devAppConfig =
  //     AppConfig(appName: 'Programming Club Dev', flavor: 'dev');

  ///You can override your environment variable in bootstrap method here for providers
  bootstrap(() => const App());
}
