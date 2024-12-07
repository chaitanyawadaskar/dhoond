import 'package:dhoond/data/extensions/extensions.dart';
import 'package:dhoond/utilities/assets_paths/assets_paths.dart';
import 'package:dhoond/utilities/theme/ktext_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WalletHeader extends StatelessWidget {
  const WalletHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          ImagePath.wallletReward,
          height: 95.h,
          width: 95.h,
        ),
        Column(
          children: [
            Text(
              'Wallet Balance',
              style: KText.r12White,
            ),
            Text(
              '-₹7,584.00',
              style: KText.r36w8White,
            ),
          ],
        ),
        Image.asset(
          ImagePath.gold,
          width: 70.w,
          height: 70.h,
        ).mOnly(top: 40),
      ],
    );
  }
}
