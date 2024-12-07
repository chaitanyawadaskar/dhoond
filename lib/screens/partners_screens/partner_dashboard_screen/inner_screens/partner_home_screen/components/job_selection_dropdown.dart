import 'package:customize_button/customize_button.dart';
import 'package:dhoond/utilities/core/kradius.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../utilities/core/kpadding.dart';
import '../../../../../../utilities/custom_colors/custom_colors.dart';
import '../../../../../../utilities/gap/gap.dart';
import '../../../../../../utilities/theme/ktext_theme.dart';

class JobSelectionDropdown extends StatefulWidget {
  const JobSelectionDropdown({
    super.key,
    this.offset,
  });
  final Offset? offset;
  @override
  State<JobSelectionDropdown> createState() => _JobSelectionDropdownState();
}

class _JobSelectionDropdownState extends State<JobSelectionDropdown> {
  String job = 'Select Job';
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<int>(
        iconSize: 35.h,
        constraints:
            BoxConstraints(maxWidth: 150.w, minWidth: 150.w, maxHeight: 120.h),
        shape: RoundedRectangleBorder(
            borderRadius: kBorderRadius10,
            side: BorderSide(color: CustomColors.grey2)),
        itemBuilder: (context) => [
              PopupMenuItem(
                value: 1,
                onTap: () {
                  setState(() {
                    job = 'Plumber';
                  });
                },
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      "Plumber",
                      style: KText.r14Comfortaa,
                    ),
                  ],
                ),
              ),
              PopupMenuItem(
                value: 2,
                onTap: () {
                  setState(() {
                    job = 'Driver';
                  });
                },
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      'Driver',
                      style: KText.r14Comfortaa,
                    ),
                  ],
                ),
              ),
              PopupMenuItem(
                value: 2,
                onTap: () {
                  setState(() {
                    job = 'Mason';
                  });
                },
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      'Mason',
                      style: KText.r14Comfortaa,
                    ),
                  ],
                ),
              ),
            ],
        offset: widget.offset ?? const Offset(0, -125),
        color: CustomColors.white,
        elevation: 0,
        child: IgnorePointer(
          ignoring: true,
          child: CustomizedButton(
            onTap: () {},
            borderRadius: 50.r,
            pad: KPadding.symmetric(20, 8),
            backgroundColor: CustomColors.black,
            widget: Row(
              children: [
                Text(
                  job,
                  style: KText.r14ComfortaaWhite,
                ),
                Gap.width(15),
                Icon(
                  Icons.keyboard_arrow_down_outlined,
                  color: CustomColors.white,
                  size: 25.h,
                )
              ],
            ),
          ),
        ));
  }
}
