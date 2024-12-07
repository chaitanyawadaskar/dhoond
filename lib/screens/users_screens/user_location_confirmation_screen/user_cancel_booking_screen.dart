import 'package:customize_button/customize_button.dart';
import 'package:dhoond/screens/users_screens/user_dashboard_screen/inner_screens/user_search_screen/user_search_screen.dart';
import 'package:dhoond/screens/users_screens/user_dashboard_screen/user_dashboard_screen.dart';
import 'package:dhoond/utilities/gap/gap.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:get/get.dart';

import '../../../utilities/core/kpadding.dart';
import '../../../utilities/custom_colors/custom_colors.dart';
import '../../../utilities/theme/ktext_theme.dart';

class UserCancelBookingScreen extends StatelessWidget {
  const UserCancelBookingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Gap.height(),
            Align(
              alignment: Alignment.topRight,
              child: IconButton(
                  onPressed: () {
                    Get.close(2);
                  },
                  icon: const Icon(
                    CupertinoIcons.multiply,
                    color: CustomColors.black,
                    size: 25,
                  )),
            ),
            Gap.height(60),
            const Icon(
              Ionicons.checkmark_circle,
              size: 50,
              color: CustomColors.alertGreen,
            ),
            Gap.height(20),
            Text(
              'Your booking has been cancelled.',
              style: KText.r20w7,
            ),
            Gap.height(12),
            SizedBox(
              width: Get.width * 0.75,
              child: Text(
                'We’re sorry to see you go. If you ever need a service again, keep us in mind!',
                style: KText.r14,
                textAlign: TextAlign.center,
              ),
            ),
            Gap.height(20),
            Padding(
              padding: KPadding.horizontal15,
              child: CustomizedButton(
                onTap: () {
                  Get.to(() => const UserDashboardScreen());
                },
                fontStyle: KText.r16BoldWhite,
                pad: KPadding.symmetric(0, 4),
                borderRadius: 5,
                backgroundColor: CustomColors.black,
                text: 'Make another booking',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
