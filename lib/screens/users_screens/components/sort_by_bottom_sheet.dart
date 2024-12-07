import 'package:dhoond/utilities/core/kpadding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utilities/core/ksizedbox.dart';
import '../../../utilities/custom_colors/custom_colors.dart';
import '../../../utilities/theme/ktext_theme.dart';

class SortByBottomSheet extends StatelessWidget {
  const SortByBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ListTile(
          visualDensity: VisualDensity.compact,
          dense: true,
          selected: false,
          selectedTileColor: CustomColors.grey2,
          leading: Text(
            'Experience',
            style: KText.r12w5,
          ),
        ),
        ListTile(
          visualDensity: VisualDensity.compact,
          dense: true,
          selected: true,
          selectedTileColor: CustomColors.grey2,
          leading: Text(
            'Customer ratings',
            style: KText.r12w5,
          ),
        ),
        ListTile(
          visualDensity: VisualDensity.compact,
          dense: true,
          selected: false,
          selectedTileColor: CustomColors.grey2,
          leading: SizedBox(
            width: 280.w,
            child: Row(
              children: [
                Text(
                  'Rates offerings low to high',
                  style: KText.r12w5,
                ),
                SizedBoxWidth(
                  width: 20,
                ),
                Icon(
                  Icons.arrow_upward,
                  size: 20.h,
                  color: CustomColors.black,
                ),
              ],
            ),
          ),
        ),
        ListTile(
          visualDensity: VisualDensity.compact,
          dense: true,
          selected: false,
          selectedTileColor: CustomColors.grey2,
          leading: SizedBox(
            width: 280.w,
            child: Row(
              children: [
                Text(
                  'Rates offerings high to low',
                  style: KText.r12w5,
                ),
                SizedBoxWidth(
                  width: 20,
                ),
                Icon(
                  Icons.arrow_downward,
                  size: 20.h,
                  color: CustomColors.black,
                ),
              ],
            ),
          ),
        ),
        ListTile(
          visualDensity: VisualDensity.compact,
          dense: true,
          selected: false,
          selectedTileColor: CustomColors.grey2,
          leading: Text(
            'By distance',
            style: KText.r12w5,
          ),
        ),
        ListTile(
          visualDensity: VisualDensity.compact,
          dense: true,
          selected: false,
          selectedTileColor: CustomColors.grey2,
          leading: Text(
            'Dhoond Assured',
            style: KText.r12w5,
          ),
        ),
        ListTile(
          visualDensity: VisualDensity.compact,
          dense: true,
          selected: false,
          selectedTileColor: CustomColors.grey2,
          leading: Text(
            'Prime partners',
            style: KText.r12w5,
          ),
        ),
      ],
    );
  }
}
