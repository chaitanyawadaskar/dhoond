import 'package:dhoond/components/shadow_container.dart';
import 'package:dhoond/data/extensions/extensions.dart';
import 'package:dhoond/screens/users_screens/user_dashboard_screen/inner_screens/user_home_screen/user_home_screen.dart';
import 'package:dhoond/screens/users_screens/user_dashboard_screen/user_dashboard_screen.dart';
import 'package:dhoond/utilities/core/kpadding.dart';
import 'package:dhoond/utilities/custom_colors/custom_colors.dart';
import 'package:dhoond/utilities/gap/gap.dart';
import 'package:dhoond/utilities/theme/ktext_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../../../utilities/assets_paths/assets_paths.dart';
import '../../../utilities/core/kradius.dart';
import '../components/price_and_charges_card.dart';

class UserPaymentConfirmScreen extends StatefulWidget {
  const UserPaymentConfirmScreen({super.key});

  @override
  State<UserPaymentConfirmScreen> createState() =>
      _UserPaymentConfirmScreenState();
}

class _UserPaymentConfirmScreenState extends State<UserPaymentConfirmScreen> {
  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   Future.delayed(Duration(seconds: 2), () {
  //     Get.to(() => UserDashboardScreen());
  //   });
  // }
  bool isVisible = false;
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
                      style: KText.r15w6,
                    ),
                    const Spacer(
                      flex: 3,
                    ),
                    InkWell(
                      onTap: () {
                        Get.to(() => const UserDashboardScreen());
                      },
                      child: const Icon(
                        CupertinoIcons.multiply,
                        size: 25,
                      ),
                    )
                  ],
                ),
              ),
              const Divider(
                color: CustomColors.gradientGrey1,
              ),
              Gap.height(25),
              SizedBox(
                height: 100.h,
                child: OverflowBox(
                  maxHeight: 150.w,
                  maxWidth: 150.w,
                  child: Lottie.asset(
                    LottiePath.checkConfetti,
                  ),
                ),
              ),
              Gap.height(),
              Text(
                'Thanks, your payment has been done.',
                style: KText.r18Bold,
              ),
              Gap.height(12),
              SizedBox(
                width: Get.width * 0.85,
                child: Text(
                  'Please check your SMS for receipt and booking details or visit ‘My bookings’ to review your booking.',
                  style: KText.r13,
                  textAlign: TextAlign.center,
                ),
              ),
              Gap.height(25),
              Padding(
                padding: KPadding.horizontal16,
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Service Details',
                        style: KText.r15w5,
                      ),
                    ).mOnly(left: 1),
                    Gap.height(12),
                    ShadowContainer(
                        borderRadius: kBorderRadius8,
                        border: kBorderAllGrey2,
                        padding: KPadding.only(left: 20, right: 25, top: 25),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: 30.w,
                                  width: 30.w,
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
                                  'Chandan Kumar',
                                  style: KText.r14w5,
                                ),
                                const Spacer(),
                                InkWell(
                                    onTap: () {
                                      setState(() {
                                        isVisible = !isVisible;
                                      });
                                    },
                                    child: Icon(isVisible
                                        ? Icons.keyboard_arrow_up
                                        : Icons.keyboard_arrow_down)),
                              ],
                            ),
                            Gap.height(15),
                            Visibility(
                              visible: isVisible,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: KPadding.only(left: 15, right: 15),
                                    child: const Divider(
                                      color: CustomColors.gradientGrey1,
                                    ),
                                  ),
                                  Gap.height(10),
                                  Row(
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Date',
                                            style: KText.r12Grey,
                                          ),
                                          Gap.height(3),
                                          Text(
                                            'Sat, September 08',
                                            style: KText.r13,
                                          )
                                        ],
                                      ),
                                      const Spacer(),
                                      Container(
                                        height: 40,
                                        width: 1,
                                        color: CustomColors.gradientGrey1,
                                      ),
                                      const Spacer(),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Address',
                                            style: KText.r12Grey,
                                          ),
                                          Gap.height(3),
                                          Text(
                                            'MIDC, Nagpur',
                                            style: KText.r13,
                                          )
                                        ],
                                      ),
                                      const Spacer(),
                                    ],
                                  ),
                                  Gap.height(7),
                                  const Divider(
                                    color: CustomColors.gradientGrey1,
                                  ),
                                  Gap.height(10),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Service type',
                                        style: KText.r12Grey,
                                      ),
                                      Gap.height(3),
                                      Text(
                                        'Carpenter',
                                        style: KText.r13,
                                      )
                                    ],
                                  ),
                                  Gap.height(7),
                                  const Divider(
                                    color: CustomColors.gradientGrey1,
                                  ),
                                  Gap.height(12),
                                ],
                              ),
                            )
                          ],
                        )),
                    Gap.height(20),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Order Summary',
                        style: KText.r15w5,
                      ),
                    ).mOnly(left: 1),
                    Gap.height(12),
                    const PriceAndChargesCard(
                        price: '420',
                        gst: '29.55',
                        gatewayCharges: '19.55',
                        grandTotal: '499.56'),
                    Gap.height(20)
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
