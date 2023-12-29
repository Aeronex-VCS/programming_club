import 'package:flutter/material.dart';

import '../../../core/theme/app_style.dart';
import '../../../core/utils/color_constant.dart';

class AppbarSubtitle4 extends StatelessWidget {
  AppbarSubtitle4({required this.text, this.margin, this.onTap});

  String text;

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap?.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: Text(
          text,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.left,
          style: AppStyle.txtGilroySemiBold16.copyWith(
            color: ColorConstant.blueGray900,
          ),
        ),
      ),
    );
  }
}
