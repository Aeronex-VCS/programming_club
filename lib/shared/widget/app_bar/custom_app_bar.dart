import 'package:flutter/material.dart';

import '../../../core/utils/color_constant.dart';
import '../../../core/utils/size_utils.dart';

// ignore: must_be_immutable
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  CustomAppBar(
      {required this.height,
      this.styleType,
      this.leadingWidth,
      this.leading,
      this.title,
      this.centerTitle,
      this.actions});

  double height;

  Style? styleType;

  double? leadingWidth;

  Widget? leading;

  Widget? title;

  bool? centerTitle;

  List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      toolbarHeight: height,
      automaticallyImplyLeading: false,
      backgroundColor: Colors.transparent,
      flexibleSpace: _getStyle(),
      leadingWidth: leadingWidth ?? 0,
      leading: leading,
      title: title,
      titleSpacing: 0,
      centerTitle: centerTitle ?? false,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => Size(
        size.width,
        height,
      );
  _getStyle() {
    switch (styleType) {
      case Style.bgShadowBlack90021:
        return Container(
          height: getVerticalSize(
            50,
          ),
          width: double.maxFinite,
          decoration: BoxDecoration(
            color: ColorConstant.whiteA700,
            boxShadow: [
              BoxShadow(
                color: ColorConstant.black90021,
                spreadRadius: getHorizontalSize(
                  2,
                ),
                blurRadius: getHorizontalSize(
                  2,
                ),
                offset: const Offset(
                  0,
                  2,
                ),
              ),
            ],
          ),
        );

      case Style.bgOutlineBluegray100:
        return Container(
          height: getVerticalSize(
            56,
          ),
          width: double.maxFinite,
          decoration: BoxDecoration(
            color: ColorConstant.gray50,
            border: Border(
              bottom: BorderSide(
                color: ColorConstant.blueGray100,
                width: getHorizontalSize(
                  1,
                ),
              ),
            ),
          ),
        );
      default:
        return null;
    }
  }
}

enum Style {
  bgOutlineBluegray100,
  bgShadowBlack90021,
}
