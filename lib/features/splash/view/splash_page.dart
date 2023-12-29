import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:programming_club/core/utils/color_constant.dart';
import 'package:programming_club/core/utils/image_constant.dart';
import 'package:programming_club/core/utils/size_utils.dart';
import 'package:programming_club/shared/widget/custom_image_view.dart';

@RoutePage()
class SplashScreen extends ConsumerWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Future.delayed(
      const Duration(
        seconds: 2,
      ),
      () {
        if (!context.mounted) return;
        context.router.replaceNamed(
          '/home',
        );
        return;
      },
    );
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.gray50,
        body: Container(
          width: double.maxFinite,
          padding: getPadding(
            left: 33,
            right: 33,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                svgPath: ImageConstant.imgVectorBlueA70034x360,
                height: getVerticalSize(
                  34,
                ),
                width: getHorizontalSize(
                  360,
                ),
                margin: getMargin(
                  bottom: 5,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
