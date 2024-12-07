import 'package:dhoond/components/arrow_left_appbar.dart';
import 'package:dhoond/components/bullet_points.dart';
import 'package:dhoond/data/extensions/extensions.dart';
import 'package:dhoond/screens/partners_screens/partner_dashboard_screen/inner_screens/partner_wallet_screen/inner_screen/reward_category_screen/components/item_reward_category_screen.dart';
import 'package:dhoond/screens/partners_screens/partner_dashboard_screen/inner_screens/partner_wallet_screen/inner_screen/reward_screen/reward_screen.dart';
import 'package:dhoond/utilities/assets_paths/assets_paths.dart';
import 'package:dhoond/utilities/constant/constant.dart';
import 'package:dhoond/utilities/core/kpadding.dart';
import 'package:dhoond/utilities/core/ksizedbox.dart';
import 'package:dhoond/utilities/custom_colors/custom_colors.dart';
import 'package:dhoond/utilities/gap/gap.dart';
import 'package:dhoond/utilities/theme/ktext_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class RewardCategoryScreen extends StatelessWidget {
  const RewardCategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Gap.height(),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const ArrowLeftAppbar(
                  padding: KPadding.none,
                ),
                const Spacer(
                  flex: 2,
                ),
                Text(
                  'Rewards',
                  style: KText.r30ComfortaaW7,
                ),
                const Spacer(
                  flex: 3,
                ),
              ],
            ).pOnly(left: 20, right: 16),
            Expanded(
              child: ListView.separated(
                  padding: KPadding.symmetric(5, 5),
                  physics: const AlwaysScrollableScrollPhysics(),
                  itemBuilder: (context, index) =>
                      const ItemCategoryRewardScreen(),
                  separatorBuilder: (context, index) => const SizedBoxHeight(
                        height: 5,
                      ),
                  itemCount: 4),
            )
          ],
        ),
      ),
    );
  }
}
