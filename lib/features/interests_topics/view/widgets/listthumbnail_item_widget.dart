import 'package:flutter/material.dart';
import 'package:programming_club/core/theme/app_style.dart';
import 'package:programming_club/core/utils/image_constant.dart';
import 'package:programming_club/core/utils/size_utils.dart';
import 'package:programming_club/shared/widget/custom_button.dart';
import 'package:programming_club/shared/widget/custom_image_view.dart';

class ListThumbnailItemWidget extends StatelessWidget {
  const ListThumbnailItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgBlogthumbnail80x80,
            height: getSize(
              40,
            ),
            width: getSize(
              40,
            ),
            radius: BorderRadius.circular(
              getHorizontalSize(
                5,
              ),
            ),
          ),
          Padding(
            padding: getPadding(
              left: 17,
              top: 9,
              bottom: 9,
            ),
            child: Text(
              "",
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtPoppinsRegular14Gray900,
            ),
          ),
          const Spacer(),
          CustomButton(
            height: getVerticalSize(
              32,
            ),
            width: getHorizontalSize(
              87,
            ),
            text: "Follow",
            margin: getMargin(
              top: 4,
              bottom: 4,
            ),
          ),
        ],
      ),
    );
  }
}
