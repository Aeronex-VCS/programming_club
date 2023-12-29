import 'package:flutter/material.dart';
import 'package:programming_club/shared/widget/custom_button.dart';

import '../../../../core/theme/app_style.dart';
import '../../../../core/utils/image_constant.dart';
import '../../../../core/utils/size_utils.dart';
import '../../../../shared/widget/custom_image_view.dart';

// ignore: must_be_immutable
class ListProfilePictureItemWidget extends StatelessWidget {
  const ListProfilePictureItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgProfilepicture60x60,
            height: getSize(
              60,
            ),
            width: getSize(
              60,
            ),
            radius: BorderRadius.circular(
              getHorizontalSize(
                30,
              ),
            ),
            margin: getMargin(
              bottom: 2,
            ),
          ),
          Padding(
            padding: getPadding(
              left: 15,
              top: 1,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "John Doe",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtPoppinsSemiBold16,
                ),
                Container(
                  width: getHorizontalSize(
                    90,
                  ),
                  margin: getMargin(
                    top: 2,
                  ),
                  child: Text(
                    "",
                    maxLines: null,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtPoppinsRegular12Bluegray300,
                  ),
                ),
              ],
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
              bottom: 30,
            ),
          ),
        ],
      ),
    );
  }
}
