// Assuming PlatformType is an enum representing different platforms
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:programming_club/core/utils/image_constant.dart';

enum PlatformType {
  codeforces,
  codechef,
  leetcode,
  atcoder,
  spoj,
  hackerearth,
  hackerrank,
  all,
}

// Inside your HomeViewModel, you might have a selectedPlatform state
final homeViewModelProvider = ChangeNotifierProvider((ref) => HomeViewModel());

class HomeViewModel extends ChangeNotifier {
  PlatformType _selectedPlatform = PlatformType.codeforces;

  PlatformType get selectedPlatform => _selectedPlatform;

  set selectedPlatform(PlatformType newPlatform) {
    _selectedPlatform = newPlatform;
    notifyListeners();
  }

// Other ViewModel functionalities...
}

class PlatformChip {
  final String name;
  final String imageConstant;
  final bool selected;
  final PlatformType platformType;

  PlatformChip(
      {required this.name,
      required this.imageConstant,
      required this.platformType,
      required this.selected});
}

final List<PlatformChip> platformChips = [
  PlatformChip(
    name: "All Platforms",
    imageConstant: ImageConstant.imgAllPlatforms,
    platformType: PlatformType.all,
    selected: false,
  ),
  PlatformChip(
      name: "CodeForces",
      platformType: PlatformType.codeforces,
      imageConstant: ImageConstant.imgCodeforces,
      selected: true),
  PlatformChip(
      name: "CodeChef",
      platformType: PlatformType.codechef,
      imageConstant: ImageConstant.imgCodechef,
      selected: false),
  PlatformChip(
      name: "LeetCode",
      platformType: PlatformType.leetcode,
      imageConstant: ImageConstant.imgLeetcode,
      selected: false),
  PlatformChip(
      name: "HackerRank",
      platformType: PlatformType.hackerrank,
      imageConstant: ImageConstant.imgHackerrank,
      selected: false),
  PlatformChip(
      name: "HackerEarth",
      platformType: PlatformType.hackerearth,
      imageConstant: ImageConstant.imgHackerearth,
      selected: false),
  // Add more platforms as needed
];
