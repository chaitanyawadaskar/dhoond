import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:get/get.dart';

import '../../../utilities/theme/ktext_theme.dart';

class SkillsChargesDesign extends StatelessWidget {
  const SkillsChargesDesign({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Skills -',
          style: KText.r12w5,
        ),
        SizedBox(
          width: Get.width * 0.5,
          child: Text(
            ' Woodworking, Repair & Restoration Surfacing Decor & Painting',
            style: KText.r12w4,
          ),
        ),
        const Spacer(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              children: [
                Text(
                  'Mode - 2TW',
                  style: KText.r10,
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  '246',
                  style: KText.r12,
                ),
                Icon(
                  CupertinoIcons.hand_thumbsup,
                  size: 12.w,
                )
              ],
            )
          ],
        )
      ],
    );
  }
}
