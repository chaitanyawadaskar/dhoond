import 'package:customize_button/customize_button.dart';
import 'package:dhoond/components/arrow_left_appbar.dart';
import 'package:dhoond/components/shadow_container.dart';
import 'package:dhoond/data/extensions/extensions.dart';
import 'package:dhoond/screens/users_screens/float_payment/appointment_calender.dart';
import 'package:dhoond/screens/users_screens/user_booking_info_screen/components/stepper_form.dart';
import 'package:dhoond/screens/users_screens/user_booking_info_screen/user_partner_order_details_screen.dart';
import 'package:dhoond/screens/users_screens/user_dashboard_screen/user_dashboard_screen.dart';
import 'package:dhoond/screens/users_screens/user_partner_detail_screen/user_partner_detail_screen.dart';
import 'package:dhoond/utilities/assets_paths/assets_paths.dart';
import 'package:dhoond/utilities/core/kpadding.dart';
import 'package:dhoond/utilities/core/kradius.dart';
import 'package:dhoond/utilities/custom_colors/custom_colors.dart';
import 'package:dhoond/utilities/gap/gap.dart';
import 'package:dhoond/utilities/theme/ktext_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:marquee/marquee.dart';

class UserDoneBookingInfoScreen extends StatefulWidget {
  const UserDoneBookingInfoScreen({super.key});

  @override
  State<UserDoneBookingInfoScreen> createState() =>
      _UserDoneBookingInfoScreenState();
}

class _UserDoneBookingInfoScreenState extends State<UserDoneBookingInfoScreen> {
  int activeStep = 3;
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
                    const Spacer(
                      flex: 2,
                    ),
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
                      padding: KPadding.horizontal(6),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Your work has been completed!',
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
                                onTap: () {},
                                text: 'Book again',
                                enableBorder: true,
                                elevation: 0,
                                backgroundColor: CustomColors.white,
                                fontStyle: KText.r12w5,
                                borderRadius: 25,
                                width: 120.w,
                                borderColor: CustomColors.mobileNoGrey,
                              ),
                              Gap.width(),
                              CustomizedButton(
                                onTap: () {
                                  Get.to(() => const UserPartnerOrderDetails());
                                },
                                text: 'View order details',
                                enableBorder: true,
                                elevation: 0,
                                backgroundColor: CustomColors.white,
                                fontStyle: KText.r12w5,
                                borderRadius: 25,
                                width: 150.w,
                                borderColor: CustomColors.mobileNoGrey,
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
                          Gap.height(12),
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
