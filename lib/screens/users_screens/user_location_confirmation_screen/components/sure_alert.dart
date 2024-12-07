import 'package:customize_button/customize_button.dart';
import 'package:dhoond/screens/users_screens/user_waiting_screen/user_waiting_screen.dart';
import 'package:dhoond/utilities/core/kradius.dart';
import 'package:dhoond/utilities/gap/gap.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../utilities/core/kpadding.dart';
import '../../../../utilities/core/ksizedbox.dart';
import '../../../../utilities/custom_colors/custom_colors.dart';
import '../../../../utilities/theme/ktext_theme.dart';

class SureAlert extends StatelessWidget {
  const SureAlert({
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
            Container(
              padding: KPadding.only(left: 20, right: 20, top: 30, bottom: 22),
              child: Text(
                'Are you sure ?',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: KText.r18Bold,
              ),
            ),
            Padding(
              padding: KPadding.horizontal15,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomizedButton(
                    width: 120.w,
                    onTap: () {
                      Get.back();
                    },
                    fontStyle: KText.r14Bold,
                    elevation: 0,
                    borderRadius: 5,
                    borderColor: CustomColors.grey2,
                    backgroundColor: CustomColors.white,
                    enableBorder: true,
                    text: 'No',
                  ),
                  Gap.width(15),
                  CustomizedButton(
                    width: 120.w,
                    onTap: () {
                      Get.back();
                      Get.to(() => const UserWaitingScreen());
                    },
                    fontStyle: KText.r14BoldWhite,
                    borderRadius: 5,
                    backgroundColor: CustomColors.black,
                    text: 'Yes',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
