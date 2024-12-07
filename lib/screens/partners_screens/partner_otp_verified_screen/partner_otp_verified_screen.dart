import 'package:dhoond/screens/partners_screens/partner_dashboard_screen/partner_dashboard_screen.dart';
import 'package:dhoond/utilities/core/kpadding.dart';
import 'package:dhoond/utilities/custom_colors/custom_colors.dart';
import 'package:dhoond/utilities/gap/gap.dart';
import 'package:dhoond/utilities/theme/ktext_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../../../utilities/assets_paths/assets_paths.dart';

class PartnerOTPVerifiedScreen extends StatefulWidget {
  const PartnerOTPVerifiedScreen({super.key});

  @override
  State<PartnerOTPVerifiedScreen> createState() =>
      _PartnerOTPVerifiedScreenState();
}

class _PartnerOTPVerifiedScreenState extends State<PartnerOTPVerifiedScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Get.to(
        () => const PartnerDashboardScreen(
          currentIndex: 2,
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: KPadding.horizontal20,
          child: Column(
            children: [
              Gap.height(115),
              Text(
                'OTP Verification',
                style: KText.r30ComfortaaW7,
              ),
              Gap.height(10),
              Text(
                'Successfully',
                style: KText.r12Grey,
              ),
              const Spacer(),
              SizedBox(
                height: 120.h,
                child: OverflowBox(
                    maxHeight: 250.h,
                    child: LottieBuilder.asset(
                      LottiePath.checkConfetti,
                    )),
              ),
              Gap.height(120),
              Text(
                'START YOUR WORK NOW !',
                style: KText.r30ComfortaaW7,
              ),
              GestureDetector(
                  onTap: () {
                    Get.offAll(
                      () => const PartnerDashboardScreen(
                        currentIndex: 2,
                      ),
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        ' MY Bookings',
                        style: KText.r12Grey,
                      ),
                      Icon(
                        Icons.chevron_right,
                        size: 25.h,
                        color: CustomColors.black,
                      )
                    ],
                  )),
              Gap.height(150),
            ],
          ),
        ),
      ),
    );
  }
}
