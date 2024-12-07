import 'package:customize_button/customize_button.dart';
import 'package:dhoond/components/shadow_container.dart';
import 'package:dhoond/utilities/core/kpadding.dart';
import 'package:dhoond/utilities/core/ksizedbox.dart';
import 'package:dhoond/utilities/custom_colors/custom_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../utilities/core/kradius.dart';
import '../../../../utilities/theme/ktext_theme.dart';

class RateAndSubmit extends StatelessWidget {
  const RateAndSubmit({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return ShadowContainer(
      padding: KPadding.all15,
      backgroundColor: CustomColors.white,
      margin: KPadding.horizontal10,
      borderRadius: kBorderRadius8,
      child: SizedBox(
        width: Get.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Embrace the real talent,',
                  style: KText.r10Comfortaa,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      CupertinoIcons.person,
                      size: 20.h,
                    ),
                    Text(
                      'Rate this profile',
                      style: KText.r20Comfortaa,
                    )
                  ],
                ),
              ],
            ),
            const SizedBoxHeight(),
            RatingBar.builder(
              initialRating: 0,
              minRating: 1,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemCount: 5,
              itemSize: 38.w,
              unratedColor: CustomColors.grey2.withOpacity(0.4),
              itemPadding: KPadding.none,
              itemBuilder: (context, _) => const Icon(
                Icons.star,
                color: CustomColors.amber,
              ),
              onRatingUpdate: (rating) {},
            ),
            const SizedBoxHeight(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomizedButton(
                  onTap: () {
                    Get.back();
                  },
                  fontStyle: KText.r15BoldWhite,
                  pad: KPadding.symmetric(43, 5),
                  borderRadius: 8,
                  backgroundColor: CustomColors.black,
                  text: 'Save & Submit ',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
