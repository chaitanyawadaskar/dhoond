import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../../../utilities/assets_paths/assets_paths.dart';
import '../../../../../../utilities/core/ksizedbox.dart';
import '../../../../../../utilities/theme/ktext_theme.dart';
import '../../../../../common_screens/add_upi_screen/add_upi_screen.dart';

class ImageName extends StatelessWidget {
  const ImageName({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 50.w,
          width: 50.w,
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
              'Hello',
              style: KText.r14w6,
            ),
            Text(
              'Prathamesh!',
              style: KText.r14w6,
            ),
          ],
        )
      ],
    );
  }
}
