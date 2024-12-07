import 'package:dhoond/components/shadow_container.dart';
import 'package:dhoond/data/extensions/extensions.dart';
import 'package:dhoond/utilities/assets_paths/assets_paths.dart';
import 'package:dhoond/utilities/constant/constant.dart';
import 'package:dhoond/utilities/core/kpadding.dart';
import 'package:dhoond/utilities/core/kradius.dart';
import 'package:dhoond/utilities/custom_colors/custom_colors.dart';
import 'package:dhoond/utilities/custom_image/custom_image.dart';
import 'package:dhoond/utilities/gap/gap.dart';
import 'package:dhoond/utilities/theme/ktext_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookWithUsScreen extends StatelessWidget {
  const BookWithUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Why book with us?',
          style: KText.r18w7,
        ),
        Gap.height(10),
        ShadowContainer(
            backgroundColor: CustomColors.faintGrey,
            borderRadius: kBorderRadius5,
            disableShadow: true,
            padding: KPadding.symmetric(10, 11),
            child: Row(
              children: [
                CustomImage(
                  img: ImagePath.rupees,
                  height: 30.h,
                  width: 30.w,
                  imageType: ImageType.asset,
                ),
                SizedBox(
                  width: 75,
                  child: Text(
                    'Unbeatable price',
                    style: KText.r12w5,
                    textAlign: TextAlign.center,
                  ).mOnly(left: 8),
                ),
                Container(
                  height: 62,
                  width: 2,
                  color: CustomColors.rewardGrey,
                ).mSymmetric(10),
                CustomImage(
                  img: ImagePath.blueHeart,
                  height: 30.h,
                  width: 30.w,
                  imageType: ImageType.asset,
                ),
                SizedBox(
                  width: 50,
                  child: Text(
                    'Online for you',
                    textAlign: TextAlign.center,
                    style: KText.r12w5,
                  ).mOnly(left: 8),
                ),
                Container(
                  height: 62,
                  width: 2,
                  color: CustomColors.rewardGrey,
                ).mSymmetric(10),
                CustomImage(
                  img: ImagePath.cardNMoney,
                  height: 30.h,
                  width: 30.w,
                  imageType: ImageType.asset,
                ),
                SizedBox(
                  width: 65,
                  child: Text(
                    'Pay as per plan',
                    textAlign: TextAlign.center,
                    style: KText.r12w5,
                  ).mOnly(left: 8),
                ),
              ],
            )),
        Gap.height(12),
        Center(
          child: ShadowContainer(
              backgroundColor: CustomColors.faintGrey,
              borderRadius: kBorderRadius5,
              disableShadow: true,
              padding: KPadding.symmetric(12, 11),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CustomImage(
                    img: ImagePath.clock,
                    height: 30.h,
                    width: 30.w,
                    imageType: ImageType.asset,
                  ),
                  SizedBox(
                    width: 65,
                    child: Text(
                      'On Time service',
                      textAlign: TextAlign.center,
                      style: KText.r12w5,
                    ).mOnly(left: 8),
                  ),
                  Container(
                    height: 62,
                    width: 2,
                    color: CustomColors.rewardGrey,
                  ).mSymmetric(10),
                  CustomImage(
                    img: ImagePath.smile,
                    height: 30.h,
                    width: 30.w,
                    imageType: ImageType.asset,
                  ),
                  SizedBox(
                    width: 55,
                    child: Text(
                      'Peace of mind',
                      textAlign: TextAlign.center,
                      style: KText.r12w5,
                    ).mOnly(left: 8),
                  )
                ],
              )),
        )
      ],
    ).mSymmetric(16);
  }
}
