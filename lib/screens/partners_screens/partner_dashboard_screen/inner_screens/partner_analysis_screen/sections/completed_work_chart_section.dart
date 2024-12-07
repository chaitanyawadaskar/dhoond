import 'package:dhoond/data/extensions/extensions.dart';
import 'package:dhoond/utilities/core/kradius.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:get/get.dart';

import '../../../../../../utilities/core/kpadding.dart';
import '../../../../../../utilities/custom_colors/custom_colors.dart';
import '../../../../../../utilities/theme/ktext_theme.dart';
import '../components/trades_chart.dart';
import '../components/work_chart.dart';

class CompletedWorkChartSection extends StatelessWidget {
  const CompletedWorkChartSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: CustomColors.workOrange, borderRadius: kBorderRadius16),
      margin: KPadding.symmetric(16, 0),
      padding: KPadding.only(top: 10, bottom: 10, right: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                'Time - 06:00 to 07:00 IST',
                style: KText.r12w5,
              ).mOnly(
                right: 5,
                left: 10,
              ),
              Icon(
                Entypo.chevron_down,
                size: 16.h,
              ),
              const Spacer(),
              Text(
                'Line Graph',
                style: KText.r12w5,
              ),
              Icon(
                Entypo.chevron_down,
                size: 16.h,
              ).mOnly(left: 5, top: 2),
            ],
          ).mOnly(bottom: 10),
          SizedBox(
            width: Get.width * 0.55,
            child: Wrap(
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      padding: KPadding.all(5),
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: CustomColors.lineBlue),
                    ),
                    Text(
                      'Electrician',
                      style: KText.r13Grey,
                    ).mSymmetric(5),
                    Text(
                      '98  ',
                      style: KText.r13w4,
                    ),
                  ],
                ).mOnly(right: 50),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      padding: KPadding.all(5),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: CustomColors.lineBlue.withOpacity(0.7)),
                    ),
                    Text(
                      'HVAC',
                      style: KText.r13Grey,
                    ).mSymmetric(5),
                    Text(
                      '39',
                      style: KText.r13w4,
                    ),
                  ],
                ).mOnly(right: 10),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      padding: KPadding.all(5),
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: CustomColors.grey),
                    ),
                    Text(
                      'Electric fitting',
                      style: KText.r13Grey,
                    ).mSymmetric(5),
                    Text(
                      '26',
                      style: KText.r13w4,
                    ),
                  ],
                )
              ],
            ).mOnly(bottom: 10),
          ).mOnly(left: 10, bottom: 10),
          const WorkChart(),
        ],
      ),
    );
  }
}
