import 'app/app.dart';
import 'bootstrap.dart';

/// flutter run -t lib/main_production.dart --flavor prod
/// This entry point should be used for production only
void main() {
  print('Running in production mode');

  ///You can override your environment variable in bootstrap method here for providers
  bootstrap(() => const App());
}
