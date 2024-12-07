import 'package:customize_button/customize_button.dart';
import 'package:dhoond/components/arrow_left_appbar.dart';
import 'package:dhoond/components/shadow_container.dart';
import 'package:dhoond/data/extensions/extensions.dart';
import 'package:dhoond/screens/partners_screens/partner_dashboard_screen/inner_screens/partner_wallet_screen/inner_screen/reward_category_screen/reward_category_screen.dart';
import 'package:dhoond/screens/users_screens/user_main_payment_screen/user_main_payment_screen.dart';
import 'package:dhoond/utilities/assets_paths/assets_paths.dart';
import 'package:dhoond/utilities/core/kpadding.dart';
import 'package:dhoond/utilities/core/kradius.dart';
import 'package:dhoond/utilities/custom_colors/custom_colors.dart';
import 'package:dhoond/utilities/gap/gap.dart';
import 'package:dhoond/utilities/theme/ktext_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class RewardScreen extends StatelessWidget {
  const RewardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            alignment: Alignment.topCenter,
            height: 200.h,
            decoration: const BoxDecoration(
                image: DecorationImage(image: AssetImage(ImagePath.garden))),
            child: Column(
              children: [
                Row(
                  children: [
                    ArrowLeftAppbar(
                      padding: KPadding.none,
                    ),
                    const Spacer(),
                    Column(
                      children: [
                        Image.asset(
                          ImagePath.gift,
                          height: 30,
                        ).mOnly(top: 10),
                        ShadowContainer(
                            padding: KPadding.all(4),
                            borderRadius: kBorderRadius5,
                            child: InkWell(
                              onTap: () {
                                Get.to(() => RewardCategoryScreen());
                              },
                              child: Text(
                                'Rewards',
                                style: KText.r10ComfortaaW7,
                              ),
                            )).mOnly(top: 5)
                      ],
                    ),
                  ],
                ).pSymmetric(17),
                const Spacer(),
                SizedBox(
                  height: 32.h,
                  child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => Container(
                            width: 32.w,
                            decoration: BoxDecoration(
                                color: index >= 4
                                    ? CustomColors.rewardGrey
                                    : CustomColors.rewardBlue2,
                                borderRadius: kBorderRadius5),
                            child: Center(
                              child: index >= 4
                                  ? Text(
                                      (index + 1).toString(),
                                      style: KText.r15ComfortaaW7,
                                    )
                                  : Icon(
                                      Feather.check,
                                      color: CustomColors.white,
                                      size: 20,
                                    ),
                            ),
                          ),
                      separatorBuilder: (context, index) => Gap.width(),
                      itemCount: 8),
                ).mOnly(left: 25, right: 12, bottom: 14),
              ],
            ),
          ),
          Gap.height(28),
          Text(
            'Your rewards',
            style: KText.r20ComfortaaW7,
          ).pOnly(left: 14),
          Expanded(
            child: GridView.builder(
              padding: KPadding.all20,
              //physics: const NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisExtent: 165.h,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 20),
              itemBuilder: (context, index) {
                return index > 0
                    ? ShadowContainer(
                        backgroundColor: CustomColors.lightBlue2,
                        borderRadius: kBorderRadius20,
                        disableShadow: true,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              EvilIcons.lock,
                              size: 20,
                              color: CustomColors.fontGrey,
                            ),
                            Text(
                              'Reward',
                              style: KText.r15ComfortaaGrey,
                            ),
                            Text(
                              'Unlock on 100k',
                              style: KText.r15ComfortaaGrey,
                            )
                          ],
                        ))
                    : Image.asset(
                        ImagePath.reward,
                        fit: BoxFit.cover,
                      );
              },
              itemCount: 8,
            ),
          ),
        
        ],
      )),
    );
  }
}
