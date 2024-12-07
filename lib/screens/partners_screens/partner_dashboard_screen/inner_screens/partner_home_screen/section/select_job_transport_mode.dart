import 'package:dhoond/utilities/core/kradius.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../components/animated_dot.dart';
import '../../../../../../components/shadow_container.dart';
import '../../../../../../utilities/assets_paths/assets_paths.dart';
import '../../../../../../utilities/core/kpadding.dart';
import '../../../../../../utilities/custom_colors/custom_colors.dart';
import '../../../../../../utilities/gap/gap.dart';
import '../../../../../../utilities/theme/ktext_theme.dart';
import '../components/job_selection_dropdown.dart';

class SelectJobTransportMode extends StatefulWidget {
  const SelectJobTransportMode({
    super.key,
  });

  @override
  State<SelectJobTransportMode> createState() => _SelectJobTransportModeState();
}

class _SelectJobTransportModeState extends State<SelectJobTransportMode>
    with SingleTickerProviderStateMixin {
  int currentPage = 0;
  bool isUp = false;
  double height = 148;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      height: height,
      duration: const Duration(seconds: 1),
      child: ShadowContainer(
        borderRadius: kBorderRadiusTLR15,
        padding: KPadding.only(left: 20, right: 20, bottom: 20, top: 10),
        child: Column(
          children: [
            InkWell(
                onTap: () {
                  setState(() {
                    isUp = !isUp;
                    height = height == 148 ? 76 : 148;
                  });
                },
                child: Icon(isUp
                    ? Icons.keyboard_arrow_down
                    : Icons.keyboard_arrow_up)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Switch Your Job',
                      style: KText.r12Bold,
                    ),
                    if (height > 100) ...[
                      Gap.height(),
                      const JobSelectionDropdown(),
                    ]
                  ],
                ),
                Column(
                  children: [
                    Text(
                      'Mode Of Transport',
                      style: KText.r12Bold,
                    ),
                    if (height > 100) ...[
                      Gap.height(),
                      SizedBox(
                        height: 35.h,
                        width: 65.w,
                        child: PageView(
                          onPageChanged: (value) {
                            setState(() {
                              currentPage = value;
                            });
                          },
                          children: [
                            Image.asset(
                              IconPath.walk,
                              height: 30.h,
                            ),
                            Image.asset(
                              IconPath.cycle,
                              height: 30.h,
                            ),
                            Image.asset(
                              IconPath.scooter,
                              height: 30.h,
                            ),
                            Image.asset(
                              IconPath.car,
                              height: 30.h,
                            ),
                          ],
                        ),
                      ),
                      Gap.height(),
                      Container(
                        decoration: BoxDecoration(
                            color: CustomColors.grey.withOpacity(0.85),
                            borderRadius: kBorderRadius10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(
                            4,
                            (index) => Padding(
                              padding: KPadding.none,
                              child: AnimatedDot(
                                isActive: currentPage == index,
                                width: 25.w,
                              ),
                            ),
                          ),
                        ),
                      )
                    ]
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
