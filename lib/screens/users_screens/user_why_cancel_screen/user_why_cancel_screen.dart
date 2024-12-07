import 'package:customize_button/customize_button.dart';
import 'package:dhoond/components/arrow_left_appbar.dart';
import 'package:dhoond/components/radio_button.dart';
import 'package:dhoond/data/extensions/extensions.dart';
import 'package:dhoond/screens/users_screens/user_location_confirmation_screen/user_cancel_booking_screen.dart';
import 'package:dhoond/utilities/core/kpadding.dart';
import 'package:dhoond/utilities/gap/gap.dart';
import 'package:dhoond/utilities/theme/ktext_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../components/radio_with_text.dart';
import '../../../utilities/custom_colors/custom_colors.dart';

class UserWhyCancelScreen extends StatefulWidget {
  const UserWhyCancelScreen({super.key});

  @override
  State<UserWhyCancelScreen> createState() => _UserWhyCancelScreenState();
}

class _UserWhyCancelScreenState extends State<UserWhyCancelScreen> {
  int documentId = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: KPadding.horizontal16,
          child: Column(
            children: [
              Gap.height(20),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const ArrowLeftAppbar(
                    padding: KPadding.none,
                  ),
                  Gap.width(30),
                  Text(
                    'Cancel Booking',
                    style: KText.r30ComfortaaW7,
                  )
                ],
              ),
              Gap.height(35),
              Text(
                'Please let us know why you’re canceling your booking. We would really appreciate your feedback.',
                style: KText.r18w5,
              ),
              Gap.height(20),
              Padding(
                padding: KPadding.only(bottom: 15),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      documentId = 0;
                    });
                  },
                  child: Row(
                    children: [
                      RadioButton(
                        selected: documentId == 0,
                      ),
                      Gap.width(),
                      Text(
                        'Don’t need the service anymore',
                        style: KText.r15,
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: KPadding.only(bottom: 15),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      documentId = 1;
                    });
                  },
                  child: Row(
                    children: [
                      RadioButton(
                        selected: documentId == 1,
                      ),
                      Gap.width(),
                      Text(
                        'Not available at this time',
                        style: KText.r15,
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: KPadding.only(bottom: 15),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      documentId = 2;
                    });
                  },
                  child: Row(
                    children: [
                      RadioButton(
                        selected: documentId == 2,
                      ),
                      Gap.width(),
                      Text(
                        'Found a better rate elsewhere',
                        style: KText.r15,
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: KPadding.only(bottom: 15),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      documentId = 3;
                    });
                  },
                  child: Row(
                    children: [
                      RadioButton(
                        selected: documentId == 3,
                      ),
                      Gap.width(),
                      Text(
                        'Placed the request by mistake',
                        style: KText.r15,
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: KPadding.only(bottom: 15),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      documentId = 4;
                    });
                  },
                  child: Row(
                    children: [
                      RadioButton(
                        selected: documentId == 4,
                      ),
                      Gap.width(),
                      Text(
                        'Other',
                        style: KText.r15,
                      )
                    ],
                  ),
                ),
              ),
              const Spacer(),
              Padding(
                  padding: KPadding.horizontal10,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomizedButton(
                        width: 170.w,
                        onTap: () {
                          // Get.to(() => UserWhyCancelScreen());
                        },
                        fontStyle: KText.r14w5,
                        pad: KPadding.symmetric(0, 4),
                        borderRadius: 5,
                        backgroundColor: CustomColors.white,
                        elevation: 0,
                        borderColor: CustomColors.black,
                        enableBorder: true,
                        text: 'Don’t cancel',
                      ),
                      CustomizedButton(
                        width: 170.w,
                        onTap: () {
                          Get.to(() => const UserCancelBookingScreen());
                        },
                        fontStyle: KText.r14Whitew5,
                        pad: KPadding.symmetric(0, 4),
                        borderRadius: 5,
                        backgroundColor: CustomColors.black,
                        text: 'Cancel Booking',
                      ),
                    ],
                  )),
              Gap.height(45)
            ],
          ),
        ),
      ),
    );
  }
}
