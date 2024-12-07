import 'package:dhoond/utilities/assets_paths/assets_paths.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../components/arrow_left_appbar.dart';
import '../../../../utilities/core/kpadding.dart';
import '../../../../utilities/gap/gap.dart';
import '../../../../utilities/theme/ktext_theme.dart';

class PartnerJobSearchAppBar extends StatelessWidget {
  const PartnerJobSearchAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const ArrowLeftAppbar(
          padding: KPadding.none,
        ),
        Gap.width(20),
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              'Looking for\n Carpenter',
              style: KText.r25ComfortaaW7,
            ),
            Image.asset(
              IconPath.lookingForSearch,
              height: 25.h,
            )
          ],
        ),
        const Spacer(),
      ],
    );
  }
}
