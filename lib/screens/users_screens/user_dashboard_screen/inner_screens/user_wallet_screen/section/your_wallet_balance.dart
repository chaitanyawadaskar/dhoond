import 'package:customize_button/customize_button.dart';
import 'package:dhoond/data/extensions/extensions.dart';
import 'package:dhoond/screens/users_screens/user_wallet_balance_screen/user_wallet_balance_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../../../utilities/assets_paths/assets_paths.dart';
import '../../../../../../utilities/core/kpadding.dart';
import '../../../../../../utilities/core/ksizedbox.dart';
import '../../../../../../utilities/custom_colors/custom_colors.dart';
import '../../../../../../utilities/theme/ktext_theme.dart';

class YourWalletBalance extends StatelessWidget {
  const YourWalletBalance({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomizedButton(
      onTap: () {
        Get.to(
          () => const UserWalletBalanceScreen(),
          transition: Transition.native,
        );
      },
      fontStyle: KText.r14BoldWhite,
      pad: KPadding.H15V10,
      borderRadius: 5,
      backgroundColor: CustomColors.black,
      widget: Row(
        children: [
          Text(
            'YOUR WALLET\nBALANCE',
            style: KText.r15w5White,
          ),
          const Spacer(),
          Text(
            '500'.rupee,
            style: KText.r24w7White,
          ),
          const SizedBoxWidth(
            width: 5,
          ),
          Image.asset(
            IconPath.wallet,
            color: CustomColors.white,
            height: 20.h,
          ),
          const SizedBoxWidth(
            width: 5,
          ),
          Icon(
            Icons.chevron_right,
            size: 25.h,
            color: CustomColors.white,
          )
        ],
      ),
    );
  }
}
