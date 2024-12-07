import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../components/arrow_left_appbar.dart';
import '../../../../utilities/core/kpadding.dart';
import '../../../../utilities/theme/ktext_theme.dart';

class NotificationAppBar extends StatelessWidget {
  const NotificationAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ArrowLeftAppbar(
          padding: KPadding.only(top: 5, left: 20),
        ),
        const Spacer(
          flex: 2,
        ),
        SizedBox(
          width: 280.w,
          child: Text(
            'Notification',
            style: KText.r30ComfortaaW7,
          ),
        ),
        const Spacer(
          flex: 1,
        ),
      ],
    );
  }
}
