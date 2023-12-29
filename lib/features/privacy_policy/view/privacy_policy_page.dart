import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:programming_club/core/theme/app_style.dart';
import 'package:programming_club/core/utils/color_constant.dart';
import 'package:programming_club/core/utils/image_constant.dart';
import 'package:programming_club/core/utils/size_utils.dart';
import 'package:programming_club/shared/widget/app_bar/appbar_image.dart';
import 'package:programming_club/shared/widget/app_bar/appbar_subtitle_1.dart';
import 'package:programming_club/shared/widget/app_bar/appbar_subtitle_2.dart';
import 'package:programming_club/shared/widget/app_bar/custom_app_bar.dart';

@RoutePage()
class PrivacyPolicyPage extends StatelessWidget {
  const PrivacyPolicyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        appBar: CustomAppBar(
          height: getVerticalSize(
            63,
          ),
          title: AppbarSubtitle2(
            text: "John Doe in Lorem Ipsum",
            margin: getMargin(
              left: 15,
            ),
          ),
          actions: [
            Container(
              height: getSize(
                3,
              ),
              width: getSize(
                3,
              ),
              margin: getMargin(
                left: 10,
                top: 34,
                right: 7,
                bottom: 10,
              ),
              decoration: BoxDecoration(
                color: ColorConstant.black90087,
                borderRadius: BorderRadius.circular(
                  getHorizontalSize(
                    1,
                  ),
                ),
              ),
            ),
            AppbarSubtitle1(
              text: "29 July",
              margin: getMargin(
                left: 8,
                top: 26,
                right: 7,
              ),
            ),
            AppbarImage(
              height: getSize(
                36,
              ),
              width: getSize(
                36,
              ),
              svgPath: ImageConstant.imgCheckmark,
              margin: getMargin(
                left: 48,
                top: 7,
                right: 35,
                bottom: 4,
              ),
            ),
          ],
        ),
        body: Container(
          width: double.maxFinite,
          padding: getPadding(
            left: 16,
            right: 16,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: getPadding(
                  top: 8,
                ),
                child: Text(
                  "Privacy policy",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtPoppinsSemiBold18,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 5,
                ),
                child: Text(
                  "Effective: September 1, 2020",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtPoppinsLight14,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 19,
                ),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "You can see our previous Terms ",
                        style: TextStyle(
                          color: ColorConstant.black900,
                          fontSize: getFontSize(
                            12,
                          ),
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      TextSpan(
                        text: "here",
                        style: TextStyle(
                          color: ColorConstant.black900,
                          fontSize: getFontSize(
                            12,
                          ),
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              Container(
                width: getHorizontalSize(
                  343,
                ),
                margin: getMargin(
                  top: 30,
                ),
                child: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                  maxLines: null,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtPoppinsRegular14Black900a9,
                ),
              ),
              Container(
                width: getHorizontalSize(
                  343,
                ),
                margin: getMargin(
                  top: 29,
                ),
                child: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                  maxLines: null,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtPoppinsRegular14Black900a9,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 58,
                ),
                child: Text(
                  "CONTENT",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtPoppinsMedium18Black900,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 21,
                ),
                child: Row(
                  children: [
                    Container(
                      height: getSize(
                        3,
                      ),
                      width: getSize(
                        3,
                      ),
                      margin: getMargin(
                        top: 9,
                        bottom: 8,
                      ),
                      decoration: BoxDecoration(
                        color: ColorConstant.gray70001,
                        borderRadius: BorderRadius.circular(
                          getHorizontalSize(
                            1,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 19,
                      ),
                      child: Text(
                        "Collection of Information",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtPoppinsRegular14Black900a9,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 7,
                ),
                child: Row(
                  children: [
                    Container(
                      height: getSize(
                        3,
                      ),
                      width: getSize(
                        3,
                      ),
                      margin: getMargin(
                        top: 13,
                        bottom: 4,
                      ),
                      decoration: BoxDecoration(
                        color: ColorConstant.gray70001,
                        borderRadius: BorderRadius.circular(
                          getHorizontalSize(
                            1,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 19,
                      ),
                      child: Text(
                        "Use of Information",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtPoppinsRegular14Black900a9,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 14,
                ),
                child: Row(
                  children: [
                    Container(
                      height: getSize(
                        3,
                      ),
                      width: getSize(
                        3,
                      ),
                      margin: getMargin(
                        top: 10,
                        bottom: 9,
                      ),
                      decoration: BoxDecoration(
                        color: ColorConstant.gray70001,
                        borderRadius: BorderRadius.circular(
                          getHorizontalSize(
                            1,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 19,
                      ),
                      child: Text(
                        "Sharing of Information",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtPoppinsRegular14Black900a9,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 10,
                ),
                child: Row(
                  children: [
                    Container(
                      height: getSize(
                        3,
                      ),
                      width: getSize(
                        3,
                      ),
                      margin: getMargin(
                        top: 10,
                        bottom: 9,
                      ),
                      decoration: BoxDecoration(
                        color: ColorConstant.gray70001,
                        borderRadius: BorderRadius.circular(
                          getHorizontalSize(
                            1,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 19,
                      ),
                      child: Text(
                        "Third-Party Embeds",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtPoppinsRegular14Black900a9,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 10,
                ),
                child: Row(
                  children: [
                    Container(
                      height: getSize(
                        3,
                      ),
                      width: getSize(
                        3,
                      ),
                      margin: getMargin(
                        top: 10,
                        bottom: 9,
                      ),
                      decoration: BoxDecoration(
                        color: ColorConstant.gray70001,
                        borderRadius: BorderRadius.circular(
                          getHorizontalSize(
                            1,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 19,
                      ),
                      child: Text(
                        "Your Choices",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtPoppinsRegular14Black900a9,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
