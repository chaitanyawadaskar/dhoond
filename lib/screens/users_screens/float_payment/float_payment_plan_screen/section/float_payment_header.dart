import 'package:customize_button/customize_button.dart';
import 'package:dhoond/components/shadow_container.dart';
import 'package:dhoond/data/extensions/extensions.dart';
import 'package:dhoond/data/functions/common_function.dart';
import 'package:dhoond/screens/users_screens/float_payment/float_payment_plan_screen/components/time_type.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:get/get.dart';
import '../../../../../data/controller/float_controller/float_controller.dart';
import '../../../../../utilities/core/kpadding.dart';
import '../../../../../utilities/core/kradius.dart';
import '../../../../../utilities/custom_colors/custom_colors.dart';
import '../../../../../utilities/gap/gap.dart';
import '../../../../../utilities/theme/ktext_theme.dart';
import '../components/time_dropdown.dart';

class FloatPaymentHeader extends StatefulWidget {
  const FloatPaymentHeader({
    super.key,
    this.isRequestSent = false,
  });
  final bool isRequestSent;

  @override
  State<FloatPaymentHeader> createState() => _FloatPaymentHeaderState();
}

class _FloatPaymentHeaderState extends State<FloatPaymentHeader> {
  bool enableTime = true;
  @override
  Widget build(BuildContext context) {
    final floatController = Get.find<FloatController>();

    return Column(
      children: [
        Text(
          'Select the month to set a floating payment end date. Provided by partner.',
          style: KText.r14Grey,
        ),
        Gap.height(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'From',
                    style: KText.r14w5,
                  ),
                  Gap.height(8),
                  ShadowContainer(
                      padding: KPadding.symmetric(5, 5),
                      borderRadius: kBorderRadius8,
                      border: kBorderAllGrey05,
                      child: Row(
                        children: [
                          IconButton(
                            visualDensity: const VisualDensity(
                                horizontal: -4, vertical: -4),
                            onPressed: () {
                              floatController.selectStartDate(context);
                            },
                            icon: const Icon(
                              MaterialCommunityIcons.calendar_month,
                              color: CustomColors.grey,
                              size: 20,
                            ),
                          ),
                          Gap.width(5),
                          Obx(() {
                            return Text(
                              floatController.startDate.value != null
                                  ? Functions.formatDate(floatController
                                      .startDate.value
                                      .toString())
                                  : '00/00/0000',
                              style: KText.r14,
                            );
                          }),
                          const Spacer(),
                          IconButton(
                            visualDensity: const VisualDensity(
                                horizontal: -4, vertical: -4),
                            onPressed: () {
                              floatController.startDate.value = null;
                              floatController.endDate.value = null;
                            },
                            icon: const Icon(
                              Entypo.circle_with_cross,
                              color: CustomColors.grey,
                              size: 18,
                            ),
                          ),
                        ],
                      ))
                ],
              ),
            ),
            Gap.width(12),
            Flexible(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'To',
                        style: KText.r14w5,
                      ),
                    ],
                  ),
                  Gap.height(8),
                  ShadowContainer(
                      padding: KPadding.symmetric(5, 5),
                      borderRadius: kBorderRadius8,
                      border: kBorderAllGrey05,
                      child: Row(
                        children: [
                          IconButton(
                            visualDensity: const VisualDensity(
                                horizontal: -4, vertical: -4),
                            onPressed: () {
                              floatController.selectEndDate(context);
                            },
                            icon: const Icon(
                              MaterialCommunityIcons.calendar_month,
                              color: CustomColors.grey,
                              size: 20,
                            ),
                          ),
                          Gap.width(5),
                          Obx(() {
                            return Text(
                              floatController.endDate.value != null
                                  ? Functions.formatDate(
                                      floatController.endDate.value.toString())
                                  : '00/00/0000',
                              style: KText.r14,
                            );
                          }),
                          const Spacer(),
                          IconButton(
                            visualDensity: const VisualDensity(
                                horizontal: -4, vertical: -4),
                            onPressed: () {
                              floatController.endDate.value = null;
                            },
                            icon: const Icon(
                              Entypo.circle_with_cross,
                              color: CustomColors.grey,
                              size: 18,
                            ),
                          ),
                        ],
                      ))
                ],
              ),
            ),
          ],
        ),
        if (enableTime)
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Gap.height(25),
              Row(
                children: [
                  Text(
                    'Planned Arrival Time',
                    style: KText.r16w5,
                  ),
                  const Spacer(),
                  const TimeType()
                ],
              ),
              Gap.height(12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Arrival Time',
                          style: KText.r14w5,
                        ),
                        Gap.height(10),
                        ShadowContainer(
                            borderRadius: kBorderRadius8,
                            border: kBorderAllGrey05,
                            padding: KPadding.all5,
                            child: Row(
                              children: [
                                IconButton(
                                  visualDensity: const VisualDensity(
                                      horizontal: -4, vertical: -4),
                                  onPressed: () async {
                                    //floatController.selectArriveTime(context);
                                  },
                                  icon: const Icon(
                                    AntDesign.clockcircle,
                                    color: CustomColors.grey,
                                    size: 16,
                                  ),
                                ),
                                const Spacer(),
                                Obx(() {
                                  return Text(
                                    floatController.arriveTime.value,
                                    style: KText.r14,
                                  );
                                }),
                                const Spacer(),
                                IconButton(
                                  visualDensity: const VisualDensity(
                                      horizontal: -4, vertical: -4),
                                  onPressed: () {
                                    floatController.arriveTime.value = '00:00';
                                    floatController.departTime.value = '00:00';
                                  },
                                  icon: const Icon(
                                    Entypo.circle_with_cross,
                                    color: CustomColors.grey,
                                    size: 18,
                                  ),
                                ),
                              ],
                            ))
                      ],
                    ),
                  ),
                  Gap.width(12),
                  Flexible(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Depart Time',
                              style: KText.r14w5,
                            ),
                          ],
                        ),
                        Gap.height(10),
                        ShadowContainer(
                            borderRadius: kBorderRadius8,
                            border: kBorderAllGrey05,
                            padding: KPadding.all5,
                            child: Row(
                              children: [
                                IconButton(
                                  visualDensity: const VisualDensity(
                                      horizontal: -4, vertical: -4),
                                  onPressed: () {
                                    //floatController.selectDepartTime(context);
                                  },
                                  icon: const Icon(
                                    AntDesign.clockcircle,
                                    color: CustomColors.grey,
                                    size: 16,
                                  ),
                                ),
                                const Spacer(),
                                Obx(() {
                                  return Text(
                                    floatController.departTime.value,
                                    style: KText.r14,
                                  );
                                }),
                                const Spacer(),
                                IconButton(
                                  visualDensity: const VisualDensity(
                                      horizontal: -4, vertical: -4),
                                  onPressed: () {
                                    floatController.departTime.value = '00:00';
                                  },
                                  icon: const Icon(
                                    Entypo.circle_with_cross,
                                    color: CustomColors.grey,
                                    size: 18,
                                  ),
                                ),
                              ],
                            ))
                      ],
                    ),
                  ),
                ],
              ),
              Gap.height(20),
              ShadowContainer(
                padding: KPadding.all15,
                borderRadius: kBorderRadius8,
                border: kBorderAllGrey05,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Obx(() {
                          return Text(
                            ' ${floatController.price.value.toStringAsFixed(2)}'
                                .rupee,
                            style: KText.r22w5,
                          );
                        }),
                        Text(
                          'Divided over 10 days',
                          style: KText.r12GreyW5,
                        )
                      ],
                    ),
                    const Spacer(),
                    CustomizedButton(
                      onTap: () {
                        setState(() {
                          enableTime = false;
                        });
                      },
                      fontStyle: KText.r13BoldWhite,
                      pad: KPadding.symmetric(0, 2),
                      borderRadius: 5,
                      backgroundColor: CustomColors.black,
                      elevation: 0,
                      text: widget.isRequestSent
                          ? 'Request full payment'
                          : 'Send request',
                    ),
                  ],
                ),
              )
            ],
          ),
      ],
    );
  }
}
