import 'package:dhoond/screens/common_screens/under_developement_screen.dart';
import 'package:dhoond/screens/users_screens/user_select_location_screen/user_select_location_screen.dart';
import 'package:dhoond/utilities/gap/gap.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../../../utilities/assets_paths/assets_paths.dart';
import '../../../../../../utilities/constant/constant.dart';
import '../../../../../../utilities/custom_colors/custom_colors.dart';
import '../../../../../../utilities/theme/ktext_theme.dart';
import '../../../../../common_screens/notification_screen/notification_screen.dart';

class PartnerHomeHeader extends StatelessWidget {
  const PartnerHomeHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
          onTap: () {
            Get.to(() => const UserSelectLocationScreen());
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                ImagePath.dhoond,
                height: 30.h,
                width: 115.w,
              ),
              Row(
                children: [
                  Icon(
                    Icons.location_pin,
                    size: 20.w,
                    color: CustomColors.black,
                  ),
                  Gap.width(5),
                  Text(
                    'MIDC, Nagpur',
                    style: KText.r14w5,
                  ),
                  Gap.width(5),
                  Icon(
                    Icons.keyboard_arrow_down,
                    size: 25.w,
                    color: CustomColors.black,
                  )
                ],
              ),
            ],
          ),
        ),
        Row(
          children: [
            InkWell(
                onTap: () {
                  Get.to(() => const UnderDevelopementScreen());
                },
                child: Image.asset(
                  ImagePath.inventory,
                  height: 27.h,
                  width: 27.w,
                )),
            Gap.width(8),
            InkWell(
                onTap: () {
                  Get.to(
                    () => const NotificationScreen(),
                    transition: Transition.native,
                  );
                },
                child: Icon(
                  MaterialIcons.notifications,
                  size: 30.w,
                )),
            Gap.width(5),
            InkWell(
              onTap: () {
                partnerDrawerKey.currentState!.openDrawer();
              },
              child: Icon(
                Icons.menu_rounded,
                color: CustomColors.black,
                size: 35.w,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
