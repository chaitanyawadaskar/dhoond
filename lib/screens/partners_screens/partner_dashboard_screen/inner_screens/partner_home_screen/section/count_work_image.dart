import 'package:dhoond/data/extensions/extensions.dart';
import 'package:dhoond/utilities/core/kboxshadow.dart';
import 'package:dhoond/utilities/custom_colors/custom_colors.dart';
import 'package:dhoond/utilities/gap/gap.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:get/get.dart';
import '../../../../../../components/animated_button.dart';
import '../../../../../../components/shadow_container.dart';
import '../../../../../../utilities/assets_paths/assets_paths.dart';
import '../../../../../../utilities/core/kpadding.dart';
import '../../../../../../utilities/core/kradius.dart';
import '../../../../../../utilities/custom_image/custom_image.dart';
import '../../../../../../utilities/theme/ktext_theme.dart';
import '../../../../partner_my_work_image_screen/partner_my_work_image_screen.dart';
import '../components/lead_top_sheet.dart';

class CountWorkImage extends StatelessWidget {
  const CountWorkImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ShadowContainer(
        padding: KPadding.symmetric(35, 10),
        borderRadius: kBorderRadius5,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                Get.showSnackbar(GetSnackBar(
                  snackPosition: SnackPosition.TOP,
                  backgroundColor: CustomColors.transparent,
                  userInputForm: Form(child: LeadTopSheet()),
                ));
              },
              child: Column(
                children: [
                  Text(
                    'Bookings Count',
                    style: KText.r12,
                  ),
                  Gap.height(10),
                  Text(
                    '00',
                    style: KText.r20Bold,
                  )
                ],
              ),
            ),
            Column(
              children: [
                Text(
                  'My Earning',
                  style: KText.r12,
                ),
                Gap.height(10),
                Text(
                  '00',
                  style: KText.r20Bold,
                )
              ],
            ),
            InkWell(
              onTap: () {
                Get.to(
                  () => const PartnerMyWorkImageScreen(),
                  transition: Transition.native,
                );
              },
              child: Column(
                children: [
                  Text(
                    'My Work',
                    style: KText.r12,
                  ),
                  Gap.height(10),
                  Icon(
                    Ionicons.image_outline,
                    size: 25.h,
                  )
                ],
              ),
            ),
          ],
        ));
  }
}
