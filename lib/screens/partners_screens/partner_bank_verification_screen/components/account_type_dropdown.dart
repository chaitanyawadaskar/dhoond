import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../utilities/assets_paths/assets_paths.dart';
import '../../../../utilities/custom_colors/custom_colors.dart';
import '../../../../utilities/custom_textfeild/custom_textfeild.dart';
import '../../../../utilities/theme/ktext_theme.dart';

class AccountTypeDropdown extends StatelessWidget {
  const AccountTypeDropdown({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<int>(
      iconSize: 35.h,
      constraints: BoxConstraints(
        minWidth: Get.width,
      ),
      shape: const RoundedRectangleBorder(
          side: BorderSide(color: CustomColors.grey2)),
      itemBuilder: (context) => [
        // popupmenu item 1
        PopupMenuItem(
          value: 1,
          // row has two child icon and text.
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Text(
                "SAVINGS",
                style: KText.r14Comfortaa,
              ),
            ],
          ),
        ),
        // popupmenu item 2
        PopupMenuItem(
          value: 2,
          // row has two child icon and text
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Text(
                'CURRENT',
                style: KText.r14Comfortaa,
              ),
            ],
          ),
        ),
      ],
      offset: const Offset(0, 60),
      color: CustomColors.white,
      elevation: 0,
      child: CustomTextFeild(
        controller: TextEditingController(),
        onTextChange: (val) {},
        label: 'Account Type',
        enabled: false,
        suffixIcon: Icon(
          Icons.keyboard_arrow_down,
          size: 24.h,
        ),
      ),
    );
  }
}
