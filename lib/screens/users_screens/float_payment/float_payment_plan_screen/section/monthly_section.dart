import 'package:dhoond/data/extensions/extensions.dart';
import 'package:dhoond/utilities/constant/constant.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../components/shadow_container.dart';
import '../../../../../data/controller/float_controller/float_controller.dart';
import '../../../../../utilities/core/kpadding.dart';
import '../../../../../utilities/core/kradius.dart';
import '../../../../../utilities/custom_colors/custom_colors.dart';
import '../../../../../utilities/gap/gap.dart';
import '../../../../../utilities/theme/ktext_theme.dart';
import '../../components/float_payment_card.dart';

class MonthlySection extends StatefulWidget {
  const MonthlySection({
    super.key,
  });

  @override
  State<MonthlySection> createState() => _MonthlySectionState();
}

class _MonthlySectionState extends State<MonthlySection> {
  bool selected = false;
  final floatController = Get.find<FloatController>();

  @override
  Widget build(BuildContext context) {
    return ShadowContainer(
        borderRadius: kBorderRadius10,
        padding: KPadding.symmetric(15, 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Obx(() {
              return Text(
                'We split your order into ${floatController.differenceDay.value} payments over 12 month. Your first payment is due today.',
                style: KText.r14Grey,
              );
            }),
            Gap.height(),
            Obx(() {
              return Text(
                '${floatController.monthWisePrice.value.toStringAsFixed(0)} every month'
                    .rupee,
                style: KText.r20w5,
              );
            }),
            Obx(() {
              return Text(
                '${floatController.enableMonthDays.value} Payments',
                style: KText.r14Grey,
              );
            }),
            Gap.height(),
            Obx(() {
              return Column(
                children: [
                  if (1 <= floatController.enableMonthDays.value)
                    FloatPaymentCard(
                        opacity: (1 <= floatController.enableMonthDays.value &&
                                floatController.monthWisePrice.value > 0)
                            ? 1
                            : 0.2,
                        isSelected: selected,
                        isPaid: true,
                        type: FloatPlanType.month,
                        showButton: true,
                        index: 1,
                        date: '23 rd Feb',
                        price: floatController.monthWisePrice.value
                            .toStringAsFixed(0)),
                  if (1 <= floatController.enableMonthDays.value) Gap.height(),
                  if (2 <= floatController.enableMonthDays.value)
                    FloatPaymentCard(
                        opacity: (2 <= floatController.enableMonthDays.value &&
                                floatController.monthWisePrice.value > 0)
                            ? 1
                            : 0.2,
                        isSelected: true,
                        isPaid: false,
                        showButton: false,
                        type: FloatPlanType.month,
                        index: 2,
                        date: '23 rd Feb',
                        price: floatController.monthWisePrice.value
                            .toStringAsFixed(0)),
                  if (2 <= floatController.enableMonthDays.value) Gap.height(),
                  if (3 <= floatController.enableMonthDays.value)
                    FloatPaymentCard(
                        opacity: (3 <= floatController.enableMonthDays.value &&
                                floatController.monthWisePrice.value > 0)
                            ? 1
                            : 0.2,
                        isSelected: selected,
                        isPaid: false,
                        index: 3,
                        type: FloatPlanType.month,
                        date: '23 rd Feb',
                        price: floatController.monthWisePrice.value
                            .toStringAsFixed(0)),
                  if (3 <= floatController.enableMonthDays.value) Gap.height(),
                  if (4 <= floatController.enableMonthDays.value)
                    FloatPaymentCard(
                        opacity: (4 <= floatController.enableMonthDays.value &&
                                floatController.monthWisePrice.value > 0)
                            ? 1
                            : 0.2,
                        isSelected: selected,
                        isPaid: false,
                        type: FloatPlanType.month,
                        index: 4,
                        date: '24 rd Feb',
                        price: floatController.monthWisePrice.value
                            .toStringAsFixed(0)),
                  if (4 <= floatController.enableMonthDays.value) Gap.height(),
                  if (5 <= floatController.enableMonthDays.value)
                    FloatPaymentCard(
                        opacity: (5 <= floatController.enableMonthDays.value &&
                                floatController.monthWisePrice.value > 0)
                            ? 1
                            : 0.2,
                        isSelected: selected,
                        isPaid: false,
                        type: FloatPlanType.month,
                        index: 5,
                        date: '24 rd Feb',
                        price: floatController.monthWisePrice.value
                            .toStringAsFixed(0)),
                  if (5 <= floatController.enableMonthDays.value) Gap.height(),
                  if (6 <= floatController.enableMonthDays.value)
                    FloatPaymentCard(
                        opacity: (6 <= floatController.enableMonthDays.value &&
                                floatController.monthWisePrice.value > 0)
                            ? 1
                            : 0.2,
                        isSelected: selected,
                        isPaid: false,
                        type: FloatPlanType.month,
                        index: 6,
                        date: '24 rd Feb',
                        price: floatController.monthWisePrice.value
                            .toStringAsFixed(0)),
                  if (6 <= floatController.enableMonthDays.value) Gap.height(),
                  if (7 <= floatController.enableMonthDays.value)
                    FloatPaymentCard(
                        opacity: (7 <= floatController.enableMonthDays.value &&
                                floatController.monthWisePrice.value > 0)
                            ? 1
                            : 0.2,
                        isSelected: selected,
                        isPaid: false,
                        type: FloatPlanType.month,
                        index: 7,
                        date: '24 rd Feb',
                        price: floatController.monthWisePrice.value
                            .toStringAsFixed(0)),
                  if (7 <= floatController.enableMonthDays.value) Gap.height(),
                  if (8 <= floatController.enableMonthDays.value)
                    FloatPaymentCard(
                        opacity: (8 <= floatController.enableMonthDays.value &&
                                floatController.monthWisePrice.value > 0)
                            ? 1
                            : 0.2,
                        isSelected: selected,
                        isPaid: false,
                        type: FloatPlanType.month,
                        index: 8,
                        date: '24 rd Feb',
                        price: floatController.monthWisePrice.value
                            .toStringAsFixed(0)),
                  if (8 <= floatController.enableMonthDays.value) Gap.height(),
                  if (9 <= floatController.enableMonthDays.value)
                    FloatPaymentCard(
                        opacity: (9 <= floatController.enableMonthDays.value &&
                                floatController.monthWisePrice.value > 0)
                            ? 1
                            : 0.2,
                        isSelected: selected,
                        isPaid: false,
                        type: FloatPlanType.month,
                        index: 9,
                        date: '24 rd Feb',
                        price: floatController.monthWisePrice.value
                            .toStringAsFixed(0)),
                  if (9 <= floatController.enableMonthDays.value) Gap.height(),
                  if (10 <= floatController.enableMonthDays.value)
                    FloatPaymentCard(
                        opacity: (10 <= floatController.enableMonthDays.value &&
                                floatController.monthWisePrice.value > 0)
                            ? 1
                            : 0.2,
                        isSelected: selected,
                        isPaid: false,
                        type: FloatPlanType.month,
                        index: 10,
                        date: '24 rd Feb',
                        price: floatController.monthWisePrice.value
                            .toStringAsFixed(0)),
                  if (10 <= floatController.enableMonthDays.value) Gap.height(),
                  if (11 <= floatController.enableMonthDays.value)
                    FloatPaymentCard(
                        opacity: (11 <= floatController.enableMonthDays.value &&
                                floatController.monthWisePrice.value > 0)
                            ? 1
                            : 0.2,
                        isSelected: selected,
                        isPaid: false,
                        type: FloatPlanType.month,
                        index: 11,
                        date: '24 rd Feb',
                        price: floatController.monthWisePrice.value
                            .toStringAsFixed(0)),
                  if (11 <= floatController.enableMonthDays.value) Gap.height(),
                  if (12 <= floatController.enableMonthDays.value)
                    FloatPaymentCard(
                        opacity: (12 <= floatController.enableMonthDays.value &&
                                floatController.monthWisePrice.value > 0)
                            ? 1
                            : 0.2,
                        isSelected: selected,
                        isPaid: false,
                        type: FloatPlanType.month,
                        index: 12,
                        date: '24 rd Feb',
                        price: floatController.monthWisePrice.value
                            .toStringAsFixed(0)),
                  Gap.height(20),
                  const Divider(
                    thickness: 1,
                    color: CustomColors.grey,
                  ),
                  Gap.height(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'No Interest',
                        style: KText.r14Grey,
                      ),
                      Obx(() {
                        return Text(
                          'Total cost ₹${floatController.price.value.toStringAsFixed(0)}',
                          style: KText.r14Grey,
                        );
                      })
                    ],
                  ),
                  Gap.height(10),
                ],
              );
            })
          ],
        ));
  }
}
