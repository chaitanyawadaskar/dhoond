import 'package:dhoond/components/arrow_left_appbar.dart';
import 'package:dhoond/components/shadow_container.dart';
import 'package:dhoond/data/extensions/extensions.dart';
import 'package:dhoond/screens/users_screens/user_dashboard_screen/inner_screens/user_home_screen/components/search_text_feild.dart';
import 'package:dhoond/utilities/assets_paths/assets_paths.dart';
import 'package:dhoond/utilities/core/kpadding.dart';
import 'package:dhoond/utilities/core/kradius.dart';
import 'package:dhoond/utilities/custom_colors/custom_colors.dart';
import 'package:dhoond/utilities/gap/gap.dart';
import 'package:dhoond/utilities/theme/ktext_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

import '../section/wallet_search_history.dart';
import 'section/payment_history_item_list.dart';

class PartnerPaymentHistoryScreen extends StatelessWidget {
  const PartnerPaymentHistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const ArrowLeftAppbar(
                    padding: KPadding.none,
                  ),
                  Text(
                    'History',
                    style: KText.r30ComfortaaW7,
                  ),
                  Gap.width()
                ],
              ).pOnly(bottom: 20, top: 15),
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ShadowContainer(
                    padding: KPadding.symmetric(12, 6),
                    borderRadius: kBorderRadius20,
                    child: Row(
                      children: [
                        Text(
                          'Status',
                          style: KText.r13,
                        ).pOnly(right: 6),
                        const Icon(
                          AntDesign.caretdown,
                          size: 10,
                          color: CustomColors.black,
                        )
                      ],
                    ),
                  ),
                  ShadowContainer(
                    padding: KPadding.symmetric(12, 6),
                    borderRadius: kBorderRadius20,
                    child: Row(
                      children: [
                        Text(
                          'Payment Type',
                          style: KText.r13,
                        ).pOnly(right: 6),
                        const Icon(
                          AntDesign.caretdown,
                          size: 10,
                          color: CustomColors.black,
                        )
                      ],
                    ),
                  ),
                  ShadowContainer(
                    padding: KPadding.symmetric(12, 6),
                    borderRadius: kBorderRadius20,
                    child: Row(
                      children: [
                        Text(
                          'Category',
                          style: KText.r13,
                        ).pOnly(right: 6),
                        const Icon(
                          AntDesign.caretdown,
                          size: 10,
                          color: CustomColors.black,
                        )
                      ],
                    ),
                  ),
                  SvgPicture.asset(
                    SvgPath.filter,
                    height: 24,
                  )
                ],
              ).pOnly(left: 16, right: 16, bottom: 20),
              ShadowContainer(
                  padding: KPadding.symmetric(16, 16),
                  backgroundColor: CustomColors.faintGrey,
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '2024',
                            style: KText.r12GreyW5,
                          ),
                          Text(
                            'September',
                            style: KText.r20w5,
                          ),
                        ],
                      ),
                      const Spacer(),
                      Text(
                        '₹',
                        style: KText.r20w5,
                      ),
                      Text(
                        '24,850',
                        style: KText.r20w5,
                      )
                    ],
                  )),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'September',
                  style: KText.r16Grey,
                ),
              ).mSymmetric(15, 15),
              const PaymentHistoryItemList(),
              Gap.height(),
              const Divider(
                color: CustomColors.dividerGrey,
                thickness: 3,
              ),
              Gap.height(),
              ShadowContainer(
                  padding: KPadding.symmetric(16, 16),
                  backgroundColor: CustomColors.faintGrey,
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '2024',
                            style: KText.r12GreyW5,
                          ),
                          Text(
                            'August',
                            style: KText.r20w5,
                          ),
                        ],
                      ),
                      const Spacer(),
                      Text(
                        '₹',
                        style: KText.r20w5,
                      ),
                      Text(
                        '24,850',
                        style: KText.r20w5,
                      )
                    ],
                  )),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  '30 August',
                  style: KText.r16Grey,
                ),
              ).mSymmetric(15, 15),
              const PaymentHistoryItemList(),
              Gap.height(),
              const Divider(
                color: CustomColors.dividerGrey,
                thickness: 3,
              ),
              Gap.height(),
            ],
          ),
        ),
      ),
    );
  }
}
