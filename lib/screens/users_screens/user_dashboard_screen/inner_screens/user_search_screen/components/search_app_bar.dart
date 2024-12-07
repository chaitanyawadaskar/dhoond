import 'package:dhoond/utilities/gap/gap.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../utilities/constant/constant.dart';
import '../../../../../../utilities/theme/ktext_theme.dart';

class SearchAppBar extends StatelessWidget {
  const SearchAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              'Dhoond    ',
              style: KText.r30ComfortaaW7,
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Near me ',
                  style: KText.r18ComfortaaW5,
                ),
                const Icon(
                  Icons.location_pin,
                  size: 16,
                )
              ],
            )
          ],
        ),
        SizedBox(),
        // IconButton(
        //   onPressed: () {
        //     userDrawerKey.currentState!.openDrawer();
        //   },
        //   visualDensity: VisualDensity.compact,
        //   icon: Icon(
        //     Icons.menu_rounded,
        //     size: 30.w,
        //   ),
        // )
      ],
    );
  }
}
