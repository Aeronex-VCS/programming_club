import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:programming_club/core/theme/app_decoration.dart';
import 'package:programming_club/core/theme/app_style.dart';
import 'package:programming_club/core/utils/color_constant.dart';
import 'package:programming_club/core/utils/image_constant.dart';
import 'package:programming_club/core/utils/size_utils.dart';
import 'package:programming_club/shared/widget/custom_image_view.dart';

@RoutePage()
class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Container(
          width: double.maxFinite,
          padding: getPadding(
            left: 27,
            top: 26,
            right: 27,
            bottom: 26,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgDhiwiseblackmonogram,
                height: getSize(
                  59,
                ),
                width: getSize(
                  59,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 36,
                ),
                child: Text(
                  "Welcome back.",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtPlantagenetCherokee32,
                ),
              ),
              Container(
                margin: getMargin(
                  left: 1,
                  top: 34,
                  right: 2,
                ),
                padding: getPadding(
                  left: 15,
                  top: 8,
                  right: 15,
                  bottom: 8,
                ),
                decoration: AppDecoration.outlineBlack900.copyWith(
                  borderRadius: BorderRadiusStyle.circleBorder20,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgGoogle1,
                      height: getSize(
                        19,
                      ),
                      width: getSize(
                        19,
                      ),
                      margin: getMargin(
                        top: 5,
                        bottom: 3,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 61,
                        top: 6,
                      ),
                      child: Text(
                        "Sign in with Google",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtPoppinsRegular14,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: getMargin(
                  left: 1,
                  top: 14,
                  right: 2,
                ),
                padding: getPadding(
                  left: 15,
                  top: 10,
                  right: 15,
                  bottom: 10,
                ),
                decoration: AppDecoration.outlineBlack900.copyWith(
                  borderRadius: BorderRadiusStyle.circleBorder20,
                ),
                child: Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgFacebook1,
                      height: getSize(
                        20,
                      ),
                      width: getSize(
                        20,
                      ),
                      margin: getMargin(
                        top: 1,
                        bottom: 2,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 51,
                        top: 2,
                      ),
                      child: Text(
                        "Sign in with Facebook",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtPoppinsRegular14,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: getMargin(
                  left: 1,
                  top: 14,
                  right: 2,
                ),
                padding: getPadding(
                  left: 15,
                  top: 11,
                  right: 15,
                  bottom: 11,
                ),
                decoration: AppDecoration.outlineBlack900.copyWith(
                  borderRadius: BorderRadiusStyle.circleBorder20,
                ),
                child: Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgTwitter1,
                      height: getSize(
                        19,
                      ),
                      width: getSize(
                        19,
                      ),
                      margin: getMargin(
                        top: 2,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 63,
                      ),
                      child: Text(
                        "Sign in with Twitter",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtPoppinsRegular14,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: getMargin(
                  top: 14,
                  right: 3,
                ),
                padding: getPadding(
                  left: 16,
                  top: 11,
                  right: 16,
                  bottom: 11,
                ),
                decoration: AppDecoration.outlineBlack900.copyWith(
                  borderRadius: BorderRadiusStyle.circleBorder20,
                ),
                child: Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgAppleblacklogo,
                      height: getSize(
                        20,
                      ),
                      width: getSize(
                        20,
                      ),
                      margin: getMargin(
                        bottom: 3,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 65,
                        top: 1,
                      ),
                      child: Text(
                        "Sign in with Apple",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtPoppinsRegular14,
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: getPadding(
                    left: 39,
                    top: 36,
                    right: 52,
                    bottom: 5,
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: getPadding(
                          bottom: 1,
                        ),
                        child: Text(
                          "Don’t have an account? ",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPoppinsRegular14,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 7,
                          top: 1,
                        ),
                        child: Text(
                          "Sign up.",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPoppinsRegular14LightblueA200,
                        ),
                      ),
                    ],
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
