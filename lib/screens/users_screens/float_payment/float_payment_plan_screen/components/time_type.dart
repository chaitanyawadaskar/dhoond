import 'package:dhoond/components/shadow_container.dart';
import 'package:dhoond/data/extensions/extensions.dart';
import 'package:dhoond/utilities/core/kboxshadow.dart';
import 'package:dhoond/utilities/core/kpadding.dart';
import 'package:dhoond/utilities/core/kradius.dart';
import 'package:dhoond/utilities/custom_colors/custom_colors.dart';
import 'package:dhoond/utilities/theme/ktext_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class TimeType extends StatelessWidget {
  const TimeType({super.key});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<int>(
        iconSize: 35.h,
        constraints: BoxConstraints(
          maxWidth: 110.w,
        ),
        shape: RoundedRectangleBorder(
            side: BorderSide(color: CustomColors.grey2),
            borderRadius: kBorderRadius5),
        itemBuilder: (context) => [
              // popupmenu item 1
              PopupMenuItem(
                value: 1,
                onTap: () {},
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      "Fixed Time",
                      style: KText.r12,
                    ),
                  ],
                ),
              ),

              // popupmenu item 2
              PopupMenuItem(
                value: 2,
                onTap: () {},
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      'Adjust Per Day',
                      style: KText.r12,
                    ),
                  ],
                ),
              ),
            ],
        offset: const Offset(0, 27),
        color: CustomColors.white,
        elevation: 0,
        child: ShadowContainer(
            borderRadius: kBorderRadius5,
            boxShadow: KBoxShadow.faintGrey,
            padding: KPadding.symmetric(10, 3),
            child: OverflowBar(
              children: [
                Text(
                  'Fixed Time',
                  style: KText.r14,
                ).mOnly(right: 5),
                const Icon(
                  Entypo.chevron_down,
                  size: 15,
                )
              ],
            )));
  }
}
