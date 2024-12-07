import 'package:dhoond/data/extensions/extensions.dart';

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

class DaysSection extends StatefulWidget {
  const DaysSection({
    super.key,
  });

  @override
  State<DaysSection> createState() => _DaysSectionState();
}

class _DaysSectionState extends State<DaysSection> {
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
                'We split your order into ${floatController.differenceDay.value} payments up to 7 days. Your first payment is due today.',
                style: KText.r14Grey,
              );
            }),
            Gap.height(),
            Obx(() {
              return Text(
                '${floatController.dayWisePrice.value.toStringAsFixed(0)} every day'
                    .rupee,
                style: KText.r20w5,
              );
            }),
            Obx(() {
              return Text(
                '${floatController.differenceDay.value} Payments',
                style: KText.r14Grey,
              );
            }),
            Gap.height(),
            Obx(() {
              return Column(
                children: [
                  FloatPaymentCard(
                      opacity: (1 <= floatController.differenceDay.value &&
                              floatController.dayWisePrice.value > 0)
                          ? 1
                          : 0.2,
                      isSelected: true,
                      isPaid: false,
                      showButton: true,
                      index: 1,
                      date: '23 rd Feb',
                      price: floatController.dayWisePrice.value
                          .toStringAsFixed(0)),
                  Gap.height(),
                  FloatPaymentCard(
                      opacity: (2 <= floatController.differenceDay.value &&
                              floatController.dayWisePrice.value > 0)
                          ? 1
                          : 0.2,
                      isSelected: false,
                      isPaid: false,
                      showButton: false,
                      index: 2,
                      date: '23 rd Feb',
                      price: floatController.dayWisePrice.value
                          .toStringAsFixed(0)),
                  Gap.height(),
                  FloatPaymentCard(
                      opacity: (3 <= floatController.differenceDay.value &&
                              floatController.dayWisePrice.value > 0)
                          ? 1
                          : 0.2,
                      isSelected: selected,
                      isPaid: false,
                      index: 3,
                      date: '23 rd Feb',
                      price: floatController.dayWisePrice.value
                          .toStringAsFixed(0)),
                  Gap.height(),
                  FloatPaymentCard(
                      opacity: (4 <= floatController.differenceDay.value &&
                              floatController.dayWisePrice.value > 0)
                          ? 1
                          : 0.2,
                      isSelected: selected,
                      isPaid: false,
                      index: 4,
                      date: '24 rd Feb',
                      price: floatController.dayWisePrice.value
                          .toStringAsFixed(0)),
                  Gap.height(),
                  FloatPaymentCard(
                      opacity: (5 <= floatController.differenceDay.value &&
                              floatController.dayWisePrice.value > 0)
                          ? 1
                          : 0.2,
                      isSelected: selected,
                      isPaid: false,
                      index: 5,
                      date: '25 rd Feb',
                      price: floatController.dayWisePrice.value
                          .toStringAsFixed(0)),
                  Gap.height(),
                  FloatPaymentCard(
                      opacity: (6 <= floatController.differenceDay.value &&
                              floatController.dayWisePrice.value > 0)
                          ? 1
                          : 0.2,
                      isSelected: selected,
                      isPaid: false,
                      index: 6,
                      date: '26 rd Feb',
                      price: floatController.dayWisePrice.value
                          .toStringAsFixed(0)),
                  Gap.height(),
                  FloatPaymentCard(
                      opacity: (7 <= floatController.differenceDay.value &&
                              floatController.dayWisePrice.value > 0)
                          ? 1
                          : 0.2,
                      isSelected: selected,
                      isPaid: false,
                      index: 7,
                      date: '27 rd Feb',
                      price: floatController.dayWisePrice.value
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
