import 'package:dhoond/components/arrow_left_appbar.dart';
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
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class PaymentDetailScreen extends StatelessWidget {
  const PaymentDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const ArrowLeftAppbar(),
        body: Column(
          children: [
            Gap.height(9),
            Center(
              child: CustomImage(
                img: ImagePath.profileAvatar,
                imageType: ImageType.asset,
                shape: BoxShape.circle,
                height: 70.h,
                width: 70.w,
              ),
            ),
            Gap.height(8),
            Text(
              'From Prathamesh Dolaskar',
              style: KText.r18w7,
            ),
            Gap.height(4),
            Text(
              '+91 9881102536',
              style: KText.r12GreyW5,
            ),
            Gap.height(12),
            Text(
              '₹12,000',
              style: KText.r36w5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Ionicons.checkmark_circle,
                  color: CustomColors.bulletGreen,
                  size: 15,
                ),
                Gap.width(5),
                Text(
                  'Completed',
                  style: KText.r12GreyW5,
                ),
              ],
            ),
            Gap.height(20),
            Divider(
              thickness: 1.5,
              color: CustomColors.mobileNoGrey.withOpacity(0.5),
            ).pSymmetric(20),
            Gap.height(12),
            Text(
              '9 Sept 2024 7:05 pm',
              style: KText.r12GreyW5,
            ),
            Gap.height(30),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    ShadowContainer(
                        padding: KPadding.all(3),
                        borderRadius: kBorderRadius6,
                        border: kBorderAll,
                        child: Image.asset(
                          ImagePath.boi,
                          height: 34,
                          width: 54,
                        )),
                    Gap.width(10),
                    Text(
                      'Bank of India 0401',
                      style: KText.r16w5,
                    )
                  ],
                ),
                Gap.height(25),
                Container(
                  padding: KPadding.horizontal(5),
                  decoration: BoxDecoration(
                      color: CustomColors.yellow, borderRadius: kBorderRadius6),
                  child: Text(
                    'Carpenter',
                    style: KText.r12w5,
                  ),
                ),
                Gap.height(15),
                Text(
                  'FLOAT / BOOK AT YOUR PRICE',
                  style: KText.r14w5,
                ).pOnly(bottom: 10),
                Text(
                  'UPI transaction ID',
                  style: KText.r14w5,
                ),
                Text(
                  '424795216987',
                  style: KText.r12w4,
                ).pOnly(bottom: 10),
                Row(
                  children: [
                    Text(
                      'To: ',
                      style: KText.r14w5,
                    ),
                    Text(
                      'PRATHAMESH DIPAKRAO DOLASKAR',
                      style: KText.r14w5,
                    ),
                  ],
                ),
                Text(
                  'prathamesh52222@okaxis',
                  style: KText.r12w4,
                ).pOnly(bottom: 10),
                Row(
                  children: [
                    Text(
                      'From: ',
                      style: KText.r14w5,
                    ),
                    Text(
                      'Mr.VEDANT DEVENDRA DOLASKAR',
                      style: KText.r14w5,
                    ),
                  ],
                ),
                Text(
                  '(Central Bank of India)',
                  style: KText.r14w5,
                ).pOnly(bottom: 10),
                Text(
                  'dolaskarvedant@okicici',
                  style: KText.r12w4,
                ).pOnly(bottom: 10),
                Text(
                  'Google transaction ID',
                  style: KText.r14w5,
                ),
                Text(
                  'CICAgPCI9ceFlg',
                  style: KText.r12w4,
                ).pOnly(bottom: 10),
                Text(
                  'Deduction details',
                  style: KText.r14w5,
                ),
                Text(
                  '- ₹700',
                  style: KText.r12w4,
                ).pOnly(bottom: 10),
              ],
            ).pSymmetric(70)
          ],
        ),
      ),
    );
  }
}
