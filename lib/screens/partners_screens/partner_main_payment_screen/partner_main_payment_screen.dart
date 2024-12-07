import 'package:customize_button/customize_button.dart';
import 'package:dhoond/components/arrow_left_appbar.dart';
import 'package:dhoond/components/shadow_container.dart';
import 'package:dhoond/data/extensions/extensions.dart';
import 'package:dhoond/screens/partners_screens/partner_dashboard_screen/partner_dashboard_screen.dart';
import 'package:dhoond/screens/users_screens/float_payment/float_info_screen/float_info_screen.dart';
import 'package:dhoond/screens/users_screens/float_payment/float_payment_plan_screen/float_payment_plan_screen.dart';
import 'package:dhoond/utilities/assets_paths/assets_paths.dart';
import 'package:dhoond/utilities/core/kpadding.dart';
import 'package:dhoond/utilities/core/kradius.dart';
import 'package:dhoond/utilities/custom_colors/custom_colors.dart';
import 'package:dhoond/utilities/gap/gap.dart';
import 'package:dhoond/utilities/theme/ktext_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'components/payment_mode_card.dart';

class ParnterMainPaymentScreen extends StatefulWidget {
  const ParnterMainPaymentScreen({super.key, required this.totalPayable});
  final double totalPayable;
  @override
  State<ParnterMainPaymentScreen> createState() =>
      _ParnterMainPaymentScreenState();
}

class _ParnterMainPaymentScreenState extends State<ParnterMainPaymentScreen> {
  String mode = '';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: ShadowContainer(
            child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Gap.height(25),
            CustomizedButton(
              onTap: () {
                Get.to(() => const PartnerDashboardScreen(
                      currentIndex: 4,
                    ));
              },
              fontStyle: KText.r20w5White,
              borderRadius: 5,
              elevation: 0,
              backgroundColor: CustomColors.black,
              text: 'Continue',
            ).mSymmetric(16),
            Gap.height(25)
          ],
        )),
        body: SingleChildScrollView(
          child: Padding(
            padding: KPadding.horizontal16,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Gap.height(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const ArrowLeftAppbar(
                      padding: KPadding.none,
                    ),
                    Text(
                      'Payment',
                      style: KText.r30ComfortaaW5,
                    ),
                    InkWell(
                      onTap: () {
                        Get.back();
                      },
                      child: Text(
                        'Cancel',
                        style: KText.r20Comfortaa,
                      ),
                    )
                  ],
                ),
                Gap.height(12),
                ShadowContainer(
                  padding: KPadding.all15,
                  borderRadius: kBorderRadius10,
                  border: kBorderAllGrey2,
                  child: Row(
                    children: [
                      Text(
                        'Total payable',
                        style: KText.r16Bold,
                      ),
                      const Spacer(),
                      Text(
                        widget.totalPayable.toString().commaDenote.rupee,
                        style: KText.r25Bold,
                      )
                    ],
                  ),
                ),
                Gap.height(),
                Text(
                  'Payment Methods',
                  style: KText.r14Bold,
                ),
                Gap.height(12),
                ShadowContainer(
                    borderRadius: kBorderRadius10,
                    child: Column(
                      children: [
                        PaymentModeCard(
                          isSelected: mode == 'card',
                          onTap: () {
                            setState(() {
                              mode = 'card';
                            });
                          },
                          imgUrl: 'https://i.postimg.cc/Bntn09x5/logo-1.png',
                          title: 'Credit or Debit card',
                          height: 20,
                        ),
                        const Divider(
                          thickness: 1,
                          color: CustomColors.floatGrey,
                        ),
                        PaymentModeCard(
                          padding: KPadding.symmetric(20, 10),
                          isSelected: mode == 'upi_apps',
                          onTap: () {
                            setState(() {
                              mode = 'upi_apps';
                            });
                          },
                          imgUrl:
                              'https://i.postimg.cc/h4rDQPsb/UPI-logo-PNG-lyp5s5-3.png',
                          title: 'UPI Apps',
                          subtitle: 'Google Pay, PhonePe, Paytm and more',
                          height: 10,
                        ),
                        const Divider(
                          thickness: 2,
                          color: CustomColors.floatGrey,
                        ),
                        PaymentModeCard(
                          padding: KPadding.symmetric(20, 15),
                          isSelected: mode == 'net',
                          onTap: () {
                            setState(() {
                              mode = 'net';
                            });
                          },
                          imgUrl: 'https://i.postimg.cc/3JGYG1Bd/fa-bank.png',
                          title: 'Net Banking',
                          height: 20,
                        ),
                        const Divider(
                          thickness: 2,
                          color: CustomColors.floatGrey,
                        ),
                        PaymentModeCard(
                          padding: KPadding.symmetric(20, 15),
                          isSelected: mode == 'wallet',
                          onTap: () {
                            setState(() {
                              mode = 'wallet';
                            });
                          },
                          imgUrl: IconPath.wallet,
                          title: 'Wallet',
                          height: 20,
                        ),
                        const Divider(
                          thickness: 2,
                          color: CustomColors.floatGrey,
                        ),
                        PaymentModeCard(
                          padding: KPadding.symmetric(20, 10),
                          isSelected: mode == 'pay_with_credit',
                          onTap: () {
                            setState(() {
                              mode = 'pay_with_credit';
                            });
                          },
                          title: 'Pay with credit',
                          subtitle:
                              'https://i.postimg.cc/QtRcMss6/Group-38148.png',
                          height: 20,
                        ),
                      ],
                    )),
                Gap.height(5),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
