import 'package:dhoond/utilities/theme/ktext_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../utilities/assets_paths/assets_paths.dart';

class EarningsHeader extends StatelessWidget {
  const EarningsHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          width: 50,
        ),
        Text(
          'Your Earnings',
          style: KText.r36w8White,
        ),
        Image.asset(
          ImagePath.gold,
          width: 70.w,
          height: 70.h,
        )
      ],
    );
  }
}
