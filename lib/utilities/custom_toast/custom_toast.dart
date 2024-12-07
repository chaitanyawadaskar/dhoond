import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../assets_paths/assets_paths.dart';
import '../core/kboxshadow.dart';
import '../core/kpadding.dart';
import '../core/kradius.dart';
import '../core/ksizedbox.dart';
import '../custom_colors/custom_colors.dart';
import '../theme/ktext_theme.dart';

class CustomFlutterToast extends StatelessWidget {
  final String content;
  final Color color;
  final double height;
  const CustomFlutterToast({
    Key? key,
    required this.content,
    this.color = CustomColors.white,
    this.height = 55,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: KPadding.horizontal20,
              height: 65.h,
              width: Get.width * 0.6,
              decoration: BoxDecoration(
                  color: color,
                  borderRadius: kBorderRadius10,
                  boxShadow: KBoxShadow.faintGrey),
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    content,
                    textAlign: TextAlign.center,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: KText.r16,
                  ),
                  const SizedBoxHeight()
                ],
              ),
            ),
          ],
        ),
        Positioned(
          left: 0,
          right: 0,
          top: -35,
          child: Container(
            padding: KPadding.none,
            decoration: BoxDecoration(
                boxShadow: KBoxShadow.lightGrey,
                color: CustomColors.white,
                shape: BoxShape.circle),
            child: Transform.scale(
              scale: 1.3,
              child: Image.asset(
                IconPath.check,
                height: 60.h,
                width: 60.w,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
