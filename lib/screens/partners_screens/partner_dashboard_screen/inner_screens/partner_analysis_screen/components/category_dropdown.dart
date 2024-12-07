import 'package:dhoond/components/shadow_container.dart';
import 'package:dhoond/data/extensions/extensions.dart';
import 'package:dhoond/utilities/core/kpadding.dart';
import 'package:dhoond/utilities/core/kradius.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import '../../../../../../utilities/custom_colors/custom_colors.dart';
import '../../../../../../utilities/gap/gap.dart';
import '../../../../../../utilities/theme/ktext_theme.dart';

class CategoryDropdown extends StatefulWidget {
  const CategoryDropdown({
    super.key,
  });

  @override
  State<CategoryDropdown> createState() => _CategoryDropdownState();
}

class _CategoryDropdownState extends State<CategoryDropdown> {
  var selectedVal = 'All';
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<int>(
      iconSize: 35.h,
      constraints: BoxConstraints(minWidth: 100.w, maxHeight: 120.h),
      shape: RoundedRectangleBorder(
          borderRadius: kBorderRadius10,
          side: const BorderSide(color: CustomColors.grey2)),
      itemBuilder: (context) => [
        PopupMenuItem(
          value: 0,
          onTap: () {
            selectedVal = 'All';
            setState(() {});
          },
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Text(
                "All",
                style: KText.r14,
              ),
            ],
          ),
        ),
        PopupMenuItem(
          value: 1,
          onTap: () {
            selectedVal = 'Electrician';
            setState(() {});
          },
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Text(
                "Electrician",
                style: KText.r14,
              ),
            ],
          ),
        ),
        // popupmenu item 2
        PopupMenuItem(
          value: 2,
          onTap: () {
            selectedVal = 'Carpenter';
            setState(() {});
          },
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Text(
                'Carpenter',
                style: KText.r14,
              ),
            ],
          ),
        ),
        PopupMenuItem(
            value: 3,
            onTap: () {
              selectedVal = 'Plumber';
              setState(() {});
            },
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  "Plumber",
                  style: KText.r14,
                ),
              ],
            )),
      ],
      offset: const Offset(0, 45),
      color: CustomColors.white,
      elevation: 0,
      child: ShadowContainer(
          disableShadow: true,
          border: kBorderAll,
          borderRadius: kBorderRadius10,
          padding: KPadding.all10,
          child: Row(
            children: [
              Gap.width(2),
              Text(
                selectedVal,
                style: KText.r12w5,
              ),
              Gap.width(10),
              Icon(
                Entypo.chevron_down,
                size: 16.h,
              ),
            ],
          )),
    );
  }
}
