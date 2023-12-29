import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:programming_club/core/theme/app_style.dart';
import 'package:programming_club/core/utils/color_constant.dart';
import 'package:programming_club/core/utils/image_constant.dart';
import 'package:programming_club/core/utils/size_utils.dart';
import 'package:programming_club/shared/widget/app_bar/appbar_image.dart';
import 'package:programming_club/shared/widget/app_bar/custom_app_bar.dart';
import 'package:programming_club/shared/widget/custom_image_view.dart';

@RoutePage()
class NotificationsPage extends StatelessWidget {
  const NotificationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        appBar: CustomAppBar(
          height: getVerticalSize(50),
          leadingWidth: 34,
          leading: AppbarImage(
              height: getSize(24),
              width: getSize(24),
              svgPath: ImageConstant.imgArrowleft24x24,
              margin: getMargin(left: 10, top: 13, bottom: 13),
              onTap: () {
                onTapArrowleft1(context);
              }),
          centerTitle: true,
          title: Text(
            "Activity",
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtPoppinsRegular18,
          ),
          styleType: Style.bgShadowBlack90021,
        ),
        body: Container(
          width: double.maxFinite,
          padding: getPadding(top: 20, bottom: 20),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: getPadding(left: 16, right: 33),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgUnsplash93bshrwb1yq52x52,
                          height: getSize(52),
                          width: getSize(52),
                          radius: BorderRadius.circular(
                            getHorizontalSize(26),
                          ),
                          margin: getMargin(bottom: 12),
                        ),
                        Expanded(
                          child: Container(
                            width: getHorizontalSize(262),
                            margin: getMargin(left: 11),
                            child: RichText(
                                text: TextSpan(children: [
                                  TextSpan(
                                    text: "Bezaleel Nwabia ",
                                    style: TextStyle(
                                        color: ColorConstant.black900,
                                        fontSize: getFontSize(14),
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w400),
                                  ),
                                  TextSpan(
                                    text: "clapped for\n",
                                    style: TextStyle(
                                        color: ColorConstant.black9007f,
                                        fontSize: getFontSize(14),
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w400),
                                  ),
                                  TextSpan(
                                    text:
                                        "7 things you need to know about flutter state Management ",
                                    style: TextStyle(
                                        color: ColorConstant.black900,
                                        fontSize: getFontSize(14),
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w400),
                                  ),
                                  TextSpan(
                                    text: "5 Nov",
                                    style: TextStyle(
                                        color: ColorConstant.black9007f,
                                        fontSize: getFontSize(14),
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w400),
                                  )
                                ]),
                                textAlign: TextAlign.left),
                          ),
                        )
                      ]),
                ),
                Padding(
                  padding: getPadding(top: 18),
                  child: Divider(
                      height: getVerticalSize(1),
                      thickness: getVerticalSize(1),
                      color: ColorConstant.black90063),
                ),
                Padding(
                  padding: getPadding(left: 16, top: 19, right: 33),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgUnsplash3ujvzg9i2ei52x52,
                          height: getSize(52),
                          width: getSize(52),
                          radius: BorderRadius.circular(
                            getHorizontalSize(26),
                          ),
                          margin: getMargin(bottom: 12),
                        ),
                        Expanded(
                          child: Container(
                            width: getHorizontalSize(262),
                            margin: getMargin(left: 11),
                            child: RichText(
                                text: TextSpan(children: [
                                  TextSpan(
                                    text: "catalunha.mj ",
                                    style: TextStyle(
                                        color: ColorConstant.black900,
                                        fontSize: getFontSize(14),
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w400),
                                  ),
                                  TextSpan(
                                    text: "responded to\n",
                                    style: TextStyle(
                                        color: ColorConstant.black9007f,
                                        fontSize: getFontSize(14),
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w400),
                                  ),
                                  TextSpan(
                                    text:
                                        "7 things you need to know about flutter state Management ",
                                    style: TextStyle(
                                        color: ColorConstant.black900,
                                        fontSize: getFontSize(14),
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w400),
                                  ),
                                  TextSpan(
                                    text: "1 Nov",
                                    style: TextStyle(
                                        color: ColorConstant.black9007f,
                                        fontSize: getFontSize(14),
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w400),
                                  )
                                ]),
                                textAlign: TextAlign.left),
                          ),
                        )
                      ]),
                ),
                Padding(
                  padding: getPadding(top: 18),
                  child: Divider(
                      height: getVerticalSize(1),
                      thickness: getVerticalSize(1),
                      color: ColorConstant.black90063),
                ),
                Padding(
                  padding: getPadding(left: 16, top: 19, right: 38),
                  child: Row(children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgUnsplashannsvl6ag052x52,
                      height: getSize(52),
                      width: getSize(52),
                      radius: BorderRadius.circular(
                        getHorizontalSize(26),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        width: getHorizontalSize(257),
                        margin: getMargin(left: 11, top: 5, bottom: 6),
                        child: RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                text: "tisanthan panchsadram ",
                                style: TextStyle(
                                    color: ColorConstant.black900,
                                    fontSize: getFontSize(14),
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400),
                              ),
                              TextSpan(
                                text: "followed you. \n18 Oct",
                                style: TextStyle(
                                    color: ColorConstant.black9007f,
                                    fontSize: getFontSize(14),
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400),
                              )
                            ]),
                            textAlign: TextAlign.left),
                      ),
                    )
                  ]),
                ),
                Padding(
                  padding: getPadding(top: 31, bottom: 5),
                  child: Divider(
                      height: getVerticalSize(1),
                      thickness: getVerticalSize(1),
                      color: ColorConstant.black90063),
                )
              ]),
        ),
      ),
    );
  }

  onTapArrowleft1(BuildContext context) {
    context.router.pop();
  }
}
