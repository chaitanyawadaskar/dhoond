import 'package:dhoond/utilities/gap/gap.dart';
import 'package:dhoond/utilities/theme/ktext_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../../../utilities/assets_paths/assets_paths.dart';
import '../../../../../../utilities/core/kpadding.dart';
import '../../../../../../utilities/core/kradius.dart';
import '../../../../../../utilities/custom_colors/custom_colors.dart';
import '../../../../user_partner_detail_screen/section/rate_and_submit.dart';

class RateAlertBox extends StatelessWidget {
  const RateAlertBox({
    super.key,
  });

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
        children: [
          Row(
            children: [
              Container(
                height: 60.w,
                width: 60.w,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage(
                          ImagePath.profileAvatar,
                        ),
                        fit: BoxFit.cover)),
              ),
              Gap.width(),
              Text(
                'Rakesh Verma',
                style: KText.r20Comfortaa,
              )
            ],
          ),
          Gap.height(25),
          RateAndSubmit(),
        ],
      ),
    );
  }
}
