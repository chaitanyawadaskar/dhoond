import 'package:customize_button/customize_button.dart';
import 'package:dhoond/utilities/gap/gap.dart';
import 'package:dhoond/utilities/theme/ktext_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../utilities/core/kpadding.dart';
import '../../../utilities/core/kradius.dart';
import '../../../utilities/custom_colors/custom_colors.dart';

class TitleAlert extends StatelessWidget {
  const TitleAlert({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: kBorderRadius15),
        contentPadding: KPadding.all25,
        insetPadding: KPadding.horizontal15,
        backgroundColor: CustomColors.white,
        surfaceTintColor: CustomColors.transparent,
        shadowColor: CustomColors.transparent,
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              title,
              style: KText.r22Bold,
              textAlign: TextAlign.center,
            ),
            Gap.height(),
            CustomizedButton(
              onTap: () {
                Get.back();
              },
              width: 120.w,
              text: 'OK',
              fontStyle: KText.r14White,
              backgroundColor: CustomColors.black,
            )
          ],
        ));
  }
}
