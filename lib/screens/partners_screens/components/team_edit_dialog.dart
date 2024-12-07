import 'package:customize_button/customize_button.dart';
import 'package:dhoond/components/shadow_container.dart';
import 'package:dhoond/screens/partners_screens/partner_my_team_screen/partner_my_team_screen.dart';
import 'package:dhoond/screens/users_screens/user_waiting_screen/user_waiting_screen.dart';
import 'package:dhoond/utilities/assets_paths/assets_paths.dart';
import 'package:dhoond/utilities/constant/constant.dart';
import 'package:dhoond/utilities/core/kradius.dart';
import 'package:dhoond/utilities/gap/gap.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:get/get.dart';

import '../../../../utilities/core/kpadding.dart';
import '../../../../utilities/core/ksizedbox.dart';
import '../../../../utilities/custom_colors/custom_colors.dart';
import '../../../../utilities/theme/ktext_theme.dart';

class TeamEditDialog extends StatelessWidget {
  const TeamEditDialog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.transparent,
      contentPadding: EdgeInsets.zero,
      content: Container(
        padding: KPadding.only(bottom: 25),
        decoration: BoxDecoration(
          color: CustomColors.white,
          borderRadius: kBorderRadius15,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Gap.height(36.h),
            Image.asset(
              ImagePath.dhoond,
              height: 37.h,
            ),
            Gap.height(27.h),
            CircularProgressIndicator(
              color: CustomColors.grey,
            ),
            Gap.height(31.h),
            InkWell(
              onTap: () => {Get.to(() => PartnerMyTeamScreen())},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Edit My Team & Listing',
                    style: KText.r15,
                  ),
                  Gap.width(5.w),
                  Icon(
                    AntDesign.right,
                    size: 20.w,
                  )
                ],
              ),
            ),
            Gap.height(),
            ShadowContainer(
                onTap: () {
                  Get.back();
                },
                padding: KPadding.symmetric(15, 10),
                borderRadius: kBorderRadius10,
                backgroundColor: CustomColors.gradientGrey2,
                disableShadow: true,
                child: Text(
                  'Save & Live',
                  style: KText.r14,
                ))
          ],
        ),
      ),
    );
  }
}
