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

class WeeksSection extends StatefulWidget {
  const WeeksSection({
    super.key,
  });

  @override
  State<WeeksSection> createState() => _WeeksSectionState();
}

class _WeeksSectionState extends State<WeeksSection> {
  bool selected = false;
  final floatController = Get.find<FloatController>();
  int enableDaysForMonth = -1;
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
                '${floatController.differenceDay.value} payments per week or on equivalent days',
                style: KText.r14Grey,
              );
            }),
            Gap.height(),
            Obx(() {
              return Text(
                '${floatController.weekWisePrice.value.toStringAsFixed(0)} every week'
                    .rupee,
                style: KText.r20w5,
              );
            }),
            Obx(() {
              return Text(
                '${floatController.enableWeekDays.value} Payments',
                style: KText.r14Grey,
              );
            }),
            Gap.height(),
            Obx(() {
              return Column(
                children: [
                  FloatPaymentCard(
                      onTap: () {
                        setState(() {
                          enableDaysForMonth = 0;
                        });
                      },
                      opacity: (1 <= floatController.enableWeekDays.value &&
                              floatController.weekWisePrice.value > 0)
                          ? 1
                          : 0.2,
                      isSelected: selected,
                      isPaid: false,
                      type: FloatPlanType.weeks,
                      showButton: true,
                      index: 1,
                      date: '23 rd Feb',
                      price: floatController.weekWisePrice.value
                          .toStringAsFixed(0)),
                  Gap.height(),
                  if (enableDaysForMonth == 0)
                    Column(
                      children: [
                        FloatPaymentCard(
                            disableRadio: true,
                            isSelected: true,
                            isPaid: false,
                            showButton: true,
                            index: 1,
                            date: '23 rd Feb',
                            price: floatController.dayWisePrice.value
                                .toStringAsFixed(0)),
                        Gap.height(),
                        FloatPaymentCard(
                            isSelected: false,
                            disableRadio: true,
                            isPaid: false,
                            showButton: false,
                            index: 2,
                            date: '23 rd Feb',
                            price: floatController.dayWisePrice.value
                                .toStringAsFixed(0)),
                        Gap.height(),
                        FloatPaymentCard(
                            isSelected: selected,
                            isPaid: false,
                            disableRadio: true,
                            index: 3,
                            date: '23 rd Feb',
                            price: floatController.dayWisePrice.value
                                .toStringAsFixed(0)),
                        Gap.height(),
                        FloatPaymentCard(
                            isSelected: selected,
                            disableRadio: true,
                            isPaid: false,
                            index: 4,
                            date: '24 rd Feb',
                            price: floatController.dayWisePrice.value
                                .toStringAsFixed(0)),
                        Gap.height(),
                        FloatPaymentCard(
                            isSelected: selected,
                            disableRadio: true,
                            isPaid: false,
                            index: 5,
                            date: '25 rd Feb',
                            price: floatController.dayWisePrice.value
                                .toStringAsFixed(0)),
                        Gap.height(),
                        FloatPaymentCard(
                            isSelected: selected,
                            disableRadio: true,
                            isPaid: false,
                            index: 6,
                            date: '26 rd Feb',
                            price: floatController.dayWisePrice.value
                                .toStringAsFixed(0)),
                        Gap.height(),
                        FloatPaymentCard(
                            isSelected: selected,
                            disableRadio: true,
                            isPaid: false,
                            index: 7,
                            date: '27 rd Feb',
                            price: floatController.dayWisePrice.value
                                .toStringAsFixed(0)),
                        Gap.height(),
                      ],
                    ),
                  FloatPaymentCard(
                      onTap: () {
                        setState(() {
                          enableDaysForMonth = 1;
                        });
                      },
                      opacity: (2 <= floatController.enableWeekDays.value &&
                              floatController.weekWisePrice.value > 0)
                          ? 1
                          : 0.2,
                      isSelected: true,
                      isPaid: false,
                      showButton: false,
                      type: FloatPlanType.weeks,
                      index: 2,
                      date: '23 rd Feb',
                      price: floatController.weekWisePrice.value
                          .toStringAsFixed(0)),
                  Gap.height(),
                  if (enableDaysForMonth == 1)
                    Column(
                      children: [
                        FloatPaymentCard(
                            disableRadio: true,
                            isSelected: true,
                            isPaid: false,
                            showButton: true,
                            index: 1,
                            date: '23 rd Feb',
                            price: floatController.dayWisePrice.value
                                .toStringAsFixed(0)),
                        Gap.height(),
                        FloatPaymentCard(
                            isSelected: false,
                            disableRadio: true,
                            isPaid: false,
                            showButton: false,
                            index: 2,
                            date: '23 rd Feb',
                            price: floatController.dayWisePrice.value
                                .toStringAsFixed(0)),
                        Gap.height(),
                        FloatPaymentCard(
                            isSelected: selected,
                            isPaid: false,
                            disableRadio: true,
                            index: 3,
                            date: '23 rd Feb',
                            price: floatController.dayWisePrice.value
                                .toStringAsFixed(0)),
                        Gap.height(),
                        FloatPaymentCard(
                            isSelected: selected,
                            disableRadio: true,
                            isPaid: false,
                            index: 4,
                            date: '24 rd Feb',
                            price: floatController.dayWisePrice.value
                                .toStringAsFixed(0)),
                        Gap.height(),
                        FloatPaymentCard(
                            isSelected: selected,
                            disableRadio: true,
                            isPaid: false,
                            index: 5,
                            date: '25 rd Feb',
                            price: floatController.dayWisePrice.value
                                .toStringAsFixed(0)),
                        Gap.height(),
                        FloatPaymentCard(
                            isSelected: selected,
                            disableRadio: true,
                            isPaid: false,
                            index: 6,
                            date: '26 rd Feb',
                            price: floatController.dayWisePrice.value
                                .toStringAsFixed(0)),
                        Gap.height(),
                        FloatPaymentCard(
                            isSelected: selected,
                            disableRadio: true,
                            isPaid: false,
                            index: 7,
                            date: '27 rd Feb',
                            price: floatController.dayWisePrice.value
                                .toStringAsFixed(0)),
                        Gap.height(),
                      ],
                    ),
                  FloatPaymentCard(
                      onTap: () {
                        setState(() {
                          enableDaysForMonth = 2;
                        });
                      },
                      opacity: (3 <= floatController.enableWeekDays.value &&
                              floatController.weekWisePrice.value > 0)
                          ? 1
                          : 0.2,
                      isSelected: selected,
                      isPaid: false,
                      index: 3,
                      type: FloatPlanType.weeks,
                      date: '23 rd Feb',
                      price: floatController.weekWisePrice.value
                          .toStringAsFixed(0)),
                  Gap.height(),
                  if (enableDaysForMonth == 2)
                    Column(
                      children: [
                        FloatPaymentCard(
                            disableRadio: true,
                            isSelected: true,
                            isPaid: false,
                            showButton: true,
                            index: 1,
                            date: '23 rd Feb',
                            price: floatController.dayWisePrice.value
                                .toStringAsFixed(0)),
                        Gap.height(),
                        FloatPaymentCard(
                            isSelected: false,
                            disableRadio: true,
                            isPaid: false,
                            showButton: false,
                            index: 2,
                            date: '23 rd Feb',
                            price: floatController.dayWisePrice.value
                                .toStringAsFixed(0)),
                        Gap.height(),
                        FloatPaymentCard(
                            isSelected: selected,
                            isPaid: false,
                            disableRadio: true,
                            index: 3,
                            date: '23 rd Feb',
                            price: floatController.dayWisePrice.value
                                .toStringAsFixed(0)),
                        Gap.height(),
                        FloatPaymentCard(
                            isSelected: selected,
                            disableRadio: true,
                            isPaid: false,
                            index: 4,
                            date: '24 rd Feb',
                            price: floatController.dayWisePrice.value
                                .toStringAsFixed(0)),
                        Gap.height(),
                        FloatPaymentCard(
                            isSelected: selected,
                            disableRadio: true,
                            isPaid: false,
                            index: 5,
                            date: '25 rd Feb',
                            price: floatController.dayWisePrice.value
                                .toStringAsFixed(0)),
                        Gap.height(),
                        FloatPaymentCard(
                            isSelected: selected,
                            disableRadio: true,
                            isPaid: false,
                            index: 6,
                            date: '26 rd Feb',
                            price: floatController.dayWisePrice.value
                                .toStringAsFixed(0)),
                        Gap.height(),
                        FloatPaymentCard(
                            isSelected: selected,
                            disableRadio: true,
                            isPaid: false,
                            index: 7,
                            date: '27 rd Feb',
                            price: floatController.dayWisePrice.value
                                .toStringAsFixed(0)),
                        Gap.height(),
                      ],
                    ),
                  FloatPaymentCard(
                      onTap: () {
                        setState(() {
                          enableDaysForMonth = 3;
                        });
                      },
                      opacity: (4 <= floatController.enableWeekDays.value &&
                              floatController.weekWisePrice.value > 0)
                          ? 1
                          : 0.2,
                      isSelected: selected,
                      isPaid: false,
                      type: FloatPlanType.weeks,
                      index: 4,
                      date: '24 rd Feb',
                      price: floatController.weekWisePrice.value
                          .toStringAsFixed(0)),
                  Gap.height(20),
                  if (enableDaysForMonth == 3)
                    Column(
                      children: [
                        FloatPaymentCard(
                            disableRadio: true,
                            isSelected: true,
                            isPaid: false,
                            showButton: true,
                            index: 1,
                            date: '23 rd Feb',
                            price: floatController.dayWisePrice.value
                                .toStringAsFixed(0)),
                        Gap.height(),
                        FloatPaymentCard(
                            isSelected: false,
                            disableRadio: true,
                            isPaid: false,
                            showButton: false,
                            index: 2,
                            date: '23 rd Feb',
                            price: floatController.dayWisePrice.value
                                .toStringAsFixed(0)),
                        Gap.height(),
                        FloatPaymentCard(
                            isSelected: selected,
                            isPaid: false,
                            disableRadio: true,
                            index: 3,
                            date: '23 rd Feb',
                            price: floatController.dayWisePrice.value
                                .toStringAsFixed(0)),
                        Gap.height(),
                        FloatPaymentCard(
                            isSelected: selected,
                            disableRadio: true,
                            isPaid: false,
                            index: 4,
                            date: '24 rd Feb',
                            price: floatController.dayWisePrice.value
                                .toStringAsFixed(0)),
                        Gap.height(),
                        FloatPaymentCard(
                            isSelected: selected,
                            disableRadio: true,
                            isPaid: false,
                            index: 5,
                            date: '25 rd Feb',
                            price: floatController.dayWisePrice.value
                                .toStringAsFixed(0)),
                        Gap.height(),
                        FloatPaymentCard(
                            isSelected: selected,
                            disableRadio: true,
                            isPaid: false,
                            index: 6,
                            date: '26 rd Feb',
                            price: floatController.dayWisePrice.value
                                .toStringAsFixed(0)),
                        Gap.height(),
                        FloatPaymentCard(
                            isSelected: selected,
                            disableRadio: true,
                            isPaid: false,
                            index: 7,
                            date: '27 rd Feb',
                            price: floatController.dayWisePrice.value
                                .toStringAsFixed(0)),
                        Gap.height(),
                      ],
                    ),
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
