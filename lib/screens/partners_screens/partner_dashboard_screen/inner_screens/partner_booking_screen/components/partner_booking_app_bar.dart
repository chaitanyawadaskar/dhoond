import 'package:dhoond/utilities/assets_paths/assets_paths.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../utilities/constant/constant.dart';
import '../../../../../../utilities/theme/ktext_theme.dart';

class PartnerBookingAppBar extends StatelessWidget {
  const PartnerBookingAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Row(
        //   mainAxisAlignment: MainAxisAlignment.end,
        //   children: [
        //     IconButton(
        //       onPressed: () {},
        //       visualDensity: VisualDensity.compact,
        //       icon: Image.asset(
        //         ImagePath.inventory,
        //         height: 30.h,
        //       ),
        //     ),
        //     IconButton(
        //       onPressed: () {
        //         partnerDrawerKey.currentState!.openDrawer();
        //       },
        //       visualDensity: VisualDensity.compact,
        //       icon: Icon(
        //         Icons.menu_rounded,
        //         size: 35.w,
        //       ),
        //     ),
        //   ],
        // ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'My Bookings',
              style: KText.r30ComfortaaW7,
            ),
          ],
        ),
      ],
    );
  }
}
