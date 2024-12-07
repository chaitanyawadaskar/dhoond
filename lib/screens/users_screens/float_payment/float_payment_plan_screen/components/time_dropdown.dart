import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

import '../../../../../components/shadow_container.dart';
import '../../../../../utilities/custom_colors/custom_colors.dart';
import '../../../../../utilities/theme/ktext_theme.dart';

class TimeDropdown extends StatelessWidget {
  const TimeDropdown({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<int>(
        iconSize: 35.h,
        constraints: BoxConstraints(
          maxWidth: 100.w,
        ),
        shape: const RoundedRectangleBorder(
            side: BorderSide(color: CustomColors.grey2)),
        itemBuilder: (context) => [
              PopupMenuItem(
                value: 1,
                onTap: () {},
                height: 20,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      "Fixed Time",
                      style: KText.r10,
                    ),
                  ],
                ),
              ),
              PopupMenuItem(
                value: 2,
                onTap: () {},
                height: 20,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      'Adjust Per Day',
                      style: KText.r10,
                    ),
                  ],
                ),
              ),
            ],
        offset: const Offset(0, 20),
        color: CustomColors.white,
        elevation: 0,
        child: ShadowContainer(
            child: Row(
          children: [
            Text(
              'Fixed Time',
              style: KText.r10,
            ),
            Icon(
              MaterialIcons.sort,
              size: 12,
            )
          ],
        )));
  }
}
