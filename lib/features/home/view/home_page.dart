import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:programming_club/core/theme/app_style.dart';
import 'package:programming_club/core/utils/color_constant.dart';
import 'package:programming_club/core/utils/image_constant.dart';
import 'package:programming_club/core/utils/size_utils.dart';
import 'package:programming_club/features/drawer_menu_draweritem/drawer_menu_draweritem.dart';

import 'widgets/home_item_widget.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
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
                      Padding(
                        padding: getPadding(left: 1),
                        child: Chip(
                          label: const Text("CodeForces"),
                          avatar: CircleAvatar(
                            backgroundImage: AssetImage(
                              ImageConstant.imgCodeforces,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: getPadding(left: 12),
                        child: Chip(
                          label: const Text("CodeChef"),
                          avatar: CircleAvatar(
                            backgroundImage: AssetImage(
                              ImageConstant.imgCodechef,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: getPadding(left: 12),
                        child: Chip(
                          label: const Text("LeetCode"),
                          avatar: CircleAvatar(
                            backgroundImage: AssetImage(
                              ImageConstant.imgLeetcode,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: getPadding(left: 12),
                        child: Chip(
                          label: const Text("HackerRank"),
                          avatar: CircleAvatar(
                            backgroundImage: AssetImage(
                              ImageConstant.imgHackerrank,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: getPadding(left: 12),
                        child: Chip(
                          label: const Text("HackerEarth"),
                          avatar: CircleAvatar(
                            backgroundImage: AssetImage(
                              ImageConstant.imgHackerearth,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                padding: getPadding(top: 24, left: 24, right: 24),
                child: IntrinsicWidth(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      for (int i = 0; i < 10; i++) ...[
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              height: getSize(80),
                              width: getSize(80),
                              decoration: BoxDecoration(
                                color: ColorConstant.gray400,
                                borderRadius: BorderRadius.circular(
                                  getHorizontalSize(40),
                                ),
                              ),
                            ),
                            Container(
                              width: getHorizontalSize(72),
                              margin: getMargin(top: 8),
                              child: Text(
                                "Lorem Ipsum Dolor",
                                maxLines: null,
                                textAlign: TextAlign.center,
                                style: AppStyle.txtPoppinsRegular12,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                      ]
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              Divider(
                height: getVerticalSize(1),
                thickness: getVerticalSize(1),
                color: ColorConstant.gray40087,
              ),
              Padding(
                padding: getPadding(left: 20, top: 27),
                child: Text(
                  "TOP STORIES",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtPoppinsSemiBold14,
                ),
              ),
              Expanded(
                child: Padding(
                  padding: getPadding(left: 20, top: 19, right: 20),
                  child: ListView.separated(
                    scrollDirection: Axis.vertical,
                    physics: const BouncingScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (context, index) {
                      return Padding(
                        padding: getPadding(top: 23.0, bottom: 23.0),
                        child: SizedBox(
                          width: getHorizontalSize(335),
                          child: Divider(
                              height: getVerticalSize(1),
                              thickness: getVerticalSize(1),
                              color: ColorConstant.gray40087),
                        ),
                      );
                    },
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return HomeItemWidget();
                    },
                  ),
                ),
              ),
              Padding(
                padding: getPadding(top: 26, bottom: 5),
                child: Divider(
                  height: getVerticalSize(1),
                  thickness: getVerticalSize(1),
                  color: ColorConstant.gray40087,
                  indent: getHorizontalSize(20),
                  endIndent: getHorizontalSize(20),
                ),
              ),
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
