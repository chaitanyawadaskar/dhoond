import 'package:dhoond/utilities/gap/gap.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../components/arrow_left_appbar.dart';
import '../../../../../utilities/core/kboxshadow.dart';
import '../../../../../utilities/core/kpadding.dart';
import '../../../../../utilities/theme/ktext_theme.dart';
import '../../../user_dashboard_screen/inner_screens/user_home_screen/components/search_text_feild.dart';

class BaypServiceAppBar extends StatelessWidget implements PreferredSizeWidget {
  const BaypServiceAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: KPadding.only(top: 20),
      child: Row(
        children: [
          const ArrowLeftAppbar(
            padding: KPadding.none,
            size: 70,
          ),
          Expanded(
            child: SizedBox(
              height: 45.h,
              child: SearchTextFeild(
                hintStyle: KText.r12Grey,
                showMike: false,
                boxShadow: KBoxShadow.grey,
                showRightSearchIcon: true,
                isGreyIcon: true,
                hintText: 'Search',
              ),
            ),
          ),
          Gap.width()
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(70);
}
