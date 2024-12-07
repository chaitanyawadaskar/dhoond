import 'package:customize_button/customize_button.dart';
import 'package:dhoond/data/extensions/extensions.dart';
import 'package:dhoond/screens/users_screens/user_dashboard_screen/inner_screens/user_home_screen/user_home_screen.dart';
import 'package:dhoond/screens/users_screens/user_dashboard_screen/user_dashboard_screen.dart';
import 'package:dhoond/screens/users_screens/user_waiting_screen/user_waiting_screen.dart';
import 'package:dhoond/utilities/core/kradius.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../utilities/core/kpadding.dart';
import '../../../../utilities/core/ksizedbox.dart';
import '../../../../utilities/custom_colors/custom_colors.dart';
import '../../../../utilities/theme/ktext_theme.dart';

class PartnerResponse extends StatelessWidget {
  const PartnerResponse({
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
          borderRadius: kBorderRadius12,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: KPadding.only(left: 20, right: 20, top: 20, bottom: 22),
              child: Text(
                'Partner has declined your request',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: KText.r18Bold,
              ),
            ),
            CustomizedButton(
              onTap: () {
                Get.back();
                Get.to(() => const UserDashboardScreen());
              },
              fontStyle: KText.r14BoldWhite,
              pad: KPadding.symmetric(0, 5),
              borderRadius: 5,
              backgroundColor: CustomColors.black,
              text: 'Find another partner',
            ).mSymmetric(12),
          ],
        ),
      ),
    );
  }
}
