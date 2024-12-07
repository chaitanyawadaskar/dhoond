import 'package:dhoond/data/extensions/extensions.dart';
import 'package:dhoond/utilities/gap/gap.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../utilities/assets_paths/assets_paths.dart';
import '../../../../../../utilities/core/ksizedbox.dart';
import '../../../../../../utilities/theme/ktext_theme.dart';

class WalletSearchItem extends StatelessWidget {
  const WalletSearchItem({
    super.key,
    this.isCash = false,
  });
  final bool isCash;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 40.w,
          width: 40.w,
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
              'Prathamesh Dolaskar',
              style: KText.r12Bold,
            ),
            Text(
              'Cash Payment 12:32',
              style: KText.r12Grey,
            ),
          ],
        ),
        const Spacer(),
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            isCash
                ? Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        '₹35,000',
                        style: KText.r12,
                      ),
                      Text(
                        '-₹7,584',
                        style: KText.r16w7Red,
                      ),
                    ],
                  )
                : Text(
                    '+₹20,000',
                    style: KText.r16w7,
                  ),
            Gap.width(10),
            Icon(
              Icons.chevron_right,
              size: 20,
            )
          ],
        ),
      ],
    ).mSymmetric(0, 5);
  }
}
