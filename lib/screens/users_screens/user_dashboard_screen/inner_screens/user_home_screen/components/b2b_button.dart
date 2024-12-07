import 'package:dhoond/utilities/core/kpadding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../utilities/assets_paths/assets_paths.dart';
import '../../../../../../utilities/core/kboxshadow.dart';
import '../../../../../../utilities/core/kradius.dart';
import '../../../../../../utilities/custom_colors/custom_colors.dart';
import '../../../../../../utilities/theme/ktext_theme.dart';

class B2BButton extends StatelessWidget {
  const B2BButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 63.w,
      padding: KPadding.only(left: 5, right: 5, top: 4, bottom: 6),
      decoration: BoxDecoration(
          boxShadow: KBoxShadow.buttonShadow,
          borderRadius: kBorderRadius12,
          gradient: const LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [CustomColors.gradientGrey1, CustomColors.white])),
      child: Wrap(
        alignment: WrapAlignment.end,
        children: [
          Image.asset(
            ImagePath.redBall,
            height: 8.h,
          ),
          Center(
            child: Text(
              'B2B',
              style: KText.r14Zendots,
            ),
          ),
        ],
      ),
    );
  }
}
