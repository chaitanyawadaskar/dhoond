import 'package:customize_button/customize_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../../components/otp_feild.dart';
import '../../../../../../utilities/core/kpadding.dart';
import '../../../../../../utilities/custom_colors/custom_colors.dart';
import '../../../../../../utilities/gap/gap.dart';
import '../../../../../../utilities/theme/ktext_theme.dart';
import '../../../../components/title_alert.dart';

class OTPFeildBottomSheet extends StatefulWidget {
  const OTPFeildBottomSheet({super.key});

  @override
  State<OTPFeildBottomSheet> createState() => _OTPFeildBottomSheetState();
}

class _OTPFeildBottomSheetState extends State<OTPFeildBottomSheet> {
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
            'Enter OTP',
            style: KText.r30ComfortaaW7,
          ),
          Gap.height(50),
          const OTPFeild(
            length: 4,
          ),
          Gap.height(25),
          CustomizedButton(
            onTap: () {
              Get.back();
              Get.dialog(const TitleAlert(
                title: 'Your booking has been successfully completed',
              ));
            },
            backgroundColor: CustomColors.black,
            text: 'Verify OTP',
          ),
        ],
      ),
    );
  }
}
