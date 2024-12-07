import 'package:dhoond/data/extensions/extensions.dart';
import 'package:dhoond/utilities/assets_paths/assets_paths.dart';
import 'package:dhoond/utilities/gap/gap.dart';
import 'package:dhoond/utilities/theme/ktext_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../utilities/custom_colors/custom_colors.dart';
import 'wallet_search_history.dart';

class WalletSection extends StatelessWidget {
  const WalletSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'My Earnings',
              style: KText.r18w5,
            ),
            Image.asset(
              IconPath.filter2,
              height: 20.h,
            )
          ],
        ).mSymmetric(15),
        Gap.height(10),
        Align(
          alignment: Alignment.topLeft,
          child: Text(
            'Today',
            style: KText.r16Grey,
          ),
        ).mSymmetric(15),
        Gap.height(),
        const WalletSearchHistory(),
        Gap.height(),
        const Divider(
          color: CustomColors.dividerGrey,
          thickness: 5,
        ),
        Gap.height(),
        Align(
          alignment: Alignment.topLeft,
          child: Text(
            'Yesterday',
            style: KText.r16Grey,
          ),
        ).mSymmetric(15),
        Gap.height(),
        const WalletSearchHistory(),
        Gap.height(),
      ],
    );
  }
}
