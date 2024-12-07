import 'package:dhoond/components/arrow_left_appbar.dart';
import 'package:dhoond/data/extensions/extensions.dart';
import 'package:dhoond/screens/users_screens/user_dashboard_screen/inner_screens/user_home_screen/components/search_text_feild.dart';
import 'package:dhoond/screens/users_screens/user_dashboard_screen/inner_screens/user_wallet_screen/components/item_payment_history.dart';
import 'package:dhoond/utilities/core/kpadding.dart';
import 'package:dhoond/utilities/core/kradius.dart';
import 'package:dhoond/utilities/core/ksizedbox.dart';
import 'package:dhoond/utilities/custom_colors/custom_colors.dart';
import 'package:dhoond/utilities/gap/gap.dart';
import 'package:dhoond/utilities/theme/ktext_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserPaymentHistoryScreen extends StatelessWidget {
  const UserPaymentHistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            ArrowLeftAppbar(
              padding: KPadding.none,
            ),
            Text(
              'History',
              style: KText.r30ComfortaaW7,
            ),
            Gap.width(),
          ]).pOnly(bottom: 20, top: 15),
          SizedBox(
            height: 50,
            child: SearchTextFeild(
              hintText: 'Search for transaction',
              hintStyle: KText.r12Grey,
              borderRadius: kBorderRadius10,
              enable: true,
              showMike: false,
            ).mSymmetric(16, 0),
          ).pOnly(bottom: 12),
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              'Today',
              style: KText.r16w6Grey,
            ),
          ).pOnly(top: 15, left: 16),
          ListView.separated(
              shrinkWrap: true,
              padding: KPadding.symmetric(16, 0),
              physics: const AlwaysScrollableScrollPhysics(),
              itemBuilder: (context, index) => const ItemPaymentHistoryScreen(
                    isCash: false,
                  ),
              separatorBuilder: (context, index) => const SizedBoxHeight(
                    height: 5,
                  ),
              itemCount: 4),
          Divider(
            thickness: 4,
            color: CustomColors.grey.withOpacity(0.5),
          ).pOnly(top: 20, bottom: 20),
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              'Yesterday',
              style: KText.r16w6Grey,
            ),
          ).pOnly(left: 16),
          ListView.separated(
              shrinkWrap: true,
              padding: KPadding.symmetric(16, 0),
              physics: const AlwaysScrollableScrollPhysics(),
              itemBuilder: (context, index) => const ItemPaymentHistoryScreen(
                    isCash: false,
                  ),
              separatorBuilder: (context, index) => const SizedBoxHeight(
                    height: 5,
                  ),
              itemCount: 4)
        ],
      ),
    ));
  }
}
