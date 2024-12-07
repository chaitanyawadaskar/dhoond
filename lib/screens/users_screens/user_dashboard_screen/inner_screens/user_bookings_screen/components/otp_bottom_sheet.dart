import 'package:customize_button/customize_button.dart';
import 'package:dhoond/utilities/core/kradius.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../utilities/core/kpadding.dart';
import '../../../../../../utilities/custom_colors/custom_colors.dart';
import '../../../../../../utilities/gap/gap.dart';
import '../../../../../../utilities/theme/ktext_theme.dart';
import '../../../../user_partner_detail_screen/section/rate_and_submit.dart';
import 'rate_alert_box.dart';

class OTPBottomSheet extends StatelessWidget {
  const OTPBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: CustomColors.white,
      width: Get.width,
      padding: KPadding.only(left: 15, right: 15, bottom: 25, top: 30),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Share OTP',
            style: KText.r30,
          ),
          Gap.height(),
          Text(
            '6980',
            style: KText.r35Bold,
          ),
          Gap.height(),
          CustomizedButton(
            onTap: () {
              Get.back();
              Get.dialog(const RateAlertBox());
            },
            text: 'OK',
            backgroundColor: CustomColors.black,
          )
        ],
      ),
    );
  }
}
