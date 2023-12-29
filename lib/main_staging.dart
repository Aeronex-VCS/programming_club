import 'app/app.dart';
import 'bootstrap.dart';

/// flutter run -t lib/main_staging.dart --flavor staging
/// This entry point should be used for staging only
void main() {
  print('Running in staging mode');

  ///You can override your environment variable in bootstrap method here for providers
  bootstrap(() => const App());
}
