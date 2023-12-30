import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:programming_club/features/home/model/code_chef_model.dart';
import 'package:programming_club/features/home/model/code_forces_model.dart';
import 'package:programming_club/features/home/model/home_view_model.dart';

import '../home.dart';

final initialCodeForcesDataPod = Provider<List<dynamic>>((ref) => []);

final codeForcesDataPod = NotifierProvider<CodeForcesNotifier, List<dynamic>>(
  CodeForcesNotifier.new,
  name: 'codeForcesDataPod',
);

final codeForcesDataProvider = FutureProvider<List<CodeForcesContest>>(
  (ref) async {
    final response = await ref.read(contestsRepository).getCFContests();
    return response;
  },
);

final codeChefDataProvider = FutureProvider<CodeChefContestsData>(
  (ref) async {
    final response = await ref.read(contestsRepository).getCCContests();
    return response;
  },
);

final initialChipListPod = Provider<List<PlatformChip>>((ref) => platformChips);
final selectedChipPod = Provider<PlatformChip>((ref) {
  return ref.watch(chipListPod).firstWhere((element) => element.selected);
});
final chipListPod = NotifierProvider<ChipListNotifier, List<PlatformChip>>(
  ChipListNotifier.new,
  name: 'chipListPod',
);

/// This provider holds CounternNotifier
// final counterPod = NotifierProvider<CounterNotifier, int>(
//   CounterNotifier.new,
//   name: 'counterPod',
// );
//
// ///This provider used to seup the intial value
// ///which can be overriden for test
// final intialCounterValuePod = Provider((ref) => 0);

// /// This notifier class used to build intial value
// /// from intial counter value which can be overriden.
//
// class CounterNotifier extends Notifier<int> {
//   @override
//   int build() {
//     return ref.watch(intialCounterValuePod);
//   }
//
//   ///This function updates current state increase by 1
//   void increment() => state = state + 1;
//
//   ///This function updates current state decrease by 1
//   void decrement() => state = state - 1;
// }
