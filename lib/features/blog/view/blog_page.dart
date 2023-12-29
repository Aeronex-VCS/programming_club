import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:programming_club/core/theme/app_style.dart';
import 'package:programming_club/core/utils/color_constant.dart';
import 'package:programming_club/core/utils/image_constant.dart';
import 'package:programming_club/core/utils/size_utils.dart';
import 'package:programming_club/shared/widget/app_bar/appbar_image.dart';
import 'package:programming_club/shared/widget/app_bar/appbar_subtitle_1.dart';
import 'package:programming_club/shared/widget/app_bar/appbar_subtitle_2.dart';
import 'package:programming_club/shared/widget/app_bar/custom_app_bar.dart';
import 'package:programming_club/shared/widget/custom_image_view.dart';

@RoutePage()
class BlogPage extends StatelessWidget {
  const BlogPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        appBar: CustomAppBar(
          height: getVerticalSize(
            59,
          ),
          title: AppbarSubtitle2(
            text: "John Doe in Lorem Ipsum",
            margin: getMargin(
              left: 28,
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
                right: 22,
                bottom: 4,
              ),
            ),
          ],
        ),
        body: Container(
          width: double.maxFinite,
          padding: getPadding(
            left: 27,
            top: 14,
            right: 27,
            bottom: 14,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: getHorizontalSize(
                  263,
                ),
                margin: getMargin(
                  left: 1,
                  right: 56,
                ),
                child: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit",
                  maxLines: null,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtPoppinsSemiBold24,
                ),
              ),
              Container(
                width: getHorizontalSize(
                  319,
                ),
                margin: getMargin(
                  left: 1,
                  top: 12,
                ),
                child: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                  maxLines: null,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtPoppinsMediumItalic14,
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgBlogthumbnail80x80,
                height: getVerticalSize(
                  167,
                ),
                width: getHorizontalSize(
                  320,
                ),
                radius: BorderRadius.circular(
                  getHorizontalSize(
                    5,
                  ),
                ),
                margin: getMargin(
                  top: 19,
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: getPadding(
                    top: 12,
                  ),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Image Credit: ",
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
                          text: "Lorem Ipsum",
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
              ),
              Container(
                width: getHorizontalSize(
                  295,
                ),
                margin: getMargin(
                  left: 1,
                  top: 30,
                  right: 24,
                  bottom: 5,
                ),
                child: Text(
                  "Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non",
                  maxLines: null,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtPoppinsRegular14,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
