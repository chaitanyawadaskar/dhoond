import 'package:customize_button/customize_button.dart';
import 'package:dhoond/components/arrow_left_appbar.dart';
import 'package:dhoond/components/radio_button.dart';
import 'package:dhoond/screens/users_screens/user_dashboard_screen/user_dashboard_screen.dart';
import 'package:dhoond/screens/users_screens/user_location_confirmation_screen/user_cancel_booking_screen.dart';
import 'package:dhoond/utilities/core/kpadding.dart';
import 'package:dhoond/utilities/custom_colors/custom_colors.dart';
import 'package:dhoond/utilities/gap/gap.dart';
import 'package:dhoond/utilities/theme/ktext_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class ReplaceModeScreen extends StatefulWidget {
  const ReplaceModeScreen({super.key});

  @override
  State<ReplaceModeScreen> createState() => _ReplaceModeScreenState();
}

class _ReplaceModeScreenState extends State<ReplaceModeScreen> {
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
                    'Replace mode',
                    style: KText.r30ComfortaaW7,
                  )
                ],
              ),
              Gap.height(35),
              Text(
                'Please let us know why you’re replacing your partner. We would really appreciate your feedback.',
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
                      Expanded(
                        child: Text(
                          'The partner is charging more than the agreed amount',
                          style: KText.r15,
                        ),
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
                        'Misbehavior and conflict occurred',
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
                        'Unsatisfactory service',
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
                        'The partner damaged the appliances',
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
                        'Medical emergency occurred',
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
                      documentId = 5;
                    });
                  },
                  child: Row(
                    children: [
                      RadioButton(
                        selected: documentId == 5,
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
              CustomizedButton(
                onTap: () {
                  Get.to(
                    () => const UserDashboardScreen(
                      currentIndex: 2,
                    ),
                    transition: Transition.native,
                  );
                },
                fontStyle: KText.r20w5White,
                borderRadius: 5,
                backgroundColor: CustomColors.black,
                elevation: 0,
                text: 'Send Request',
              ),
              Gap.height(45)
            ],
          ),
        ),
      ),
    );
  }
}
