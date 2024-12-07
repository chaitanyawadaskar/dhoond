import 'package:dhoond/utilities/gap/gap.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../utilities/constant/constant.dart';
import '../../../../../../utilities/theme/ktext_theme.dart';

class BookingAppBar extends StatelessWidget {
  const BookingAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'My Bookings',
          style: KText.r30ComfortaaW7,
        ),
        Gap.width(20),
        // IconButton(
        //   onPressed: () {
        //     userDrawerKey.currentState!.openDrawer();
        //   },
        //   visualDensity: VisualDensity.compact,
        //   icon: Icon(
        //     Icons.menu_rounded,
        //     size: 35.w,
        //   ),
        // )
      ],
    );
  }
}
