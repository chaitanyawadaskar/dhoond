import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../utilities/assets_paths/assets_paths.dart';
import '../../../../../../utilities/core/ksizedbox.dart';
import '../../../../../../utilities/theme/ktext_theme.dart';

class WalletSearchItem extends StatelessWidget {
  const WalletSearchItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 30.w,
          width: 30.w,
          decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(
                  ImagePath.profileAvatar,
                ),
                fit: BoxFit.contain,
              )),
        ),
        const SizedBoxWidth(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Ridhwan Nordin',
              style: KText.r12Bold,
            ),
            Text(
              'June 6, 2023 at 3:36 PMD',
              style: KText.r12Grey,
            ),
          ],
        ),
        Spacer(),
        Text(
          '+₹1,800',
          style: KText.r16Green,
        )
      ],
    );
  }
}
