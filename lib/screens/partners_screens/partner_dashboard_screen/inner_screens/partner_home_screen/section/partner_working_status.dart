import 'package:dhoond/data/extensions/extensions.dart';
import 'package:dhoond/utilities/constant/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../utilities/assets_paths/assets_paths.dart';
import '../../../../../../utilities/core/kboxshadow.dart';
import '../../../../../../utilities/core/kpadding.dart';
import '../../../../../../utilities/custom_colors/custom_colors.dart';
import '../../../../../../utilities/gap/gap.dart';
import '../../../../../../utilities/theme/ktext_theme.dart';

class PartnerWorkingStatus extends StatelessWidget {
  const PartnerWorkingStatus({
    super.key,
    required this.partnerWorkStatus,
    required this.onTap,
  });
  final PartnerWorkStatus partnerWorkStatus;
  final Function(PartnerWorkStatus) onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: KPadding.horizontal15,
      child: Stack(
        children: [
          const Positioned(
            top: 22,
            left: 10,
            right: 10,
            child: Divider(
              height: 1,
              color: CustomColors.black,
            ),
          ),
          Container(
            alignment: Alignment.topLeft,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    InkWell(
                      onTap: () => onTap(PartnerWorkStatus.offDuty),
                      child: Container(
                        height: 45.w,
                        width: 45.w,
                        decoration: BoxDecoration(
                          boxShadow: KBoxShadow.faintGrey,
                          color: CustomColors.white,
                          gradient:
                              partnerWorkStatus == PartnerWorkStatus.offDuty
                                  ? const LinearGradient(colors: [
                                      CustomColors.buttonGreen,
                                      CustomColors.white
                                    ])
                                  : null,
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                            child: Image.asset(
                          IconPath.switchOff,
                          height: 30.h,
                        )),
                      ),
                    ),
                    Gap.height(10),
                    Text(
                      'OFF DUTY',
                      style: KText.r14,
                    ),
                  ],
                ),
                Column(
                  children: [
                    InkWell(
                      onTap: () => onTap(PartnerWorkStatus.onDuty),
                      child: Container(
                        height: 45.w,
                        width: 45.w,
                        decoration: BoxDecoration(
                          color: CustomColors.white,
                          gradient:
                              partnerWorkStatus == PartnerWorkStatus.onDuty
                                  ? const LinearGradient(colors: [
                                      CustomColors.buttonGreen,
                                      CustomColors.white
                                    ])
                                  : null,
                          boxShadow: KBoxShadow.faintGrey,
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                            child: Image.asset(
                          IconPath.switchOn,
                          height: 30.h,
                        )),
                      ),
                    ),
                    Gap.height(10),
                    Text(
                      'ON DUTY',
                      style: KText.r14,
                    ),
                  ],
                ),
                Column(
                  children: [
                    InkWell(
                      onTap: () => onTap(PartnerWorkStatus.goTo),
                      child: Container(
                        height: 45.w,
                        width: 45.w,
                        decoration: BoxDecoration(
                          color: CustomColors.white,
                          gradient: partnerWorkStatus == PartnerWorkStatus.goTo
                              ? const LinearGradient(colors: [
                                  CustomColors.buttonGreen,
                                  CustomColors.white
                                ])
                              : null,
                          boxShadow: KBoxShadow.faintGrey,
                          shape: BoxShape.circle,
                        ),
                        alignment: Alignment.center,
                        child: Image.asset(
                          IconPath.onWork,
                          height: 25.h,
                        ),
                      ),
                    ),
                    Gap.height(10),
                    Text(
                      'GO TO',
                      style: KText.r14,
                    ),
                  ],
                ).mOnly(right: 10)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
