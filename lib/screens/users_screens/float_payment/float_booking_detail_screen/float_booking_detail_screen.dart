import 'package:customize_button/customize_button.dart';
import 'package:dhoond/components/arrow_left_appbar.dart';
import 'package:dhoond/components/shadow_container.dart';
import 'package:dhoond/screens/users_screens/float_payment/appointment_calender.dart';
import 'package:dhoond/screens/users_screens/qr_screen/qr_screen.dart';
import 'package:dhoond/utilities/core/kpadding.dart';
import 'package:dhoond/utilities/gap/gap.dart';
import 'package:dhoond/utilities/theme/ktext_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../utilities/assets_paths/assets_paths.dart';
import '../../../../utilities/core/kradius.dart';
import '../../../../utilities/custom_colors/custom_colors.dart';
import '../../../common_screens/add_amount_screen/add_amount_screen.dart';

class FloatBookingDetailScreen extends StatefulWidget {
  const FloatBookingDetailScreen({super.key});

  @override
  State<FloatBookingDetailScreen> createState() =>
      _FloatBookingDetailScreenState();
}

class _FloatBookingDetailScreenState extends State<FloatBookingDetailScreen> {
  var list = ['Excellent behavior', 'Humble', 'Punctual'];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Gap.height(),
            Padding(
              padding: KPadding.horizontal15,
              child: Row(
                children: [
                  ArrowLeftAppbar(
                    padding: KPadding.none,
                  ),
                  Gap.width(),
                  Text(
                    'Booking Details',
                    style: KText.r30ComfortaaW5,
                  )
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: KPadding.horizontal25,
                  child: Column(
                    children: [
                      Gap.height(30),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Gap.width(),
                          Column(
                            children: [
                              Container(
                                height: 50.w,
                                width: 50.w,
                                decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                        image: AssetImage(
                                          ImagePath.electricalMan,
                                        ),
                                        fit: BoxFit.cover)),
                              ),
                              Gap.height(),
                              Text(
                                'Shanti Shinde',
                                style: KText.r20Comfortaa,
                              )
                            ],
                          ),
                          InkWell(
                            onTap: () {
                              Get.to(() => const QrScreen());
                            },
                            child: Image.asset(
                              ImagePath.qr,
                              height: 50.w,
                            ),
                          )
                        ],
                      ),
                      Gap.height(10),
                      Container(
                        padding: KPadding.horizontal(5),
                        decoration: BoxDecoration(
                            color: CustomColors.yellow,
                            borderRadius: kBorderRadius6),
                        child: Text(
                          'Plumber',
                          style: KText.r12Bold,
                        ),
                      ),
                      Gap.height(10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text.rich(TextSpan(children: [
                            TextSpan(
                              text: 'Exp. ',
                              style: KText.r14ComfortaaW7,
                            ),
                            TextSpan(
                                text: '2+ Yrs', style: KText.r14ComfortaaW3)
                          ])),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.history_rounded,
                                size: 20.w,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    ' Charges starting from',
                                    style: KText.r14ComfortaaW3,
                                  ),
                                  Text.rich(
                                    TextSpan(children: [
                                      TextSpan(
                                          text: '299Rs ',
                                          style: KText.r14ComfortaaW7),
                                      TextSpan(
                                          text: 'onwards',
                                          style: KText.r14ComfortaaW3)
                                    ]),
                                  ),
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            'Skills -  ',
                            style: KText.r14ComfortaaW7,
                          ),
                          Expanded(
                            child: SizedBox(
                              height: 22.h,
                              child: ListView.separated(
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: (context, index) => Container(
                                        padding: KPadding.symmetric(6, 2),
                                        decoration: BoxDecoration(
                                            border: kBorderAll,
                                            borderRadius: kBorderRadius25),
                                        child: Text(
                                          list[index],
                                          style: KText.r12Comfortaa,
                                        ),
                                      ),
                                  separatorBuilder: (context, index) =>
                                      Gap.width(),
                                  itemCount: list.length),
                            ),
                          ),
                        ],
                      ),
                      Gap.height(5),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Bio -  ',
                            style: KText.r14ComfortaaW7,
                          ),
                          SizedBox(
                              width: Get.width * 0.75,
                              child: Text(
                                'Experienced, dedicated maid. Ensuring spotless homes with professionalism, efficiency, and a passion for cleanliness. Trustworthy and reliable.',
                                style: KText.r14ComfortaaW3,
                              ))
                        ],
                      ),
                      Gap.height(5),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Languages -  ',
                            style: KText.r14ComfortaaW7,
                          ),
                          Text(
                            'English, Chinese, Hindi',
                            style: KText.r14ComfortaaW3,
                          )
                        ],
                      ),
                      Gap.height(25),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomizedButton(
                            onTap: () {
                              Get.back();
                            },
                            fontStyle: KText.r14Bold,
                            elevation: 0,
                            width: 150.w,
                            borderRadius: 5,
                            borderColor: CustomColors.grey,
                            backgroundColor: CustomColors.white,
                            enableBorder: true,
                            text: 'Cancel',
                          ),
                          CustomizedButton(
                            onTap: () {
                              Get.to(
                                  () => const AddAmountScreen(
                                        isFromBooking: false,
                                      ),
                                  transition: Transition.native);
                            },
                            fontStyle: KText.r14BoldWhite,
                            elevation: 0,
                            width: 150.w,
                            borderRadius: 5,
                            backgroundColor: CustomColors.black,
                            text: 'Pay',
                          ),
                        ],
                      ),
                      Gap.height(30),
                      ShadowContainer(
                          disableShadow: true,
                          padding: KPadding.all25,
                          backgroundColor: CustomColors.shadeGrey100,
                          borderRadius: kBorderRadius5,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Date',
                                style: KText.r30ComfortaaW5,
                              ),
                              Image.network(
                                'https://i.postimg.cc/YSp9m1nY/paper-part.png',
                                height: 40.w,
                              )
                            ],
                          )),
                      Gap.height(),
                      AppointmentCalender(),
                      Gap.height(20),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
