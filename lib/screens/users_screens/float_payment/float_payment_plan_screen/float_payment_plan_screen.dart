import 'package:customize_button/customize_button.dart';

import 'package:dhoond/components/arrow_left_appbar.dart';
import 'package:dhoond/components/shadow_container.dart';
import 'package:dhoond/data/extensions/extensions.dart';
import 'package:dhoond/screens/users_screens/float_payment/float_payment_plan_screen/section/monthly_section.dart';
import 'package:dhoond/screens/users_screens/user_order_detail_screen/user_order_detail_screen.dart';
import 'package:dhoond/utilities/core/kboxshadow.dart';
import 'package:dhoond/utilities/core/kpadding.dart';
import 'package:dhoond/utilities/core/kradius.dart';
import 'package:dhoond/utilities/custom_colors/custom_colors.dart';
import 'package:dhoond/utilities/gap/gap.dart';
import 'package:dhoond/utilities/theme/ktext_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:get/get.dart';
import '../../../../data/controller/float_controller/float_controller.dart';
import '../../../../utilities/constant/constant.dart';
import 'components/float_payment_plan_app_bar.dart';
import 'section/days_section.dart';
import 'section/float_payment_header.dart';
import 'section/weeks_section.dart';

class FloatPaymentPlanScreen extends StatefulWidget {
  const FloatPaymentPlanScreen({super.key, this.grandTotal = 0});
  final double grandTotal;
  @override
  State<FloatPaymentPlanScreen> createState() => _FloatPaymentPlanScreenState();
}

class _FloatPaymentPlanScreenState extends State<FloatPaymentPlanScreen> {
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
        appBar: const FloatPaymentPlanAppBar(),
        bottomNavigationBar: ShadowContainer(
            child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Gap.height(25),
            CustomizedButton(
              onTap: () {
                Get.to(() => const UserOrderDetailScreen());
              },
              fontStyle: KText.r16w5White,
              pad: KPadding.symmetric(30, 5),
              borderRadius: 5,
              elevation: 0,
              backgroundColor: CustomColors.black,
              text: '₹Pay in full | GET 5% OFF',
            ).mSymmetric(16),
            Gap.height(25)
          ],
        )),
        body: SingleChildScrollView(
          child: Padding(
            padding: KPadding.horizontal20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Gap.height(8),
                const FloatPaymentHeader(),
                Gap.height(),
                Text(
                  'Float payment plan',
                  style: KText.r20w5,
                ),
                Gap.height(),
                ShadowContainer(
                  padding: KPadding.symmetric(7, 5),
                  backgroundColor: CustomColors.mobileNoGrey,
                  borderRadius: kBorderRadius10,
                  disableShadow: true,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ShadowContainer(
                        borderRadius: kBorderRadius5,
                        height: 35,
                        width: 90.w,
                        alignment: Alignment.center,
                        disableShadow: true,
                        backgroundColor: type == FloatPlanType.days
                            ? CustomColors.white
                            : CustomColors.transparent,
                        onTap: () {
                          setState(() {
                            type = FloatPlanType.days;
                          });
                        },
                        child: Text(
                          'Days',
                          style: type == FloatPlanType.days
                              ? KText.r14Bold
                              : KText.r14Grey,
                        ),
                      ),
                      ShadowContainer(
                        borderRadius: kBorderRadius5,
                        height: 35,
                        width: 90.w,
                        alignment: Alignment.center,
                        disableShadow: true,
                        backgroundColor: type == FloatPlanType.weeks
                            ? CustomColors.white
                            : CustomColors.transparent,
                        onTap: () {
                          setState(() {
                            type = FloatPlanType.weeks;
                          });
                        },
                        child: Text(
                          'Weeks',
                          style: type == FloatPlanType.weeks
                              ? KText.r14Bold
                              : KText.r14Grey,
                        ),
                      ),
                      ShadowContainer(
                        borderRadius: kBorderRadius5,
                        height: 35,
                        backgroundColor: type == FloatPlanType.month
                            ? CustomColors.white
                            : CustomColors.transparent,
                        width: 90.w,
                        alignment: Alignment.center,
                        disableShadow: true,
                        onTap: () {
                          setState(() {
                            type = FloatPlanType.month;
                          });
                        },
                        child: Text(
                          'Months',
                          style: type == FloatPlanType.month
                              ? KText.r14Bold
                              : KText.r14Grey,
                        ),
                      ),
                    ],
                  ),
                ),
                Gap.height(12),
                type == FloatPlanType.days
                    ? const DaysSection()
                    : type == FloatPlanType.weeks
                        ? const WeeksSection()
                        : const MonthlySection(),
                Gap.height(30),
                ShadowContainer(
                    padding: KPadding.all16,
                    boxShadow: KBoxShadow.faintGrey,
                    borderRadius: kBorderRadius10,
                    child: Row(
                      children: [
                        const Icon(
                          Feather.calendar,
                          size: 20,
                        ),
                        Gap.width(),
                        Text(
                          'Manage your payment plan',
                          style: KText.r14w5,
                        ),
                        const Spacer(),
                        const Icon(
                          Icons.chevron_right,
                          size: 25,
                        )
                      ],
                    )),
                Gap.height(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
