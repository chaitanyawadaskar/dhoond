import 'package:dhoond/data/extensions/extensions.dart';
import 'package:dhoond/utilities/gap/gap.dart';
import 'package:dhoond/utilities/theme/ktext_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

import '../../../../../../utilities/assets_paths/assets_paths.dart';
import '../../../../../../utilities/custom_colors/custom_colors.dart';

class AnalysisAppBar extends StatelessWidget {
  const AnalysisAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Dashboard',
          style: KText.r20ComfortaaW7,
        ),
        const Spacer(),
        Column(
          children: [
            Text(
              'Today',
              style: KText.r12w4,
            ),
            Row(
              children: [
                Image.asset(
                  IconPath.broadcast,
                  height: 20,
                ),
                Gap.width(5),
                Text(
                  'Live',
                  style: KText.r14ComfortaaW7,
                )
              ],
            ).mOnly(left: 40)
          ],
        )
      ],
    ).mSymmetric(16, 10);
  }
}
