import 'package:customize_button/customize_button.dart';

import 'package:dhoond/components/arrow_left_appbar.dart';
import 'package:dhoond/components/shadow_container.dart';
import 'package:dhoond/screens/users_screens/float_payment/appointment_calender.dart';
import 'package:dhoond/screens/users_screens/float_payment/float_payment_plan_screen/section/days_section.dart';
import 'package:dhoond/screens/users_screens/float_payment/float_payment_plan_screen/section/float_payment_header.dart';
import 'package:dhoond/screens/users_screens/float_payment/float_payment_plan_screen/section/monthly_section.dart';
import 'package:dhoond/screens/users_screens/float_payment/float_payment_plan_screen/section/weeks_section.dart';
import 'package:dhoond/utilities/core/kboxshadow.dart';
import 'package:dhoond/utilities/core/kpadding.dart';
import 'package:dhoond/utilities/core/kradius.dart';
import 'package:dhoond/utilities/custom_colors/custom_colors.dart';
import 'package:dhoond/utilities/gap/gap.dart';
import 'package:dhoond/utilities/theme/ktext_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:get/get.dart';
import 'package:super_tooltip/super_tooltip.dart';

import '../../../../data/controller/float_controller/float_controller.dart';
import '../../../../utilities/constant/constant.dart';

class PartnerFloatDetailScreen extends StatefulWidget {
  const PartnerFloatDetailScreen({super.key, this.grandTotal = 0});
  final double grandTotal;
  @override
  State<PartnerFloatDetailScreen> createState() =>
      _PartnerFloatDetailScreenState();
}

class _PartnerFloatDetailScreenState extends State<PartnerFloatDetailScreen> {
  FloatPlanType type = FloatPlanType.days;
  final floatController = Get.put(FloatController());
  @override
  void initState() {
    super.initState();
    floatController.price.value = widget.grandTotal;
  }

  @override
  void dispose() {
    super.dispose();
    Get.delete<FloatController>();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: KPadding.horizontal20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Gap.height(17),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const ArrowLeftAppbar(
                      padding: KPadding.none,
                    ),
                    const Spacer(),
                    Text(
                      'Float payment',
                      style: KText.r20w5Black,
                    ),
                    const Spacer(),
                    SuperTooltip(
                        elevation: 0,
                        hideTooltipOnTap: true,
                        shadowSpreadRadius: 0,
                        minimumOutsideMargin: 15,
                        arrowLength: 20,
                        content: Container(
                          padding: KPadding.all15,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                'Penalty for late payments',
                                style: KText.r14,
                              ),
                              Gap.height(10),
                              Text(
                                'A ₹40 penalty applies for late payments. Avoid it by paying on time.',
                                style: KText.r13Grey,
                              ),
                            ],
                          ),
                        ),
                        child: const Icon(
                          Foundation.info,
                          size: 24,
                        )),
                  ],
                ),
                Gap.height(30),
                const FloatPaymentHeader(
                  isRequestSent: true,
                ),
                Gap.height(20),
                const AppointmentCalender(
                  enableRedMark: false,
                ),
                Gap.height(20),
                Text(
                  'Upcoming FLOAT dates',
                  style: KText.r18w5,
                ),
                Gap.height(12),
                ShadowContainer(
                  padding: KPadding.symmetric(20, 15),
                  borderRadius: kBorderRadius8,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Upcoming FLOAT date',
                            style: KText.r14w5,
                          ),
                          Text(
                            '09 July 2024  Friday 11:00 AM',
                            style: KText.r12GreyW5,
                          )
                        ],
                      ),
                      const Spacer(),
                      Text(
                        'In 7 hours',
                        style: KText.r14w5,
                      ),
                      Gap.width(5)
                    ],
                  ),
                ),
                Gap.height(20)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
