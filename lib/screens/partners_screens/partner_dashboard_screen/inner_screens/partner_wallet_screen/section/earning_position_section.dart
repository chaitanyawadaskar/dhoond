import 'package:dhoond/components/shadow_container.dart';
import 'package:dhoond/data/extensions/extensions.dart';
import 'package:dhoond/screens/partners_screens/partner_dashboard_screen/inner_screens/partner_wallet_screen/payment_history_screen/partner_payment_history_screen.dart';
import 'package:dhoond/utilities/assets_paths/assets_paths.dart';
import 'package:dhoond/utilities/core/kpadding.dart';
import 'package:dhoond/utilities/core/kradius.dart';
import 'package:dhoond/utilities/custom_image/custom_image.dart';
import 'package:dhoond/utilities/gap/gap.dart';
import 'package:dhoond/utilities/theme/ktext_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:get/get.dart';

import '../../../../../../utilities/core/kboxshadow.dart';
import '../../../../../../utilities/custom_colors/custom_colors.dart';

class EarningsPositionSection extends StatelessWidget {
  const EarningsPositionSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 5,
      left: 15,
      right: 15,
      child: ShadowContainer(
          padding: KPadding.symmetric(15, 35),
          backgroundColor: CustomColors.faintRevBlue,
          boxShadow: KBoxShadow.buttonShadow,
          borderRadius: kBorderRadius10,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                Octicons.history,
                size: 15.h,
              ),
              InkWell(
                onTap: () {
                  Get.to(() => const PartnerPaymentHistoryScreen());
                },
                child: Text(
                  ' Payment History',
                  style: KText.r14w6,
                ),
              ),
              Icon(
                Icons.chevron_right,
                size: 25.h,
              ).pOnly(top: 2),
              const Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Row(
                    children: [
                      Text(
                        'Total Revenue ',
                        style: KText.r18w5,
                      ),
                      Icon(
                        MaterialCommunityIcons.calendar_month_outline,
                        size: 25.w,
                      )
                    ],
                  ),
                  Text(
                    '₹5,40,000',
                    style: KText.r36w8,
                  ),
                ],
              )
            ],
          )),
    );
  }
}
