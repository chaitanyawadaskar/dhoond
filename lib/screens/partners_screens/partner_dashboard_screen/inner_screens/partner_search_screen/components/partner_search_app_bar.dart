import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../utilities/constant/constant.dart';
import '../../../../../../utilities/gap/gap.dart';
import '../../../../../../utilities/theme/ktext_theme.dart';

class PartnerSearchAppBar extends StatelessWidget {
  const PartnerSearchAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Spacer(),
        Text(
          'Dashboard',
          style: KText.r30ComfortaaW7,
        ),
        Gap.width(50),
        IconButton(
          onPressed: () {
            partnerDrawerKey.currentState!.openDrawer();
          },
          visualDensity: VisualDensity.compact,
          icon: Icon(
            Icons.menu_rounded,
            size: 35.w,
          ),
        ),
      ],
    );
  }
}
