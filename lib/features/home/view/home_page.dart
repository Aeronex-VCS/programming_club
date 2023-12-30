import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:programming_club/core/theme/app_style.dart';
import 'package:programming_club/core/utils/date_time_utils.dart';
import 'package:programming_club/core/utils/image_constant.dart';
import 'package:programming_club/core/utils/size_utils.dart';
import 'package:programming_club/features/drawer_menu/view/drawer_menu.dart';
import 'package:programming_club/features/home/model/home_view_model.dart';

import '../../../core/router/router.gr.dart';
import '../home.dart';

@RoutePage()
class HomePage extends ConsumerWidget {
  HomePage({super.key});
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final vm = ref.read(homeViewModelProvider);
    final codeForcesData = ref.watch(codeForcesDataProvider);
    final codeChefData = ref.watch(codeChefDataProvider);
    // final selectedPlatform = ref.watch(homeViewModelProvider
    //     .select((HomeViewModel vm) => vm.selectedPlatform));
    final selectedChip = ref.watch(selectedChipPod);
    final platformChipsPod = ref.watch(chipListPod);
    // print("selected platform: $selectedPlatform");
    // final cfData = ref.watch(codeForcesDataPod);
    // print("cfData: $cfData");
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        // backgroundColor: ColorConstant.whiteA700,
        drawer: const DrawerMenuDrawerItem(),
        appBar: AppBar(
          leading: IconButton(
            onPressed: () => onTapMenu(context),
            icon: const Icon(
              Icons.menu,
            ),
          ),
          title: Text(
            "Programming Club",
            style: TextStyle(
              fontSize: getFontSize(18),
              fontWeight: FontWeight.w600,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.notifications),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search),
            ),
          ],
        ),
        body: Container(
          width: double.maxFinite,
          padding: getPadding(top: 8, bottom: 8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: getPadding(left: 24),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ...platformChipsPod.map(
                        (chip) => Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: GestureDetector(
                            onTap: () {
                              ref
                                  .read(chipListPod.notifier)
                                  .updateChipList(chip);
                            },
                            child: Chip(
                              // padding: getPadding(
                              //   left: 12,
                              //   right: 12,
                              //   top: 8,
                              //   bottom: 8,
                              // ),
                              // decoration: BoxDecoration(
                              //   borderRadius: BorderRadius.circular(8),
                              // color: selectedChip == chip
                              //     ? ColorConstant.blue50
                              //     : Theme.of(context)
                              //         .appBarTheme
                              //         .backgroundColor,
                              // border: Border.all(
                              //   color: selectedChip == chip
                              //       ? ColorConstant.blue50
                              //       : ColorConstant.black90067,
                              // ),
                              // ),
                              label: Text(chip.name),
                              avatar: CircleAvatar(
                                backgroundImage: AssetImage(chip.imageConstant),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Padding(
                padding: getPadding(left: 24),
                child: Text(
                  "Upcoming Contests (${selectedChip.name})",
                  style: AppStyle.txtPoppinsSemiBold16Black900,
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              switch (selectedChip.platformType) {
                PlatformType.codeforces => codeForcesData.when(
                    data: (data) {
                      return Expanded(
                        child: RefreshIndicator(
                          onRefresh: () async {
                            var d = ref.refresh(codeForcesDataProvider);
                            if (kDebugMode) {
                              print("d: $d");
                            }
                          },
                          child: ListView.builder(
                            itemCount: data.length,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: getPadding(
                                  left: 24,
                                  right: 24,
                                  top: 8,
                                  bottom: 8,
                                ),
                                child: Card(
                                  elevation: 4,
                                  child: ListTile(
                                    leading: CircleAvatar(
                                      backgroundImage: AssetImage(
                                        ImageConstant.imgCodeforces,
                                      ),
                                    ),
                                    title: Text(
                                      data[index].name,
                                      style: TextStyle(
                                        fontSize: getFontSize(16),
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    subtitle: Text(
                                      "CodeForces\n${formatUnixTimestamp(data[index].startTimeSeconds!)}",
                                      style: TextStyle(
                                        fontSize: getFontSize(14),
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    trailing: IconButton(
                                      onPressed: () {
                                        context.router.push(ContestDetailsRoute(
                                            args: data[index]));
                                      },
                                      icon: const Icon(Icons.arrow_forward_ios),
                                    ),
                                    onTap: () {
                                      context.router.push(ContestDetailsRoute(
                                          args: data[index]));
                                    },
                                    // isThreeLine: true,
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      );
                    },
                    error: (error, stackTrace) => Text(error.toString()),
                    loading: () => const CircularProgressIndicator(),
                  ),
                PlatformType.codechef => codeChefData.when(
                    data: (data) {
                      return Expanded(
                        child: RefreshIndicator(
                          onRefresh: () async {
                            var d = ref.refresh(codeChefDataProvider);
                            if (kDebugMode) {
                              print("d: $d");
                            }
                          },
                          child: ListView.builder(
                            itemCount: data.futureCodeChefContests.length,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: getPadding(
                                  left: 24,
                                  right: 24,
                                  top: 8,
                                  bottom: 8,
                                ),
                                child: Card(
                                  elevation: 4,
                                  child: ListTile(
                                    leading: CircleAvatar(
                                      backgroundImage: AssetImage(
                                        ImageConstant.imgCodechef,
                                      ),
                                    ),
                                    title: Text(
                                      data.futureCodeChefContests[index]
                                          .contestName,
                                      style: TextStyle(
                                        fontSize: getFontSize(16),
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    subtitle: Text(
                                      "CodeChef\n${data.futureCodeChefContests[index].contestStartDate}",
                                      style: TextStyle(
                                        fontSize: getFontSize(14),
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    trailing: IconButton(
                                      onPressed: () {
                                        // context.router.push(ContestDetailsRoute(
                                        //     args: data.futureCodeChefContests[index]));
                                      },
                                      icon: const Icon(Icons.arrow_forward_ios),
                                    ),
                                    onTap: () {
                                      // context.router.push(ContestDetailsRoute(
                                      //     args: data.futureCodeChefContests[index]));
                                    },
                                    // isThreeLine: true,
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      );
                    },
                    error: (error, stackTrace) => Text(error.toString()),
                    loading: () => const CircularProgressIndicator(),
                  ),
                PlatformType.leetcode => const Text("LeetCode"),
                PlatformType.hackerrank => const Text("HackerRank"),
                PlatformType.hackerearth => const Text("HackerEarth"),
                PlatformType.atcoder => const Text("AtCoder"),
                PlatformType.spoj => const Text("SPOJ"),
                PlatformType.all => const Text("All Platforms"),
              },

              // Consumer(builder: (context, ref, child) {
              //   final data = ref.watch(codeForcesDataPod);
              //   return data.when(
              //     data: (data) {
              //       return Expanded(
              //         child: RefreshIndicator(
              //           onRefresh: _refresh,
              //           child: ListView.builder(
              //             itemCount: data.length,
              //             itemBuilder: (context, index) {
              //               return Padding(
              //                 padding: getPadding(
              //                   left: 24,
              //                   right: 24,
              //                   top: 8,
              //                   bottom: 8,
              //                 ),
              //                 child: Card(
              //                   elevation: 4,
              //                   child: ListTile(
              //                     leading: CircleAvatar(
              //                       backgroundImage: AssetImage(
              //                         ImageConstant.imgCodeforces,
              //                       ),
              //                     ),
              //                     title: Text(
              //                       data[index].name,
              //                       style: TextStyle(
              //                         fontSize: getFontSize(16),
              //                         fontWeight: FontWeight.w600,
              //                       ),
              //                     ),
              //                     subtitle: Text(
              //                       "CodeForces",
              //                       style: TextStyle(
              //                         fontSize: getFontSize(14),
              //                         fontWeight: FontWeight.w400,
              //                       ),
              //                     ),
              //                     trailing: IconButton(
              //                       onPressed: () {},
              //                       icon: const Icon(Icons.arrow_forward_ios),
              //                     ),
              //                   ),
              //                 ),
              //               );
              //             },
              //           ),
              //         ),
              //       );
              //     },
              //     error: (error, stackTrace) => Text(error.toString()),
              //     loading: () => const CircularProgressIndicator(),
              //   );
              // }),
            ],
          ),
        ),
      ),
    );
  }

  onTapMenu(BuildContext context) {
    _scaffoldKey.currentState?.openDrawer();
  }
}
