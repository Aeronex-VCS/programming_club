import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:programming_club/core/theme/app_decoration.dart';
import 'package:programming_club/core/theme/app_style.dart';
import 'package:programming_club/core/utils/color_constant.dart';
import 'package:programming_club/core/utils/image_constant.dart';
import 'package:programming_club/core/utils/size_utils.dart';
import 'package:programming_club/features/explore/view/widgets/explore_item_widget.dart';
import 'package:programming_club/shared/widget/app_bar/appbar_image.dart';
import 'package:programming_club/shared/widget/app_bar/appbar_title.dart';
import 'package:programming_club/shared/widget/app_bar/custom_app_bar.dart';
import 'package:programming_club/shared/widget/custom_button.dart';
import 'package:programming_club/shared/widget/custom_image_view.dart';
import 'package:programming_club/shared/widget/custom_search_view.dart';

@RoutePage()
class ExplorePage extends StatelessWidget {
  const ExplorePage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController searchBoxController = TextEditingController();
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        resizeToAvoidBottomInset: false,
        appBar: CustomAppBar(
          height: getVerticalSize(76),
          leadingWidth: 47,
          leading: AppbarImage(
            height: getVerticalSize(20),
            width: getHorizontalSize(19),
            svgPath: ImageConstant.imgMenu,
            margin: getMargin(
              left: 28,
              top: 15,
              bottom: 20,
            ),
          ),
          title: AppbarTitle(
            text: "Explore",
            margin: getMargin(
              left: 22,
            ),
          ),
          actions: [
            AppbarImage(
              height: getVerticalSize(21),
              width: getHorizontalSize(20),
              svgPath: ImageConstant.imgNotification,
              margin: getMargin(
                left: 28,
                top: 14,
                right: 20,
              ),
            ),
            AppbarImage(
              height: getSize(20),
              width: getSize(20),
              svgPath: ImageConstant.imgSearch,
              margin: getMargin(
                left: 20,
                top: 15,
                right: 48,
              ),
            ),
          ],
        ),
        body: Container(
          width: double.maxFinite,
          padding: getPadding(top: 2, bottom: 2),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomSearchView(
                focusNode: FocusNode(),
                controller: searchBoxController,
                hintText: "Search",
                margin: getMargin(left: 28, right: 28),
                prefix: Container(
                  margin: getMargin(left: 20, top: 17, right: 14, bottom: 17),
                  child: CustomImageView(
                    svgPath: ImageConstant.imgSearch,
                  ),
                ),
                prefixConstraints: BoxConstraints(
                  maxHeight: getVerticalSize(48),
                ),
                suffix: Padding(
                  padding: EdgeInsets.only(
                    right: getHorizontalSize(15),
                  ),
                  child: IconButton(
                    onPressed: () {
                      searchBoxController.clear();
                    },
                    icon: Icon(Icons.clear, color: Colors.grey.shade600),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: getPadding(left: 28, top: 22),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      CustomButton(
                          height: getVerticalSize(40),
                          width: getHorizontalSize(83),
                          text: "Science",
                          margin: getMargin(bottom: 1),
                          variant: ButtonVariant.FillBlack9005e,
                          shape: ButtonShape.CircleBorder20,
                          padding: ButtonPadding.PaddingAll9,
                          fontStyle: ButtonFontStyle.PoppinsRegular14Black900),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        padding: getPadding(left: 12, bottom: 1),
                        child: IntrinsicWidth(
                          child: Container(
                            padding: getPadding(top: 6, bottom: 6),
                            decoration: AppDecoration.fillBlack9005e.copyWith(
                                borderRadius: BorderRadiusStyle.circleBorder20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: getPadding(top: 4),
                                  child: Text("Lorem Ipsum",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsRegular14),
                                ),
                                Padding(
                                  padding: getPadding(left: 137, top: 5),
                                  child: Text("Technology",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                      style: AppStyle.txtPoppinsRegular14),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      CustomButton(
                          height: getVerticalSize(40),
                          width: getHorizontalSize(83),
                          text: "Design",
                          margin: getMargin(left: 12, bottom: 1),
                          variant: ButtonVariant.FillBlack9005e,
                          shape: ButtonShape.CircleBorder20,
                          padding: ButtonPadding.PaddingAll9,
                          fontStyle: ButtonFontStyle.PoppinsRegular14Black900),
                      CustomImageView(
                        imagePath: ImageConstant.imgBackground40x20,
                        height: getVerticalSize(40),
                        width: getHorizontalSize(20),
                        margin: getMargin(left: 12, top: 1),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: getPadding(top: 25),
                child: Divider(
                    height: getVerticalSize(1),
                    thickness: getVerticalSize(1),
                    color: ColorConstant.gray40087),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: getPadding(left: 20, top: 28),
                  child: Text("RECOMMENDED FOR YOU",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPoppinsSemiBold14),
                ),
              ),
              Padding(
                padding: getPadding(left: 20, top: 23, right: 20),
                child: ListView.separated(
                  physics: const NeverScrollableScrollPhysics(),
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
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return ExploreItemWidget();
                  },
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
