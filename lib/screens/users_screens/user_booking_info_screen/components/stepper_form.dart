import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

import '../../../../utilities/core/kpadding.dart';
import '../../../../utilities/core/kradius.dart';
import '../../../../utilities/custom_colors/custom_colors.dart';
import '../../../../utilities/gap/gap.dart';
import '../../../../utilities/theme/ktext_theme.dart';

class StepperForm extends StatelessWidget {
  const StepperForm({
    super.key,
    required this.activeStep,
  });

  final int activeStep;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: KPadding.horizontal(26),
          child: Row(
            children: [
              Container(
                height: 26,
                width: 26,
                decoration: BoxDecoration(
                    border: activeStep >= 0 ? null : kBorderAllGrey,
                    color: activeStep >= 0
                        ? CustomColors.black
                        : CustomColors.white,
                    shape: BoxShape.circle),
                child: const Center(
                  child: Icon(
                    FontAwesome5Solid.check,
                    size: 12,
                    color: CustomColors.white,
                  ),
                ),
              ),
              Container(
                height: 5,
                width: 45.w,
                margin: KPadding.horizontal10,
                decoration: BoxDecoration(
                    color: CustomColors.gradientGrey,
                    borderRadius: kBorderRadius10),
              ),
              Container(
                height: 26,
                width: 26,
                decoration: BoxDecoration(
                    border: activeStep >= 1 ? null : kBorderAllGrey,
                    color: activeStep >= 1
                        ? CustomColors.black
                        : CustomColors.white,
                    shape: BoxShape.circle),
                child: const Center(
                  child: Icon(
                    FontAwesome5Solid.check,
                    size: 12,
                    color: CustomColors.white,
                  ),
                ),
              ),
              Container(
                height: 5,
                width: 45.w,
                margin: KPadding.horizontal10,
                decoration: BoxDecoration(
                    color: CustomColors.gradientGrey,
                    borderRadius: kBorderRadius10),
              ),
              Container(
                height: 26,
                width: 26,
                decoration: BoxDecoration(
                    border: activeStep >= 2 ? null : kBorderAllGrey,
                    color: activeStep >= 2
                        ? CustomColors.black
                        : CustomColors.white,
                    shape: BoxShape.circle),
                child: const Center(
                  child: Icon(
                    FontAwesome5Solid.check,
                    size: 12,
                    color: CustomColors.white,
                  ),
                ),
              ),
              Container(
                height: 5,
                width: 45.w,
                margin: KPadding.horizontal10,
                decoration: BoxDecoration(
                    color: CustomColors.gradientGrey,
                    borderRadius: kBorderRadius10),
              ),
              Container(
                height: 26,
                width: 26,
                decoration: BoxDecoration(
                    border: activeStep >= 3 ? null : kBorderAllGrey,
                    color: activeStep >= 3
                        ? CustomColors.black
                        : CustomColors.white,
                    shape: BoxShape.circle),
                child: const Center(
                  child: Icon(
                    FontAwesome5Solid.check,
                    size: 12,
                    color: CustomColors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
        Gap.height(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              'Confirmed',
              style: KText.r13w4,
            ),
            Text(
              'On the way',
              style: KText.r13w4,
            ),
            Text(
              'In progress',
              style: KText.r13w4,
            ),
            Text(
              'Completed',
              style: KText.r13w4,
            )
          ],
        ),
      ],
    );
  }
}
