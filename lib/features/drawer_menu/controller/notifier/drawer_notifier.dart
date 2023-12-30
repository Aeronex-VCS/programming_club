import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../drawer.dart';

class DrawerNotifier extends Notifier<bool> {
  @override
  bool build() {
    return ref.watch(drawerMenuListVisibleProvider);
  }

  void toggleDrawer() => state = !state;
}
