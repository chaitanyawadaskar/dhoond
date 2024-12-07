import 'package:dhoond/data/extensions/extensions.dart';
import 'package:dhoond/utilities/core/ksizedbox.dart';
import 'package:dhoond/utilities/gap/gap.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../utilities/theme/ktext_theme.dart';
import '../inner_screens/partner_photos_videos_screen/partner_photos_videos_screen.dart';
import '../user_partner_detail_screen.dart';
import 'photos_and_videos_grid.dart';

class BioPhotosAndVideos extends StatelessWidget {
  const BioPhotosAndVideos({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Bio',
              style: KText.r14ComfortaaW7,
            ),
            Text(
              'The service provider can include a brief bio on their profile page, which can give potential customers a better idea of who they are and what they do.',
              style: KText.r14w3,
            ),
          ],
        ),
        const SizedBoxHeight(
          height: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Photos & Videos',
              style: KText.r14ComfortaaW7,
            ),
            const SizedBoxHeight(),
            const PhotosAndVideosGrid(),
          ],
        ),
        Gap.height(),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            InkWell(
              onTap: () {
                Get.to(
                  () => const PartnerPhotosVideosScreen(),
                  transition: Transition.native,
                );
              },
              child: Row(
                children: [
                  Text(
                    'See More',
                    style: KText.r12Comfortaa,
                  ),
                  Icon(
                    Icons.chevron_right,
                    size: 25.h,
                  )
                ],
              ),
            ),
          ],
        )
      ],
    ).mSymmetric(5);
  }
}
