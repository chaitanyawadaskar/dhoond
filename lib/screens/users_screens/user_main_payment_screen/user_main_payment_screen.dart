import 'package:customize_button/customize_button.dart';
import 'package:dhoond/components/arrow_left_appbar.dart';
import 'package:dhoond/components/shadow_container.dart';
import 'package:dhoond/data/extensions/extensions.dart';
import 'package:dhoond/screens/users_screens/float_payment/float_info_screen/float_info_screen.dart';
import 'package:dhoond/screens/users_screens/float_payment/float_payment_plan_screen/float_payment_plan_screen.dart';
import 'package:dhoond/screens/users_screens/user_dashboard_screen/user_dashboard_screen.dart';
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
import '../float_payment/float_select_date_time_screen/float_select_date_time_screen.dart';
import '../pay_with_credit_list_screen/pay_with_credit_list_screen.dart';
import '../qr_screen/qr_screen.dart';
import '../user_payment_confirm_screen/user_payment_confirm_screen.dart';
import 'components/payment_mode_card.dart';

class UserMainPaymentScreen extends StatefulWidget {
  const UserMainPaymentScreen(
      {super.key,
      required this.grandTotal,
      this.isQrVisible = false,
      this.floatEnable,
      this.isShowPayable = false,
      this.isFromWallet = false});
  final double grandTotal;
  final bool isQrVisible;
  final int? floatEnable;
  final bool isShowPayable;
  final bool isFromWallet;

  @override
  State<UserMainPaymentScreen> createState() => _UserMainPaymentScreenState();
}

class _UserMainPaymentScreenState extends State<UserMainPaymentScreen> {
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
                if (widget.isFromWallet) {
                  Get.to(
                    () => const UserDashboardScreen(currentIndex: 4),
                    transition: Transition.native,
                  );
                } else {
                  switch (mode) {
                    case 'pay_with_credit':
                      Get.to(
                        () => const PayWithCreditListScreen(),
                        transition: Transition.native,
                      );
                      break;
                    case 'qr':
                      Get.to(
                        () => const QrScreen(),
                        transition: Transition.native,
                      );
                      break;

                    case 'wallet':
                      Get.to(
                        () => const UserDashboardScreen(currentIndex: 4),
                        transition: Transition.native,
                      );
                      break;

                    default:
                      Get.to(
                        () => const UserPaymentConfirmScreen(),
                        transition: Transition.native,
                      );
                      break;
                  }
                }
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
                Text(
                  'Select a payment method',
                  style: KText.r14Bold,
                ),
                Gap.height(12),
                Visibility(
                  visible:
                      widget.grandTotal > 10000 && widget.floatEnable != null,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ShadowContainer(
                          border: kBorderAllFaintGrey,
                          padding: KPadding.all10,
                          borderRadius: kBorderRadius10,
                          child: ShadowContainer(
                            border: kBorderAllGrey2,
                            borderRadius: kBorderRadius8,
                            padding: KPadding.all5,
                            backgroundColor: CustomColors.mobileNoGrey,
                            child: Row(
                              children: [
                                Image.network(
                                  'https://i.postimg.cc/0ySVWmXK/float-img.png',
                                  height: 75.w,
                                  width: 75.w,
                                ),
                                Gap.width(20),
                                Expanded(
                                  child: Text.rich(TextSpan(children: [
                                    TextSpan(
                                        text:
                                            'Now you can split your bill into days/ weeks or months.” Experience the new feature”.',
                                        style: KText.r14),
                                    TextSpan(
                                        text: 'Know more',
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            Get.to(
                                              () => const FloatInfoScreen(),
                                              transition: Transition.native,
                                            );
                                          },
                                        style: KText.r14Blue)
                                  ])),
                                )
                              ],
                            ),
                          )),
                      Gap.height(12),
                      CustomizedButton(
                        onTap: () {
                          // Get.to(
                          //   () => FloatPaymentPlanScreen(
                          //     grandTotal: widget.grandTotal,
                          //   ),
                          //   transition: Transition.native,
                          // );
                          Get.to(
                            () => FloatSelectDateTimeScreen(
                              grandTotal: widget.grandTotal,
                            ),
                            transition: Transition.native,
                          );
                        },
                        text: 'Try it now',
                        fontStyle: KText.r14w5White,
                        borderRadius: 5,
                        backgroundColor: CustomColors.black,
                      ),
                      Gap.height(20),
                    ],
                  ),
                ),

                Visibility(
                  visible: widget.isQrVisible,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Dhoond Pay',
                        style: KText.r14Bold,
                      ),
                      Gap.height(),
                      PaymentModeCard(
                          isSelected: mode == 'qr',
                          onTap: () {
                            setState(() {
                              mode = 'qr';
                            });
                          },
                          imgUrl: ImagePath.qr,
                          title: 'Dhoond QR',
                          isBorder: true,
                          subtitle: 'Select to pay with Dhoond QR code',
                          height: 25,
                          width: 25),
                      Gap.height(16),
                    ],
                  ),
                ),
                Visibility(
                  visible: widget.isShowPayable,
                  child: Column(
                    children: [
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
                              widget.grandTotal.toString().commaDenote.rupee,
                              style: KText.r25Bold,
                            )
                          ],
                        ),
                      ),
                      Gap.height(12),
                    ],
                  ),
                ),

                Text(
                  widget.isFromWallet ? 'Payment Methods' : 'More ways',
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
                        Visibility(
                          visible: !widget.isFromWallet,
                          child: Column(
                            children: [
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
                            ],
                          ),
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
                // CustomizedButton(
                //   onTap: () {
                //     switch (mode) {
                //       case 'pay_with_credit':
                //         Get.to(
                //           () => const PayWithCreditListScreen(),
                //           transition: Transition.native,
                //         );
                //         break;
                //       case 'qr':
                //         Get.to(
                //           () => const QrScreen(),
                //           transition: Transition.native,
                //         );
                //         break;

                //       default:
                //         Get.to(
                //           () => const UserPaymentConfirmScreen(),
                //           transition: Transition.native,
                //         );
                //         break;
                //     }
                //   },
                //   text: 'Continue',
                //   fontStyle: KText.r14w5White,
                //   borderRadius: 5,
                //   backgroundColor: CustomColors.black,
                // ),
                // Gap.height(25),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
