import 'package:dhoond/utilities/assets_paths/assets_paths.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../components/arrow_left_appbar.dart';
import '../../../../utilities/core/kpadding.dart';
import '../../../../utilities/custom_colors/custom_colors.dart';
import '../../../../utilities/gap/gap.dart';
import '../../../../utilities/theme/ktext_theme.dart';

class TrendingJobAppBar extends StatelessWidget {
  const TrendingJobAppBar({
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
        Stack(
          children: [
            Padding(
              padding: KPadding.only(right: 15),
              child: Text(
                'Trending\nJobs',
                style: KText.r25ComfortaaW7,
              ),
            ),
            Positioned(
              right: 30,
              bottom: 10,
              child: Image.asset(
                IconPath.trending,
                height: 20.h,
                color: CustomColors.black,
              ),
            )
          ],
        ),
        const Spacer(),
      ],
    );
  }
}
