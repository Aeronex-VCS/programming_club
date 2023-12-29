import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:programming_club/core/theme/app_decoration.dart';
import 'package:programming_club/core/theme/app_style.dart';
import 'package:programming_club/core/utils/color_constant.dart';
import 'package:programming_club/core/utils/image_constant.dart';
import 'package:programming_club/core/utils/size_utils.dart';
import 'package:programming_club/shared/widget/custom_image_view.dart';

@RoutePage()
class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Container(
          width: double.maxFinite,
          padding: getPadding(
            left: 28,
            top: 26,
            right: 28,
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
                  top: 41,
                ),
                child: Text(
                  "Register Now",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtPlantagenetCherokee32,
                ),
              ),
              Container(
                margin: getMargin(
                  top: 27,
                  right: 1,
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
                      imagePath: ImageConstant.imgGoogle1,
                      height: getSize(
                        21,
                      ),
                      width: getSize(
                        21,
                      ),
                      margin: getMargin(
                        top: 1,
                        bottom: 1,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 52,
                        top: 2,
                      ),
                      child: Text(
                        "Sign up with Google",
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
                  right: 1,
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
                        left: 45,
                        top: 2,
                      ),
                      child: Text(
                        "Sign up with Facebook",
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
                  right: 1,
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
                      imagePath: ImageConstant.imgTwitter1,
                      height: getSize(
                        19,
                      ),
                      width: getSize(
                        19,
                      ),
                      margin: getMargin(
                        top: 3,
                        bottom: 1,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 56,
                        top: 2,
                      ),
                      child: Text(
                        "Sign up with Twitter",
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
                  top: 15,
                  right: 1,
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
                      imagePath: ImageConstant.imgAppleblacklogo,
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
                        left: 58,
                        top: 2,
                      ),
                      child: Text(
                        "Sign up with Apple",
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
                    left: 35,
                    top: 36,
                    right: 46,
                  ),
                  child: Row(
                    children: [
                      Text(
                        "Already have an account? ",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtPoppinsRegular14,
                      ),
                      Padding(
                        padding: getPadding(
                          left: 6,
                        ),
                        child: Text(
                          "Sign in",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPoppinsRegular14LightblueA200,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Spacer(),
              Container(
                width: getHorizontalSize(
                  314,
                ),
                margin: getMargin(
                  bottom: 14,
                ),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "By signing up, you agree to our ",
                        style: TextStyle(
                          color: ColorConstant.black9007f,
                          fontSize: getFontSize(
                            12,
                          ),
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      TextSpan(
                        text: "Terms of Service",
                        style: TextStyle(
                          color: ColorConstant.lightBlueA200,
                          fontSize: getFontSize(
                            12,
                          ),
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      TextSpan(
                        text: " and\nacknowledge that our ",
                        style: TextStyle(
                          color: ColorConstant.black9007f,
                          fontSize: getFontSize(
                            12,
                          ),
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      TextSpan(
                        text: "Privacy Policy ",
                        style: TextStyle(
                          color: ColorConstant.lightBlueA200,
                          fontSize: getFontSize(
                            12,
                          ),
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      TextSpan(
                        text: "applies to you.",
                        style: TextStyle(
                          color: ColorConstant.black9007f,
                          fontSize: getFontSize(
                            12,
                          ),
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
