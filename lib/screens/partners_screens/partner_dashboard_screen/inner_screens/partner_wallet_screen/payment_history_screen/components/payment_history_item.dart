import 'package:dhoond/screens/partners_screens/partner_dashboard_screen/inner_screens/partner_wallet_screen/payment_detail_screen/payment_detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../../../../utilities/assets_paths/assets_paths.dart';
import '../../../../../../../utilities/core/ksizedbox.dart';
import '../../../../../../../utilities/theme/ktext_theme.dart';

class PaymentHistoryItem extends StatelessWidget {
  const PaymentHistoryItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.to(() => const PaymentDetailScreen());
      },
      child: Row(
        children: [
          Container(
            height: 45.w,
            width: 45.w,
            decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(
                    ImagePath.profileAvatar,
                  ),
                  fit: BoxFit.contain,
                )),
          ),
          const SizedBoxWidth(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Ridhwan Nordin',
                style: KText.r12Bold,
              ),
              Text(
                'June 6, 2023 at 3:36 PMD',
                style: KText.r12Grey,
              ),
            ],
          ),
          Spacer(),
          Text(
            '+₹1,800',
            style: KText.r12SoraGreen,
          ),
          Icon(
            Icons.chevron_right,
            size: 20,
          )
        ],
      ),
    );
  }
}
