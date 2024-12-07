import 'package:dhoond/components/shadow_container.dart';
import 'package:dhoond/utilities/assets_paths/assets_paths.dart';
import 'package:dhoond/utilities/core/kpadding.dart';
import 'package:dhoond/utilities/core/kradius.dart';
import 'package:dhoond/utilities/core/ksizedbox.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../utilities/custom_colors/custom_colors.dart';
import '../../../../utilities/theme/ktext_theme.dart';

class PrimePartner extends StatelessWidget {
  const PrimePartner({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: KPadding.all15,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBoxHeight(
            height: 10,
          ),
          Text(
            'Prime Partner',
            style: KText.r12Bold,
          ),
          const SizedBoxHeight(
            height: 25,
          ),
          ShadowContainer(
            disableShadow: true,
            backgroundColor: CustomColors.grey2.withOpacity(0.2),
            padding: KPadding.symmetric(15, 6),
            borderRadius: kBorderRadius5,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  ImagePath.dhoond,
                  height: 14.h,
                ),
                Text(
                  ' Assured ',
                  style: KText.r12,
                ),
                Image.asset(
                  ImagePath.diamond,
                  height: 14.h,
                ),
              ],
            ),
          ),
          const SizedBoxHeight(),
          ShadowContainer(
            disableShadow: true,
            backgroundColor: CustomColors.grey2.withOpacity(0.2),
            padding: KPadding.symmetric(15, 6),
            borderRadius: kBorderRadius5,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  ImagePath.dhoond,
                  height: 14.h,
                ),
                Text(
                  ' Star ',
                  style: KText.r12,
                ),
                Image.asset(
                  ImagePath.star,
                  height: 14.h,
                ),
              ],
            ),
          ),
          const SizedBoxHeight(),
          ShadowContainer(
            disableShadow: true,
            backgroundColor: CustomColors.grey2.withOpacity(0.2),
            padding: KPadding.symmetric(15, 6),
            borderRadius: kBorderRadius5,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  ImagePath.dhoond,
                  height: 14.h,
                ),
                Text(
                  ' Customer choice ',
                  style: KText.r12,
                ),
                Image.asset(
                  ImagePath.thumsUp,
                  height: 14.h,
                ),
              ],
            ),
          ),
          const SizedBoxHeight(),
          ShadowContainer(
            disableShadow: true,
            backgroundColor: CustomColors.grey2.withOpacity(0.2),
            padding: KPadding.symmetric(15, 6),
            borderRadius: kBorderRadius5,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  ImagePath.dhoond,
                  height: 14.h,
                ),
                Text(
                  ' Top Performer ',
                  style: KText.r12,
                ),
                Image.asset(
                  ImagePath.medal,
                  height: 14.h,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
