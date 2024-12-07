import 'package:dhoond/components/shadow_container.dart';
import 'package:dhoond/utilities/core/kpadding.dart';
import 'package:dhoond/utilities/core/kradius.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import '../../../../../../utilities/custom_colors/custom_colors.dart';
import '../../../../../../utilities/gap/gap.dart';
import '../../../../../../utilities/theme/ktext_theme.dart';

class SortDropdown extends StatefulWidget {
  const SortDropdown({
    super.key,
  });

  @override
  State<SortDropdown> createState() => SortDropdownState();
}

class SortDropdownState extends State<SortDropdown> {
  var selectedVal = 'Sort By';
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<int>(
      iconSize: 35.h,
      constraints: BoxConstraints(minWidth: 100.w, maxHeight: 150.h),
      shape: RoundedRectangleBorder(
          borderRadius: kBorderRadius10,
          side: const BorderSide(color: CustomColors.grey2)),
      itemBuilder: (context) => [
        PopupMenuItem(
          value: 1,
          onTap: () {
            selectedVal = 'Low to High';
            setState(() {});
          },
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Text(
                "Low to High",
                style: KText.r14,
              ),
            ],
          ),
        ),
        // popupmenu item 2
        PopupMenuItem(
          value: 2,
          onTap: () {
            selectedVal = 'High to Low';
            setState(() {});
          },
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Text(
                'High to Low',
                style: KText.r14,
              ),
            ],
          ),
        ),
      ],
      offset: const Offset(0, 43),
      color: CustomColors.white,
      elevation: 0,
      child: ShadowContainer(
          padding: KPadding.all8,
          borderRadius: kBorderRadius8,
          child: Row(
            children: [
              Text(
                selectedVal,
                style: KText.r12ComfortaaW7,
              ),
              Gap.width(5),
              Icon(
                Entypo.chevron_down,
                size: 16.h,
              ),
            ],
          )),
    );
  }
}
