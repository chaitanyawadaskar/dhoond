import 'package:dhoond/components/shadow_container.dart';
import 'package:dhoond/screens/partners_screens/partner_dashboard_screen/partner_dashboard_screen.dart';
import 'package:dhoond/screens/users_screens/components/price_and_charges_card.dart';
import 'package:dhoond/utilities/core/kboxshadow.dart';
import 'package:dhoond/utilities/core/kpadding.dart';
import 'package:dhoond/utilities/custom_colors/custom_colors.dart';
import 'package:dhoond/utilities/gap/gap.dart';
import 'package:dhoond/utilities/theme/ktext_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../../../utilities/assets_paths/assets_paths.dart';
import '../../../utilities/core/kradius.dart';

class PartnerPaymentConfirmScreen extends StatefulWidget {
  const PartnerPaymentConfirmScreen({super.key});

  @override
  State<PartnerPaymentConfirmScreen> createState() =>
      _PartnerPaymentConfirmScreenState();
}

class _PartnerPaymentConfirmScreenState
    extends State<PartnerPaymentConfirmScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Gap.height(15),
              Padding(
                padding: KPadding.symmetric(16, 10),
                child: Row(
                  children: [
                    const Spacer(
                      flex: 4,
                    ),
                    Text(
                      'Payment Confirmation',
                      style: KText.r15w5,
                    ),
                    const Spacer(
                      flex: 3,
                    ),
                    InkWell(
                      onTap: () {
                        Get.back();
                      },
                      child: const Icon(
                        Entypo.cross,
                        size: 30,
                      ),
                    )
                  ],
                ),
              ),
              const Divider(
                color: CustomColors.gradientGrey1,
              ),
              Lottie.asset(LottiePath.checkConfetti, height: 200.h),
              Text(
                'Yayy, payment received.',
                style: KText.r20Bold,
              ),
              Gap.height(5),
              SizedBox(
                width: Get.width * 0.85,
                child: const Text(
                  'Payment of ₹3,780.00 from Prathamesh Dolaskar has been successfully received.',
                  textAlign: TextAlign.center,
                ),
              ),
              Gap.height(20),
              Padding(
                padding: KPadding.horizontal16,
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Order Summary',
                        style: KText.r15w5,
                      ),
                    ),
                    Gap.height(10),
                    PriceAndChargesCard(
                      enabledIcon: false,
                      price: '420',
                      gst: '29.55',
                      gatewayCharges: '19.55',
                      grandTotal: '499.56',
                      disableShadow: true,
                      border: kBorderAllGrey2,
                    ),
                    Gap.height(65.h),
                    ShadowContainer(
                        onTap: () {
                          Get.to(() => const PartnerDashboardScreen(
                                currentIndex: 2,
                              ));
                        },
                        padding: KPadding.H10V10,
                        boxShadow: KBoxShadow.glowGreen1,
                        borderRadius: kBorderRadius8,
                        child: Row(
                          children: [
                            Text(
                              'You Can Start Your\nWork Now!',
                              style: KText.r20ComfortaaW7,
                            ),
                            const Spacer(),
                            Icon(
                              AntDesign.arrowright,
                              size: 25.h,
                            )
                          ],
                        ))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
