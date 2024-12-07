import 'package:customize_button/customize_button.dart';
import 'package:dhoond/components/arrow_left_appbar.dart';
import 'package:dhoond/components/shadow_container.dart';
import 'package:dhoond/data/extensions/extensions.dart';
import 'package:dhoond/screens/users_screens/float_payment/appointment_calender.dart';
import 'package:dhoond/screens/users_screens/float_payment/float_select_date_time_screen/float_select_date_time_screen.dart';
import 'package:dhoond/screens/users_screens/qr_screen/qr_screen.dart';
import 'package:dhoond/screens/users_screens/replace_mode_screen/replace_mode_screen.dart';
import 'package:dhoond/screens/users_screens/user_partner_detail_screen/user_partner_detail_screen.dart';
import 'package:dhoond/utilities/assets_paths/assets_paths.dart';
import 'package:dhoond/utilities/core/kpadding.dart';
import 'package:dhoond/utilities/core/kradius.dart';
import 'package:dhoond/utilities/custom_colors/custom_colors.dart';
import 'package:dhoond/utilities/gap/gap.dart';
import 'package:dhoond/utilities/theme/ktext_theme.dart';
import 'package:easy_stepper/easy_stepper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:marquee/marquee.dart';

import 'components/stepper_form.dart';

class UserBookingInfoScreen extends StatefulWidget {
  const UserBookingInfoScreen({super.key});

  @override
  State<UserBookingInfoScreen> createState() => _UserBookingInfoScreenState();
}

class _UserBookingInfoScreenState extends State<UserBookingInfoScreen> {
  int activeStep = 2;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Gap.height(),
              Padding(
                padding: KPadding.only(left: 10, top: 10, right: 15),
                child: Row(
                  children: [
                    const ArrowLeftAppbar(
                      padding: KPadding.none,
                    ),
                    const Spacer(),
                    Text(
                      'Booking',
                      style: KText.r30ComfortaaW7,
                    ),
                    const Spacer(),
                    InkWell(
                      onTap: () {
                        Get.to(() => const QrScreen());
                      },
                      child: Image.asset(
                        ImagePath.qr,
                        height: 32,
                        width: 32,
                      ),
                    )
                  ],
                ),
              ),
              Gap.height(25),
              Padding(
                padding: KPadding.horizontal16,
                child: Column(
                  children: [
                    ShadowContainer(
                      disableShadow: true,
                      backgroundColor: CustomColors.mobileNoGrey,
                      padding: KPadding.all16,
                      borderRadius: kBorderRadius5,
                      child: Row(
                        children: [
                          Container(
                            height: 44.w,
                            width: 44.w,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    image: AssetImage(
                                      ImagePath.carpenter1,
                                    ),
                                    fit: BoxFit.cover)),
                          ),
                          Gap.width(),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'Chandan Kumar',
                                    style: KText.r13Bold,
                                  ),
                                  Container(
                                    margin: KPadding.only(left: 10),
                                    padding: KPadding.horizontal(5),
                                    decoration: BoxDecoration(
                                        color: CustomColors.yellow,
                                        borderRadius: kBorderRadius6),
                                    child: SizedBox(
                                      width: 55.w,
                                      height: 20.w,
                                      child: Marquee(
                                        text: ' Carpenter',
                                        startPadding: 10.0,
                                        blankSpace: 35,
                                        accelerationDuration:
                                            const Duration(seconds: 1),
                                        accelerationCurve: Curves.linear,
                                        decelerationDuration:
                                            const Duration(milliseconds: 500),
                                        decelerationCurve: Curves.linear,
                                        style: KText.r12Bold,
                                        velocity: 25,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  const Icon(
                                    Icons.star_rate_rounded,
                                    size: 16,
                                    color: CustomColors.black,
                                  ),
                                  Gap.width(2),
                                  Text(
                                    '4.5',
                                    style: KText.r12Bold,
                                  ),
                                  Gap.width(5),
                                  Text(
                                    '(12k Views)',
                                    style: KText.r12Grey,
                                  )
                                ],
                              ),
                            ],
                          ),
                          const Spacer(),
                          InkWell(
                            onTap: () {
                              Get.to(() => const UserPartnerDetailScreen());
                            },
                            child: Row(
                              children: [
                                Text(
                                  'View Profile',
                                  style: KText.r12,
                                ),
                                const Icon(
                                  Icons.chevron_right,
                                  size: 20,
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Gap.height(24),
                    Padding(
                      padding: KPadding.horizontal10,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Your work has been started!',
                            style: KText.r14w5,
                          ).mOnly(left: 10),
                          Gap.height(20),
                          StepperForm(activeStep: activeStep),
                          Gap.height(24),
                          Text(
                            'You booked this work on Saturday September 08, 2024. You can also mark the starting date of the work on the calendar.',
                            style: KText.r13,
                          ),
                          Gap.height(24),
                          Row(
                            children: [
                              CustomizedButton(
                                onTap: () {
                                  Get.to(() => const FloatSelectDateTimeScreen(
                                      grandTotal: 0));
                                },
                                text: 'Add to Float',
                                enableBorder: true,
                                elevation: 0,
                                backgroundColor: CustomColors.white,
                                fontStyle: KText.r12w5,
                                borderRadius: 25,
                                width: 120.w,
                                borderColor: CustomColors.grey,
                              ),
                              Gap.width(12),
                              CustomizedButton(
                                onTap: () {
                                  Get.to(() => const ReplaceModeScreen());
                                },
                                text: 'Replace mode',
                                enableBorder: true,
                                elevation: 0,
                                backgroundColor: CustomColors.replaceBlue,
                                fontStyle: KText.r12w5,
                                borderRadius: 25,
                                width: 120.w,
                                borderColor: CustomColors.replaceBorderBlue,
                              ),
                            ],
                          ),
                          Gap.height(10),
                          const Divider(
                            color: CustomColors.gradientGrey1,
                          ),
                          Gap.height(10),
                          Row(
                            children: [
                              Text(
                                'Select the starting date of service?',
                                style: KText.r15w5,
                              ),
                              Text(
                                '*',
                                style: KText.r15w5red,
                              )
                            ],
                          ).mOnly(left: 5),
                          Gap.height(),
                          const AppointmentCalender(
                            enableRedMark: false,
                          ),
                          Gap.height(25),
                          ShadowContainer(
                            disableShadow: true,
                            backgroundColor: CustomColors.mobileNoGrey,
                            padding: KPadding.all16,
                            borderRadius: kBorderRadius5,
                            child: Row(
                              children: [
                                const Icon(
                                  MaterialIcons.info,
                                  size: 20,
                                ),
                                Gap.width(20),
                                Flexible(
                                  child: Text(
                                    activeStep == 3
                                        ? 'You will receive an OTP once partner confirms the work has done.'
                                        : 'Free cancellation is available within 12 hours of the start time of the booking.',
                                    style: KText.r12,
                                  ),
                                )
                              ],
                            ),
                          ),
                          if (activeStep == 3) ...[
                            Gap.height(25),
                            CustomizedButton(
                              onTap: () {},
                              fontStyle: KText.r20w5White,
                              pad: KPadding.symmetric(30, 5),
                              borderRadius: 5,
                              elevation: 0,
                              backgroundColor: CustomColors.black,
                              text: 'Make Payment',
                            ),
                          ],
                          Gap.height(25),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
