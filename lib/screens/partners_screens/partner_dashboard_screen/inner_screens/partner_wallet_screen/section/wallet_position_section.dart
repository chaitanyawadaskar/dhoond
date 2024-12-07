import 'package:dhoond/components/shadow_container.dart';
import 'package:dhoond/screens/common_screens/add_amount_screen/add_amount_screen.dart';
import 'package:dhoond/utilities/assets_paths/assets_paths.dart';
import 'package:dhoond/utilities/core/kpadding.dart';
import 'package:dhoond/utilities/core/kradius.dart';
import 'package:dhoond/utilities/gap/gap.dart';
import 'package:dhoond/utilities/theme/ktext_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../../../utilities/custom_colors/custom_colors.dart';

class WalletPositionSection extends StatelessWidget {
  const WalletPositionSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        bottom: 0,
        left: 15,
        right: 15,
        child: ShadowContainer(
            padding: KPadding.all25,
            borderRadius: kBorderRadius8,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Get.to(() => const AddAmountScreen(isFromPartner: true,));

                  },
                  child: Column(
                    children: [
                      Image.asset(
                        IconPath.addMoney,
                        height: 25.h,
                      ),
                      Gap.height(),
                      Text(
                        'Add Money',
                        style: KText.r12,
                      )
                    ],
                  ),
                ),
                Container(
                  height: 40.h,
                  width: 1,
                  color: CustomColors.faintGrey,
                ),
                Column(
                  children: [
                    Image.asset(
                      IconPath.byCash,
                      height: 25.h,
                    ),
                    Gap.height(),
                    Text(
                      'By Cash',
                      style: KText.r12,
                    )
                  ],
                ),
                Container(
                  height: 40.h,
                  width: 1,
                  color: CustomColors.faintGrey,
                ),
                Column(
                  children: [
                    Image.asset(
                      IconPath.byOnline,
                      height: 25.h,
                    ),
                    Gap.height(),
                    Text(
                      'By Online',
                      style: KText.r12,
                    )
                  ],
                ),
                Container(
                  height: 40.h,
                  width: 1,
                  color: CustomColors.faintGrey,
                ),
                Column(
                  children: [
                    Image.asset(
                      IconPath.withdraw,
                      height: 25.h,
                    ),
                    Gap.height(),
                    Text(
                      'Withdraw',
                      style: KText.r12,
                    )
                  ],
                ),
              ],
            )));
  }
}
