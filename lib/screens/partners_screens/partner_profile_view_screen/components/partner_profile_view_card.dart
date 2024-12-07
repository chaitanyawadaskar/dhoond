import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../components/shadow_container.dart';
import '../../../../utilities/assets_paths/assets_paths.dart';
import '../../../../utilities/core/kpadding.dart';
import '../../../../utilities/core/kradius.dart';
import '../../../../utilities/gap/gap.dart';
import '../../../../utilities/theme/ktext_theme.dart';

class PartnerProfileViewCard extends StatelessWidget {
  const PartnerProfileViewCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ShadowContainer(
        border: kBorderAll,
        margin: KPadding.horizontal20,
        padding: KPadding.all10,
        borderRadius: kBorderRadius5,
        child: Row(
          children: [
            Container(
              height: 43.w,
              width: 43.w,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: kBorderAll,
                  image: const DecorationImage(
                      image: AssetImage(
                        ImagePath.electricalMan,
                      ),
                      fit: BoxFit.cover)),
            ),
            Gap.width(),
            Text(
              'CHANDAN KUMAR',
              style: KText.r20w5,
            ),
            const Spacer(),
            Column(
              children: [
                Text(
                  '98+',
                  style: KText.r30w5,
                ),
                Text(
                  'VIEWS',
                  style: KText.r14Grey,
                )
              ],
            ),
            Gap.width(),
          ],
        ));
  }
}
