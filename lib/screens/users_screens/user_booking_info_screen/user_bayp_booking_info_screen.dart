import 'package:customize_button/customize_button.dart';
import 'package:dhoond/components/arrow_left_appbar.dart';
import 'package:dhoond/components/shadow_container.dart';
import 'package:dhoond/data/extensions/extensions.dart';
import 'package:dhoond/screens/users_screens/float_payment/appointment_calender.dart';
import 'package:dhoond/screens/users_screens/qr_screen/qr_screen.dart';
import 'package:dhoond/utilities/assets_paths/assets_paths.dart';
import 'package:dhoond/utilities/core/kpadding.dart';
import 'package:dhoond/utilities/core/kradius.dart';
import 'package:dhoond/utilities/custom_colors/custom_colors.dart';
import 'package:dhoond/utilities/gap/gap.dart';
import 'package:dhoond/utilities/theme/ktext_theme.dart';
import 'package:easy_stepper/easy_stepper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:marquee/marquee.dart';

import 'components/stepper_form.dart';

class UserBAYPBookingInfoScreen extends StatefulWidget {
  const UserBAYPBookingInfoScreen({super.key});

  @override
  State<UserBAYPBookingInfoScreen> createState() =>
      _UserBAYPBookingInfoScreenState();
}

class _UserBAYPBookingInfoScreenState extends State<UserBAYPBookingInfoScreen> {
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
                    // InkWell(
                    //   onTap: () {
                    //     Get.to(() => QrScreen());
                    //   },
                    //   child: Image.asset(
                    //     ImagePath.qr,
                    //     height: 32,
                    //     width: 32,
                    //   ),
                    // )
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
                      backgroundColor: CustomColors.gradientGrey,
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
                                      ImagePath.profileAvatar,
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
                                    style: KText.r13,
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
                                        text: ' Electrician',
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
                                    size: 18,
                                    color: CustomColors.black,
                                  ),
                                  Gap.width(5),
                                  Text(
                                    '4.5',
                                    style: KText.r14Bold,
                                  ),
                                  Gap.width(5),
                                  Text(
                                    '(12k Views)',
                                    style: KText.r14Grey,
                                  )
                                ],
                              ),
                            ],
                          ),
                          const Spacer(),
                          Row(
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
                          )
                        ],
                      ),
                    ),
                    Gap.height(24),
                    Padding(
                      padding: KPadding.horizontal20,
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              'Shubham accepted your request for switchbox installation.',
                              style: KText.r16w5,
                            ),
                          ),
                          ShadowContainer(
                              borderRadius: kBorderRadius5,
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 110,
                                    child: Stack(
                                      children: [
                                        Padding(
                                          padding: KPadding.all15,
                                          child: Image.network(
                                            'https://i.postimg.cc/DzVR7yPY/image-97.png',
                                            height: 25,
                                          ),
                                        ),
                                        Positioned(
                                          left: 25,
                                          child: ShadowContainer(
                                            padding: KPadding.all15,
                                            borderRadius: kBorderRadius5,
                                            child: Image.network(
                                              'https://i.postimg.cc/DzVR7yPY/image-97.png',
                                              height: 25,
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          right: 0,
                                          child: ShadowContainer(
                                              padding: KPadding.all15,
                                              borderRadius: kBorderRadius5,
                                              child: const Icon(
                                                Icons.add,
                                                size: 25,
                                                color: CustomColors.grey,
                                              )),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ))
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
                            'Your work has been accepted!',
                            style: KText.r14w5,
                          ).mOnly(left: 10),
                          Gap.height(20),
                          StepperForm(activeStep: activeStep),
                          Gap.height(24),
                          Text(
                            'You booked this work on Saturday September 08, 2024. You can also mark the starting date of the work on the calendar.',
                            style: KText.r13,
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
                          Gap.height(25),
                          const AppointmentCalender(
                            enableRedMark: false,
                          ),
                          Gap.height(25),
                          ShadowContainer(
                            disableShadow: true,
                            backgroundColor: CustomColors.gradientGrey,
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
