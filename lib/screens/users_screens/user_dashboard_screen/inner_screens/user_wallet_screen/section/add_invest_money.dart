import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../../../components/shadow_container.dart';
import '../../../../../../utilities/assets_paths/assets_paths.dart';
import '../../../../../../utilities/core/kpadding.dart';
import '../../../../../../utilities/core/kradius.dart';
import '../../../../../../utilities/core/ksizedbox.dart';
import '../../../../../../utilities/custom_colors/custom_colors.dart';
import '../../../../../../utilities/theme/ktext_theme.dart';
import '../../../../../common_screens/add_amount_screen/add_amount_screen.dart';
import '../../../../../common_screens/invest_dhoond_screen/invest_dhoond_screen.dart';

class AddInvestMoney extends StatelessWidget {
  const AddInvestMoney({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ShadowContainer(
          onTap: () {
            Get.to(
              () => const AddAmountScreen(),
              transition: Transition.native,
            );
          },
          padding: KPadding.symmetric(20, 10),
          borderRadius: kBorderRadius10,
          child: Row(
            children: [
              Text(
                'Add money',
                style: KText.r20Bold,
              ),
              const SizedBoxWidth(
                width: 10,
              ),
              Image.asset(
                IconPath.suitcase,
                height: 20.h,
              )
            ],
          ),
        ),
        ShadowContainer(
          onTap: () {
            Get.to(
              () => const InvestDhoondScreen(),
              transition: Transition.native,
            );
          },
          padding: KPadding.symmetric(20, 10),
          borderRadius: kBorderRadius10,
          child: Row(
            children: [
              Text(
                'Invest',
                style: KText.r20Bold,
              ),
              const SizedBoxWidth(
                width: 10,
              ),
              Image.asset(
                ImagePath.dhoond,
                height: 19.h,
              )
            ],
          ),
        ),
      ],
    );
  }
}
