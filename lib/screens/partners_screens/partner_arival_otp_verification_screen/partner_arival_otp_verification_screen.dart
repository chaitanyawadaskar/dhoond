import 'package:customize_button/customize_button.dart';
import 'package:dhoond/components/arrow_left_appbar.dart';
import 'package:dhoond/components/otp_feild.dart';
import 'package:dhoond/data/extensions/extensions.dart';
import 'package:dhoond/data/functions/common_function.dart';
import 'package:dhoond/screens/partners_screens/wait_confirmation_screen/wait_confirmation_screen.dart';
import 'package:dhoond/utilities/core/kpadding.dart';
import 'package:dhoond/utilities/gap/gap.dart';
import 'package:dhoond/utilities/theme/ktext_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utilities/custom_colors/custom_colors.dart';
import '../partner_otp_verified_screen/partner_otp_verified_screen.dart';

class PartnerArivalOTPVerificationScreen extends StatefulWidget {
  const PartnerArivalOTPVerificationScreen({super.key});

  @override
  State<PartnerArivalOTPVerificationScreen> createState() =>
      _PartnerArivalOTPVerificationScreenState();
}

class _PartnerArivalOTPVerificationScreenState
    extends State<PartnerArivalOTPVerificationScreen> {
  CountdownTimer countdownTimer = CountdownTimer(initialSeconds: 59);
  String remainingTime = '00 : 59';

  @override
  void initState() {
    super.initState();
    countdownTimer.startCountdown(onTick: (val) {
      setState(() {
        remainingTime = val.timeToString;
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    countdownTimer.cancelCountdown();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: ArrowLeftAppbar(),
        body: Padding(
          padding: KPadding.horizontal16,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Gap.height(1),
              Text(
                'OTP Verification',
                style: KText.r34ComfortaaW7,
              ),
              SizedBox(
                width: Get.width * 0.6,
                child: Text(
                  'Enter the OTP sent to Prathamesh Dolaskar',
                  style: KText.r12Grey,
                ),
              ),
              Gap.height(35),
              const OTPFeild(
                length: 4,
              ),
              Gap.height(25),
              Text.rich(TextSpan(
                  text: 'Didn’t receive the OTP ? ',
                  style: KText.r14Grey,
                  children: [
                    TextSpan(
                        text: 'Resend In $remainingTime sec',
                        style: KText.r14w5)
                  ])),
              Gap.height(25),
              CustomizedButton(
                onTap: () {
                  Get.to(
                    () => const WaitConfirmationScreen(),
                    transition: Transition.native,
                  );
                },
                pad: KPadding.symmetric(10, 0),
                backgroundColor: CustomColors.black,
                text: 'Verify',
                fontStyle: KText.r18w5White,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
