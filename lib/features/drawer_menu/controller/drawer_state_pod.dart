import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:programming_club/features/drawer_menu/drawer.dart';

final drawerMenuListVisibleProvider = Provider<bool>(
  (ref) => false,
);

final drawerNotifierProvider = NotifierProvider<DrawerNotifier, bool>(
  DrawerNotifier.new,
  name: 'drawerNotifierProvider',
);
