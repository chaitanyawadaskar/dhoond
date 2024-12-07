import 'package:dhoond/screens/common_screens/add_amount_screen/add_amount_screen.dart';
import 'package:dhoond/screens/users_screens/user_dashboard_screen/inner_screens/user_wallet_screen/innner_screen/user_investement_screen/user_investement_screen.dart';
import 'package:dhoond/screens/users_screens/user_dashboard_screen/inner_screens/user_wallet_screen/innner_screen/user_payment_screen/user_payment_history_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:get/get.dart';

import '../../../../../../components/shadow_container.dart';
import '../../../../../../utilities/assets_paths/assets_paths.dart';
import '../../../../../../utilities/core/kpadding.dart';
import '../../../../../../utilities/core/kradius.dart';
import '../../../../../../utilities/custom_colors/custom_colors.dart';
import '../../../../../../utilities/gap/gap.dart';
import '../../../../../../utilities/theme/ktext_theme.dart';
import '../../../../../common_screens/all_bank_list_screen/all_bank_list_screen.dart';
 
class WalletBalance extends StatelessWidget {
  const WalletBalance({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ShadowContainer(
      padding: KPadding.all(30),
      borderRadius: kBorderRadius10,
      backgroundColor: CustomColors.faintGrey,
      child: Column(
        children: [
          Text(
            'Wallet Balance',
            style: KText.r12Grey,
          ),
          Gap.height(),
          Text(
            '₹25,000.00',
            style: KText.r36w8,
          ),
          Gap.height(25),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                onTap: () {
                  Get.to(() => const AddAmountScreen());
                },
                child: Column(
                  children: [
                    Image.asset(
                      IconPath.addMoney,
                      height: 15.h,
                    ),
                    Gap.height(8),
                    Text(
                      'Add Money',
                      style: KText.r12Sora,
                    )
                  ],
                ),
              ),
              Container(
                height: 40.h,
                width: 1,
                color: CustomColors.dividerGrey,
              ),
              InkWell(
                onTap: () {
                  Get.to(() => const UserInvestementScreen());
                },
                child: Column(
                  children: [
                    Image.asset(
                      IconPath.byCash,
                      height: 15.h,
                    ),
                    Gap.height(8),
                    Text(
                      'My Investment',
                      style: KText.r12Sora,
                    )
                  ],
                ),
              ),
              Container(
                height: 40.h,
                width: 1,
                color: CustomColors.dividerGrey,
              ),
              InkWell(
                onTap: () {
                  Get.to(() => const UserPaymentHistoryScreen());
                },
                child: Column(
                  children: [
                    Icon(
                      MaterialCommunityIcons.history,
                      size: 20.h,
                    ),
                    Gap.height(8),
                    Text(
                      'History',
                      style: KText.r12Sora,
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
