import 'package:flutter/material.dart';
import 'package:programming_club/core/theme/app_style.dart';
import 'package:programming_club/core/utils/color_constant.dart';
import 'package:programming_club/core/utils/image_constant.dart';
import 'package:programming_club/core/utils/size_utils.dart';
import 'package:programming_club/shared/widget/custom_image_view.dart';

// ignore: must_be_immutable
class HomeItemWidget extends StatelessWidget {
  HomeItemWidget();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "LOGO",
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtPoppinsSemiBold12,
            ),
            Padding(
              padding: getPadding(
                top: 6,
              ),
              child: Text(
                "Lorem Ipsum dolor set amet",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtPoppinsSemiBold16,
              ),
            ),
            Padding(
              padding: getPadding(
                top: 13,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: getPadding(
                      top: 1,
                    ),
                    child: Text(
                      "16 days ago",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPoppinsMedium12,
                    ),
                  ),
                  Container(
                    height: getSize(
                      3,
                    ),
                    width: getSize(
                      3,
                    ),
                    margin: getMargin(
                      left: 10,
                      top: 8,
                      bottom: 8,
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
                  Padding(
                    padding: getPadding(
                      left: 12,
                      bottom: 1,
                    ),
                    child: Text(
                      "3 min read",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPoppinsMedium12,
                    ),
                  ),
                  CustomImageView(
                    svgPath: ImageConstant.imgBookmark,
                    height: getVerticalSize(
                      17,
                    ),
                    width: getHorizontalSize(
                      13,
                    ),
                    margin: getMargin(
                      left: 64,
                      bottom: 2,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        CustomImageView(
          imagePath: ImageConstant.imgBlogthumbnail80x80,
          height: getSize(
            80,
          ),
          width: getSize(
            80,
          ),
          radius: BorderRadius.circular(
            getHorizontalSize(
              5,
            ),
          ),
          margin: getMargin(
            left: 15,
            bottom: 1,
          ),
        ),
      ],
    );
  }
}
