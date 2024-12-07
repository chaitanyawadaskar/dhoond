import 'package:customize_button/customize_button.dart';
import 'package:dhoond/screens/users_screens/float_payment/float_booking_detail_screen/float_booking_detail_screen.dart';
import 'package:dhoond/utilities/gap/gap.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:get/get.dart';

import '../../../../../../components/shadow_container.dart';
import '../../../../../../utilities/assets_paths/assets_paths.dart';
import '../../../../../../utilities/core/kpadding.dart';
import '../../../../../../utilities/core/kradius.dart';
import '../../../../../../utilities/core/ksizedbox.dart';
import '../../../../../../utilities/custom_colors/custom_colors.dart';
import '../../../../../../utilities/theme/ktext_theme.dart';

class Card_F extends StatelessWidget {
  const Card_F({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ShadowContainer(
        borderRadius: kBorderRadius10,
        padding: KPadding.all15,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 45.w,
              width: 45.w,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage(
                        ImagePath.electricalMan,
                      ),
                      fit: BoxFit.cover)),
            ),
            const SizedBoxWidth(),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Shanti Shende',
                        style: KText.r15ComfortaaW5,
                      ),
                      Container(
                        padding: KPadding.horizontal(5),
                        decoration: BoxDecoration(
                            color: CustomColors.yellow,
                            borderRadius: kBorderRadius6),
                        child: Text(
                          'Maid',
                          style: KText.r12Bold,
                        ),
                      ),
                    ],
                  ),
                  Gap.height(10),
                  Row(
                    children: [
                      Icon(
                        Feather.calendar,
                        size: 18.w,
                      ),
                      Gap.width(),
                      Text(
                        'Work started on monday, feb 12',
                        style: KText.r12Comfortaa,
                      )
                    ],
                  ),
                  Gap.height(5),
                  Row(
                    children: [
                      Icon(
                        Feather.clock,
                        size: 18.w,
                      ),
                      Gap.width(),
                      Text(
                        'One time service - Up to 2 hours',
                        style: KText.r12Comfortaa,
                      ),
                      const Spacer(),
                      const Icon(
                        Icons.chevron_right,
                        size: 20,
                      )
                    ],
                  ),
                  Gap.height(5),
                  Row(
                    children: [
                      Icon(
                        Octicons.location,
                        size: 18.w,
                      ),
                      Gap.width(),
                      Text(
                        'Hingna road, Nagpur',
                        style: KText.r12Comfortaa,
                      )
                    ],
                  ),
                  const SizedBoxHeight(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomizedButton(
                        onTap: () {},
                        fontStyle: KText.r14Bold,
                        elevation: 0,
                        pad: KPadding.horizontal30,
                        borderRadius: 5,
                        borderColor: CustomColors.grey,
                        backgroundColor: CustomColors.white,
                        enableBorder: true,
                        text: 'Cancel',
                      ),
                      CustomizedButton(
                        onTap: () {
                          Get.to(() => const FloatBookingDetailScreen());
                        },
                        fontStyle: KText.r14BoldWhite,
                        elevation: 0,
                        pad: KPadding.horizontal20,
                        borderRadius: 5,
                        backgroundColor: CustomColors.black,
                        text: 'Float Details',
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
