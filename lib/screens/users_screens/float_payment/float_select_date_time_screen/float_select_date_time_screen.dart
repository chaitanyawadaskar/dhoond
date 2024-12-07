import 'package:customize_button/customize_button.dart';
import 'package:dhoond/components/arrow_left_appbar.dart';
import 'package:dhoond/components/dash_dot_line.dart';
import 'package:dhoond/data/extensions/extensions.dart';
import 'package:dhoond/utilities/core/kpadding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:get/get.dart';

import '../../../../components/shadow_container.dart';
import '../../../../data/controller/float_controller/float_controller.dart';
import '../../../../data/functions/common_function.dart';
import '../../../../utilities/core/kradius.dart';
import '../../../../utilities/custom_colors/custom_colors.dart';
import '../../../../utilities/gap/gap.dart';
import '../../../../utilities/theme/ktext_theme.dart';
import '../float_payment_plan_screen/float_payment_plan_screen.dart';
import 'components/float_date_time_app_bar.dart';

class FloatSelectDateTimeScreen extends StatefulWidget {
  const FloatSelectDateTimeScreen({super.key, required this.grandTotal});
  final double grandTotal;

  @override
  State<FloatSelectDateTimeScreen> createState() =>
      _FloatSelectDateTimeScreenState();
}

class _FloatSelectDateTimeScreenState extends State<FloatSelectDateTimeScreen> {
  final floatController = Get.put(FloatController());
  String selectedTime = '';
  String selectedTime1 = '';
  int timeTypeVal = -1;
  var timeList = [
    '09:00 AM',
    '10:00 AM',
    '11:00 AM',
    '12:00 AM',
    '01:00 PM',
    '02:00 PM',
    '03:00 PM',
    '04:00 PM',
    '05:00 PM',
    '06:00 PM',
  ];
  var timeList1 = [
    '09:00 AM',
    '10:00 AM',
    '11:00 AM',
    '12:00 AM',
    '01:00 PM',
    '02:00 PM',
    '03:00 PM',
    '04:00 PM',
    '05:00 PM',
    '06:00 PM',
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const FloatDateTimeAppBar(),
        body: Column(
          children: [
            Gap.height(8),
            Text(
              'Select the month to set a floating payment end date. Provided by partner.',
              style: KText.r14Grey,
            ).mSymmetric(16),
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
                                  floatController.selectStartDate(context);
                                },
                                icon: const Icon(
                                  MaterialCommunityIcons.calendar_month,
                                  color: CustomColors.grey,
                                  size: 20,
                                ),
                              ),
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
                                  floatController.selectEndDate(context);
                                },
                                icon: const Icon(
                                  MaterialCommunityIcons.calendar_month,
                                  color: CustomColors.grey,
                                  size: 20,
                                ),
                              ),
                              Obx(() {
                                return Text(
                                  floatController.endDate.value != null
                                      ? Functions.formatDate(floatController
                                          .endDate.value
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
            ).mSymmetric(16),
            Gap.height(25),
            const DashDotLine(
              dashWidth: 2,
              color: CustomColors.fontGrey,
            ).mSymmetric(16),
            Gap.height(20),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Planned Arrival Time',
                style: KText.r16w5,
              ),
            ).mSymmetric(16),
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
                          onTap: () {
                            setState(() {
                              timeTypeVal = 0;
                            });
                          },
                          padding: KPadding.all5,
                          borderRadius: kBorderRadius8,
                          backgroundColor: timeTypeVal == 0
                              ? CustomColors.faintGrey
                              : CustomColors.transparent,
                          border: timeTypeVal == 0
                              ? kBorderAllBlack05
                              : kBorderAllGrey05,
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
                          onTap: () {
                            setState(() {
                              timeTypeVal = 1;
                            });
                          },
                          padding: KPadding.all5,
                          borderRadius: kBorderRadius8,
                          backgroundColor: timeTypeVal == 1
                              ? CustomColors.faintGrey
                              : CustomColors.transparent,
                          border: timeTypeVal == 1
                              ? kBorderAllBlack05
                              : kBorderAllGrey05,
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
            ).mSymmetric(16),
            Gap.height(25),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Suggested Time',
                style: KText.r16w5,
              ),
            ).mSymmetric(16),
            Gap.height(12),
            timeTypeVal == 0
                ? Container(
                    width: double.infinity,
                    margin: KPadding.symmetric(18, 0),
                    child: Wrap(
                      alignment: WrapAlignment.start,
                      runSpacing: 10,
                      spacing: 15,
                      children: timeList
                          .map((e) => ShadowContainer(
                              onTap: () {
                                setState(() {
                                  selectedTime = e;
                                  floatController.arriveTime.value = e;
                                });
                              },
                              padding: KPadding.symmetric(25, 15),
                              disableShadow: selectedTime == e,
                              borderRadius: kBorderRadius4,
                              border: kBorderAllGrey05,
                              backgroundColor: selectedTime == e
                                  ? CustomColors.mobileNoGrey
                                  : null,
                              child: Text(
                                e,
                                style: KText.r14w5,
                              )))
                          .toList(),
                    ),
                  )
                : Container(
                    width: double.infinity,
                    margin: KPadding.symmetric(18, 0),
                    child: Wrap(
                      alignment: WrapAlignment.start,
                      runSpacing: 10,
                      spacing: 15,
                      children: timeList1
                          .map((e) => ShadowContainer(
                              onTap: () {
                                setState(() {
                                  selectedTime1 = e;
                                  floatController.departTime.value = e;
                                });
                              },
                              padding: KPadding.symmetric(25, 15),
                              disableShadow: selectedTime1 == e,
                              borderRadius: kBorderRadius4,
                              border: kBorderAllGrey05,
                              backgroundColor: selectedTime1 == e
                                  ? CustomColors.mobileNoGrey
                                  : null,
                              child: Text(
                                e,
                                style: KText.r14w5,
                              )))
                          .toList(),
                    ),
                  ),
            const Spacer(),
            CustomizedButton(
              onTap: () {
                Get.to(
                  () => FloatPaymentPlanScreen(
                    grandTotal: widget.grandTotal,
                  ),
                  transition: Transition.native,
                );
              },
              text: 'Confirm',
              fontStyle: KText.r20w5White,
              backgroundColor: CustomColors.black,
            ).mSymmetric(16),
            Gap.height(35),
          ],
        ),
      ),
    );
  }
}
