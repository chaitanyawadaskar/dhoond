import 'package:dhoond/data/extensions/extensions.dart';
import 'package:dhoond/screens/partners_screens/partner_dashboard_screen/inner_screens/partner_wallet_screen/payment_detail_screen/payment_detail_screen.dart';
import 'package:dhoond/utilities/assets_paths/assets_paths.dart';
import 'package:dhoond/utilities/core/ksizedbox.dart';
import 'package:dhoond/utilities/gap/gap.dart';
import 'package:dhoond/utilities/theme/ktext_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ItemPaymentHistoryScreen extends StatelessWidget {
  const ItemPaymentHistoryScreen({super.key, required this.isCash});
  final bool isCash;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.to(() => const PaymentDetailScreen());
      },
      child: Row(
        children: [
          Container(
            height: 40.w,
            width: 40.w,
            decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(
                    ImagePath.chandan,
                  ),
                  fit: BoxFit.contain,
                )),
          ),
          const SizedBoxWidth(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Chandan Kumar',
                style: KText.r12Bold,
              ),
              Text(
                'Today 12:32',
                style: KText.s12w6Grey,
              ),
            ],
          ),
          const Spacer(),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              isCash
                  ? Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          '₹35,000',
                          style: KText.s12w4Green,
                        ),
                        Text(
                          '-₹7,584',
                          style: KText.s12w4Red,
                        ),
                      ],
                    )
                  : Text(
                      '+₹20,000',
                      style: KText.s12w4Green,
                    ),
              Gap.width(10),
              Icon(
                Icons.chevron_right,
                size: 20,
              )
            ],
          ),
        ],
      ).mSymmetric(0, 5),
    );
  }
}
