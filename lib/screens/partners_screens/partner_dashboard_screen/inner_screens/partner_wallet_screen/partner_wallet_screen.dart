import 'package:dhoond/components/shadow_container.dart';
import 'package:dhoond/screens/partners_screens/partner_dashboard_screen/inner_screens/partner_wallet_screen/section/lender_header.dart';
import 'package:dhoond/utilities/core/kpadding.dart';
import 'package:dhoond/utilities/core/kradius.dart';
import 'package:dhoond/utilities/gap/gap.dart';
import 'package:dhoond/utilities/theme/ktext_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:get/get.dart';
import '../../../../../utilities/constant/constant.dart';
import '../../../../../utilities/custom_colors/custom_colors.dart';
import 'section/earning_position_section.dart';
import 'section/earnings_header.dart';
import 'section/earnings_section.dart';
import 'section/wallet_header.dart';
import 'section/wallet_position_section.dart';
import 'section/wallet_section.dart';

class PartnerWalletScreen extends StatefulWidget {
  const PartnerWalletScreen({super.key});

  @override
  State<PartnerWalletScreen> createState() => _PartnerWalletScreenState();
}

class _PartnerWalletScreenState extends State<PartnerWalletScreen> {
  WalletType type = WalletType.wallet;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: Get.height * 0.36,
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: type == WalletType.earnings
                      ? Get.height * 0.24
                      : Get.height * 0.29,
                  color: CustomColors.rewardBlue,
                  padding: KPadding.only(top: 25),
                  child: Column(
                    children: [
                      ShadowContainer(
                          borderRadius: kBorderRadius6,
                          backgroundColor: CustomColors.faintRewardBlue,
                          padding: KPadding.all5,
                          disableShadow: true,
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ShadowContainer(
                                  onTap: () {
                                    setState(() {
                                      type = WalletType.wallet;
                                    });
                                  },
                                  backgroundColor: type == WalletType.wallet
                                      ? CustomColors.rewardBlue
                                      : CustomColors.faintRewardBlue,
                                  padding: KPadding.symmetric(25, 6),
                                  borderRadius: kBorderRadius6,
                                  disableShadow: true,
                                  child: Text(
                                    'Wallet',
                                    style: KText.r11White,
                                  )),
                              ShadowContainer(
                                  onTap: () {
                                    setState(() {
                                      type = WalletType.earnings;
                                    });
                                  },
                                  backgroundColor: type == WalletType.earnings
                                      ? CustomColors.rewardBlue
                                      : CustomColors.faintRewardBlue,
                                  padding: KPadding.symmetric(25, 6),
                                  borderRadius: kBorderRadius6,
                                  disableShadow: true,
                                  child: Text(
                                    'Earnings',
                                    style: KText.r11White,
                                  )),
                              ShadowContainer(
                                  onTap: () {
                                    setState(() {
                                      type = WalletType.lender;
                                    });
                                  },
                                  backgroundColor: type == WalletType.lender
                                      ? CustomColors.rewardBlue
                                      : CustomColors.faintRewardBlue,
                                  disableShadow: true,
                                  padding: KPadding.symmetric(25, 6),
                                  borderRadius: kBorderRadius6,
                                  child: Text(
                                    'Lender',
                                    style: KText.r11White,
                                  )),
                            ],
                          )),
                      Gap.height(15),
                      if (type == WalletType.wallet)
                        const WalletHeader()
                      else if (type == WalletType.earnings)
                        const EarningsHeader()
                      else
                        const LenderHeader(),
                      Gap.height(35),
                    ],
                  ),
                ),
                if (type == WalletType.wallet)
                  const WalletPositionSection()
                else if (type == WalletType.earnings)
                  const EarningsPositionSection()
              ],
            ),
          ),
          Gap.height(),
          if (type == WalletType.wallet)
            const WalletSection()
          else if (type == WalletType.earnings)
            const EarningsSection()
          else
            Column(
              children: [
                Icon(
                  Entypo.emoji_sad,
                  size: 45.h,
                  color: CustomColors.grey,
                ),
                Gap.height(),
                Text(
                  'Under Development',
                  style: KText.r20w5Grey,
                ),
                Text(
                  'This feature is not available yet,\nWe\'ll notify you once it\'s ready.',
                  style: KText.r12GreyW5,
                )
              ],
            )
        ],
      ),
    );
  }
}
