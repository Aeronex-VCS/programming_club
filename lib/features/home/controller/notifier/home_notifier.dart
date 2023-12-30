import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:programming_club/features/home/model/code_chef_model.dart';
import 'package:programming_club/features/home/model/code_forces_model.dart';
import 'package:programming_club/features/home/model/home_view_model.dart';

import '../../home.dart';

class CodeForcesNotifier extends Notifier<List<dynamic>> {
  @override
  List<dynamic> build() {
    _init();
    return ref.watch(codeForcesDataPod);
  }

  Future<void> _init() async {
    state = await ref.read(contestsRepository).getCFContests();
  }
}

final contestsRepository = Provider<ContestsRepository>((ref) {
  return ContestsRepository();
});

class ChipListNotifier extends Notifier<List<PlatformChip>> {
  // selectChip(PlatformChip newChip) {
  //   updateChipList(newChip);
  //   ref.read(homeViewModelProvider).selectedPlatform = PlatformType.values
  //       .firstWhere((element) => element.toString() == newChip.name);
  // }

  @override
  List<PlatformChip> build() {
    return ref.watch(initialChipListPod);
  }

  void updateChipList(PlatformChip newChip) {
    state = state.map((chip) {
      if (chip.name == newChip.name) {
        return PlatformChip(
          name: chip.name,
          platformType: chip.platformType,
          imageConstant: chip.imageConstant,
          selected: true,
        );
      } else {
        return PlatformChip(
          name: chip.name,
          platformType: chip.platformType,
          imageConstant: chip.imageConstant,
          selected: false,
        );
      }
    }).toList();
  }
}

// class CodeForcesNotifier extends ChangeNotifier {
//   CodeForcesNotifier() {
//     _init();
//   }
//
//   final _codeForcesRepository = CodeForcesRepository();
//
//   List<CodeForcesContest> _contests = [];
//   List<CodeForcesContest> get contests => _contests;
//
//   bool _isLoading = false;
//   bool get isLoading => _isLoading;
//
//   Future<void> _init() async {
//     _isLoading = true;
//     notifyListeners();
//
//     _contests = await _codeForcesRepository.getContests();
//
//     _isLoading = false;
//     notifyListeners();
//   }
// }
//
class ContestsRepository {
  final _dio = Dio();

  Future<List<CodeForcesContest>> getCFContests() async {
    print('getContests called codeforces');
    final response = await _dio.get('https://codeforces.com/api/contest.list');

    // Contests
    final contests = response.data['result'] as List<dynamic>;
    contests.removeWhere((contest) => contest['phase'] != 'BEFORE');
    contests
        .sort((a, b) => a['startTimeSeconds'].compareTo(b['startTimeSeconds']));
    final List<CodeForcesContest> codeForcesContests = [];
    for (final contest in contests) {
      codeForcesContests.add(CodeForcesContest.fromJson(contest));
    }
    return codeForcesContests;
  }

  Future<CodeChefContestsData> getCCContests() async {
    print('getContests called codechef');
    final response =
        await _dio.get('https://www.codechef.com/api/list/contests/all');

    // Contests
    CodeChefContestsData contests =
        CodeChefContestsData.fromJson(response.data);

    return contests;
  }
}
