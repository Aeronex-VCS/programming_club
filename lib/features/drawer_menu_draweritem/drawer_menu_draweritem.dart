import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:programming_club/core/theme/app_style.dart';
import 'package:programming_club/core/utils/image_constant.dart';
import 'package:programming_club/core/utils/size_utils.dart';

class DrawerMenuDrawerItem extends StatefulWidget {
  const DrawerMenuDrawerItem({super.key});

  @override
  State<DrawerMenuDrawerItem> createState() => _DrawerMenuDrawerItemState();
}

class _DrawerMenuDrawerItemState extends State<DrawerMenuDrawerItem> {
  @override
  Widget build(BuildContext context) {
    bool expanded = false;
    return Drawer(
      child: ListView(
        padding: getPadding(left: 0, top: 0),
        children: [
          // Padding(
          //   padding: getPadding(left: 1, top: 13),
          //   child: Row(
          //     children: [
          //       CustomImageView(
          //         imagePath: ImageConstant.imgProfilepicture,
          //         height: getVerticalSize(62),
          //         width: getHorizontalSize(59),
          //       ),
          //       Padding(
          //         padding: getPadding(left: 16, top: 5, bottom: 7),
          //         child: Column(
          //           crossAxisAlignment: CrossAxisAlignment.start,
          //           mainAxisAlignment: MainAxisAlignment.start,
          //           children: [
          //             Text(
          //               "Welcome",
          //               overflow: TextOverflow.ellipsis,
          //               textAlign: TextAlign.left,
          //               style: AppStyle.txtPoppinsRegular14Gray40001,
          //             ),
          //             Padding(
          //               padding: getPadding(top: 2),
          //               child: Text(
          //                 "John Doe",
          //                 overflow: TextOverflow.ellipsis,
          //                 textAlign: TextAlign.left,
          //                 style: AppStyle.txtPoppinsMedium18,
          //               ),
          //             ),
          //           ],
          //         ),
          //       )
          //     ],
          //   ),
          // ),
          DrawerHeader(
            duration: const Duration(milliseconds: 300),
            margin: getMargin(left: 0, top: 0),
            padding: getPadding(left: 0, top: 0),
            child: UserAccountsDrawerHeader(
              accountName: const Text(
                "Guest",
                style: TextStyle(fontSize: 18),
              ),
              accountEmail: const Text("xyz@gmail.com"),
              currentAccountPictureSize: const Size.square(50),
              currentAccountPicture: CircleAvatar(
                maxRadius: 50,
                minRadius: 50,
                backgroundImage: AssetImage(ImageConstant.imgProfilepicture),
              ),
              onDetailsPressed: () {
                expanded = !expanded;
              },
            ),
          ),
          // ListTile(
          //   leading: const Icon(Icons.home),
          //   title: Text(
          //     "Home",
          //     overflow: TextOverflow.ellipsis,
          //     textAlign: TextAlign.left,
          //     style: AppStyle.txtPoppinsMedium18,
          //   ),
          //   onTap: () {
          //     context.router.pushNamed('/home');
          //   },
          // ),
          // ListTile(
          //   leading: const Icon(Icons.person),
          //   title: const Text(' My Profile '),
          //   onTap: () {
          //     Navigator.pop(context);
          //   },
          // ),
          // ListTile(
          //   leading: const Icon(Icons.book),
          //   title: const Text(' My Course '),
          //   onTap: () {
          //     Navigator.pop(context);
          //   },
          // ),
          // ListTile(
          //   leading: const Icon(Icons.workspace_premium),
          //   title: const Text(' Go Premium '),
          //   onTap: () {
          //     Navigator.pop(context);
          //   },
          // ),
          // ListTile(
          //   leading: const Icon(Icons.video_label),
          //   title: const Text(' Saved Videos '),
          //   onTap: () {
          //     Navigator.pop(context);
          //   },
          // ),
          // ListTile(
          //   leading: const Icon(Icons.edit),
          //   title: const Text(' Edit Profile '),
          //   onTap: () {
          //     Navigator.pop(context);
          //   },
          // ),
          if (expanded) ...<Widget>[
            ListTile(
              leading: const Icon(Icons.settings),
              title: Text(
                'Settings',
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtPoppinsMedium18,
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.help),
              title: Text(
                'Help',
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtPoppinsMedium18,
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.feedback),
              title: Text(
                'Feedback',
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtPoppinsMedium18,
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.share),
              title: Text(
                'Share',
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtPoppinsMedium18,
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.rate_review),
              title: Text(
                'Rate Us',
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtPoppinsMedium18,
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.info),
              title: Text(
                'Terms and Conditions',
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtPoppinsMedium18,
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.privacy_tip),
              title: Text(
                'Privacy Policy',
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtPoppinsMedium18,
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: Text(
                'LogOut',
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtPoppinsMedium18,
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
          // Padding(
          //   padding: getPadding(top: 34),
          //   child: Divider(
          //     height: getVerticalSize(1),
          //     thickness: getVerticalSize(1),
          //     // color: ColorConstant.black90067,
          //     indent: getHorizontalSize(1),
          //   ),
          // ),
          // GestureDetector(
          //   onTap: () {
          //     onTapTxtReadingList(context);
          //   },
          //   child: Padding(
          //     padding: getPadding(left: 1, top: 24),
          //     child: Text(
          //       "Interests",
          //       overflow: TextOverflow.ellipsis,
          //       textAlign: TextAlign.left,
          //       style: AppStyle.txtPoppinsMedium18,
          //     ),
          //   ),
          // ),
          // GestureDetector(
          //   onTap: () {
          //     onTapTxtTermAndCondition(context);
          //   },
          //   child: Padding(
          //     padding: getPadding(left: 1, top: 25),
          //     child: Text(
          //       "Terms and conditions",
          //       overflow: TextOverflow.ellipsis,
          //       textAlign: TextAlign.left,
          //       style: AppStyle.txtPoppinsMedium18,
          //     ),
          //   ),
          // ),
          // GestureDetector(
          //   onTap: () {
          //     onTapTxtNewStory(context);
          //   },
          //   child: Padding(
          //     padding: getPadding(left: 1, top: 28),
          //     child: Text(
          //       "Privacy policy",
          //       overflow: TextOverflow.ellipsis,
          //       textAlign: TextAlign.left,
          //       style: AppStyle.txtPoppinsMedium18,
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }

  onTapTxtHome(BuildContext context) {
    context.router.pushNamed('/home');
  }

  // onTapTxtAudio(BuildContext context) {
  onTapTxtReadingList(BuildContext context) {
    context.router.pushNamed('/interests');
  }

  onTapTxtTermAndCondition(BuildContext context) {
    context.router.pushNamed('/terms-and-conditions');
  }

  onTapTxtNewStory(BuildContext context) {
    context.router.pushNamed('/privacy-policy');
  }
}
