import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../utilities/core/kpadding.dart';
import '../../../../utilities/core/kradius.dart';
import '../../../../utilities/core/ksizedbox.dart';
import '../../../../utilities/custom_colors/custom_colors.dart';
import '../../../../utilities/theme/ktext_theme.dart';
import '../../user_location_confirmation_screen/user_location_confirmation_screen.dart';

class RecentlyWorkShiftPreffProfCall extends StatelessWidget {
  const RecentlyWorkShiftPreffProfCall({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  'Recently worked at - ',
                  style: KText.r12ComfortaaW7,
                ),
                SizedBox(
                  width: 100.w,
                  child: Text(
                    'AMEC mobility Pvt Ltd.',
                    style: KText.r12,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  'Shifts - ',
                  style: KText.r12ComfortaaW7,
                ),
                SizedBox(
                  width: 100.w,
                  child: Text(
                    'Available for Day.',
                    style: KText.r12,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const SizedBoxWidth(
                  width: 5,
                ),
                Icon(
                  CupertinoIcons.moon,
                  size: 16.h,
                )
              ],
            ),
            Row(
              children: [
                Text(
                  'Preferred this profile - ',
                  style: KText.r12ComfortaaW7,
                ),
                SizedBox(
                  width: 100.w,
                  child: Text(
                    '144+ customers',
                    style: KText.r12,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          ],
        ),
        // Icon(
        //   Icons.keyboard_arrow_down_rounded,
        //   size: 20.w,
        // ),
        const Spacer(),
        Column(
          children: [
            Row(
              children: [
                Icon(
                  Icons.trending_up,
                  size: 10.h,
                ),
                Text(
                  '0.2 Kms away',
                  style: KText.r10,
                )
              ],
            ),
            InkWell(
              onTap: () {
                Get.to(
                  () => const UserLocationConfirmationScreen(),
                  transition: Transition.native,
                );
              },
              child: Container(
                padding: KPadding.only(left: 10),
                decoration: BoxDecoration(
                    color: CustomColors.black, borderRadius: kBorderRadius20),
                child: Row(
                  children: [
                    Text(
                      'Call Now',
                      style: KText.r10ComfortaaWhite,
                    ),
                    Container(
                      child: Icon(
                        CupertinoIcons.phone_circle,
                        color: CustomColors.white,
                        size: 25.w,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
