import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:programming_club/core/theme/app_decoration.dart';
import 'package:programming_club/core/theme/app_style.dart';
import 'package:programming_club/core/utils/color_constant.dart';
import 'package:programming_club/core/utils/image_constant.dart';
import 'package:programming_club/core/utils/size_utils.dart';
import 'package:programming_club/features/interests_people/view/widgets/listprofilepicture_item_widget.dart';
import 'package:programming_club/shared/widget/app_bar/appbar_image.dart';
import 'package:programming_club/shared/widget/app_bar/appbar_title.dart';
import 'package:programming_club/shared/widget/app_bar/custom_app_bar.dart';

@RoutePage()
class InterestsPeoplePage extends StatelessWidget {
  const InterestsPeoplePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        appBar: CustomAppBar(
          height: getVerticalSize(
            73,
          ),
          leadingWidth: 47,
          leading: AppbarImage(
            height: getVerticalSize(
              20,
            ),
            width: getHorizontalSize(
              19,
            ),
            svgPath: ImageConstant.imgMenu,
            margin: getMargin(
              left: 28,
              top: 18,
              bottom: 17,
            ),
          ),
          title: AppbarTitle(
            text: "Interests",
            margin: getMargin(
              left: 22,
            ),
          ),
          actions: [
            AppbarImage(
              height: getVerticalSize(
                21,
              ),
              width: getHorizontalSize(
                20,
              ),
              svgPath: ImageConstant.imgNotification,
              margin: getMargin(
                left: 28,
                top: 17,
                right: 17,
              ),
            ),
            AppbarImage(
              height: getSize(
                20,
              ),
              width: getSize(
                20,
              ),
              svgPath: ImageConstant.imgSearch,
              margin: getMargin(
                left: 20,
                top: 18,
                right: 45,
              ),
            ),
          ],
        ),
        body: Container(
          width: double.maxFinite,
          padding: getPadding(
            top: 14,
            bottom: 14,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: getPadding(
                  left: 28,
                  top: 3,
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: getPadding(
                        top: 1,
                      ),
                      child: Text(
                        "Topics",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtPoppinsRegular14,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 30,
                        top: 1,
                      ),
                      child: Text(
                        "People",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtPoppinsRegular14,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 31,
                        bottom: 1,
                      ),
                      child: Text(
                        "Publication",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtPoppinsRegular14,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: getVerticalSize(
                  4,
                ),
                width: getHorizontalSize(
                  48,
                ),
                margin: getMargin(
                  left: 104,
                  top: 3,
                ),
                decoration: BoxDecoration(
                  color: ColorConstant.lightBlueA200,
                ),
              ),
              Divider(
                height: getVerticalSize(
                  1,
                ),
                thickness: getVerticalSize(
                  1,
                ),
                color: ColorConstant.gray40087,
              ),
              Padding(
                padding: getPadding(
                  left: 28,
                  top: 18,
                ),
                child: Text(
                  "SEE ALL PEOPLE YOU FOLLOW",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtPoppinsSemiBold14,
                ),
              ),
              Container(
                width: double.maxFinite,
                margin: getMargin(
                  top: 19,
                ),
                padding: getPadding(
                  left: 28,
                  top: 11,
                  right: 28,
                  bottom: 11,
                ),
                decoration: AppDecoration.txtFillGray300,
                child: Text(
                  "MORE PEOPLE TO FOLLOW",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtPoppinsSemiBold14,
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: getPadding(
                    left: 28,
                    top: 24,
                    right: 28,
                  ),
                  child: ListView.separated(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (context, index) {
                      return Padding(
                        padding: getPadding(
                          top: 23.5,
                          bottom: 23.5,
                        ),
                        child: SizedBox(
                          width: getHorizontalSize(
                            319,
                          ),
                          child: Divider(
                            height: getVerticalSize(
                              1,
                            ),
                            thickness: getVerticalSize(
                              1,
                            ),
                            color: ColorConstant.gray40087,
                          ),
                        ),
                      );
                    },
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return const ListProfilePictureItemWidget();
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
