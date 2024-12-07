import 'package:dhoond/utilities/gap/gap.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../utilities/constant/constant.dart';
import '../../../../../../utilities/theme/ktext_theme.dart';

class PartnerWalletAppBar extends StatelessWidget {
  const PartnerWalletAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Spacer(),
            Text(
              'Wallet',
              style: KText.r36ComfortaaW7,
            ),
            Gap.width(80),
            IconButton(
              onPressed: () {
                partnerDrawerKey.currentState!.openDrawer();
              },
              visualDensity: VisualDensity.compact,
              icon: Icon(
                Icons.menu_rounded,
                size: 35.w,
              ),
            )
          ],
        ),
      ],
    );
  }
}
