import 'package:dhoond/utilities/core/kpadding.dart';
import 'package:dhoond/utilities/core/ksizedbox.dart';
import 'package:dhoond/utilities/custom_colors/custom_colors.dart';
import 'package:dhoond/utilities/theme/ktext_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InventoryAppBar extends StatelessWidget implements PreferredSizeWidget {
  const InventoryAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: KPadding.only(left: 15, right: 15, top: 15),
      child: Row(
        children: [
          const Spacer(),
          Text(
            'Inventory',
            style: KText.r32ComfortaaW7,
          ),
          const SizedBoxWidth(
            width: 50,
          ),
          Icon(
            Icons.notifications_none_sharp,
            color: CustomColors.black,
            size: 30.w,
          ),
          const SizedBoxWidth(
            width: 20,
          ),
          Icon(
            Icons.menu_rounded,
            color: CustomColors.black,
            size: 30.w,
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(60.h);
}
