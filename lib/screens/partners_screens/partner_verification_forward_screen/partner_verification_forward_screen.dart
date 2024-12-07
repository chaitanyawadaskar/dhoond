import 'package:customize_button/customize_button.dart';
import 'package:dhoond/utilities/assets_paths/assets_paths.dart';
import 'package:dhoond/utilities/gap/gap.dart';
import 'package:dhoond/utilities/theme/ktext_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import '../../../utilities/core/kpadding.dart';
import '../../../utilities/core/ksizedbox.dart';
import '../../../utilities/custom_colors/custom_colors.dart';
import '../../common_screens/dhoondh_loading_screen/dhoondh_loading_screen.dart';

class PartnerVerificationForwardScreen extends StatefulWidget {
  const PartnerVerificationForwardScreen({super.key});

  @override
  State<PartnerVerificationForwardScreen> createState() =>
      _PartnerVerificationForwardScreenState();
}

class _PartnerVerificationForwardScreenState
    extends State<PartnerVerificationForwardScreen> {
  @override
  void initState() {
    super.initState();
    // Future.delayed(const Duration(seconds: 3), () {
    //   Get.offAll(
    //       () => const DhoondhLoadingScreen(
    //             isUser: false,
    //           ),
    //       transition: Transition.native);
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        padding: KPadding.all25,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomizedButton(
              onTap: () {
                Get.offAll(
                    () => const DhoondhLoadingScreen(
                          isUser: false,
                        ),
                    transition: Transition.native);
              },
              fontStyle: KText.r20w5White,
              // pad: KPadding.H15V10,
              borderRadius: 5,
              backgroundColor: CustomColors.black,
              text: 'Continue',
            ),
            const SizedBoxHeight(),
            CustomizedButton(
              onTap: () {
                Get.back();
              },
              fontStyle: KText.r20w5,
              elevation: 0,
              // pad: KPadding.H15V10,
              borderRadius: 5,
              backgroundColor: CustomColors.white,
              enableBorder: true,
              text: 'Cancel',
            ),
          ],
        ),
      ),
      body: Padding(
        padding: KPadding.horizontal15,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(),
            SizedBox(
              height: 120.h,
              child: OverflowBox(
                  maxHeight: 250.h,
                  child: LottieBuilder.asset(
                    LottiePath.checkConfetti,
                  )),
            ),
            Text(
              'Forwarded for Verification',
              style: KText.r30w5,
            ),
            Gap.height(),
            Text(
              'You will be notified by call and SMS once your documents are approved',
              textAlign: TextAlign.center,
              style: KText.r14Grey,
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
