import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../components/shadow_container.dart';
import '../../../utilities/core/kpadding.dart';
import '../../../utilities/core/kradius.dart';
import '../../../utilities/gap/gap.dart';
import '../../../utilities/theme/ktext_theme.dart';

class CreditOptionCard extends StatelessWidget {
  const CreditOptionCard({
    super.key,
    required this.name,
    required this.img,
    this.onTap,
  });
  final String name;
  final String img;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return ShadowContainer(
        padding: KPadding.all10,
        borderRadius: kBorderRadius10,
        onTap: onTap,
        child: Row(
          children: [
            Image.network(
              img,
              height: 50.h,
            ),
            Gap.width(10),
            Text(
              name,
              style: KText.r14,
            ),
            const Spacer(),
            Icon(
              Icons.chevron_right,
              size: 25.h,
            )
          ],
        ));
  }
}
