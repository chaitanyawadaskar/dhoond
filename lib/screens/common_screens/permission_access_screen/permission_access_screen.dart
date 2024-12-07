import 'package:customize_button/customize_button.dart';
import 'package:dhoond/data/functions/common_function.dart';
import 'package:dhoond/screens/common_screens/location_confirmation_screen/location_confirmation_screen.dart';
import 'package:dhoond/utilities/core/kpadding.dart';
import 'package:dhoond/utilities/gap/gap.dart';
import 'package:dhoond/utilities/theme/ktext_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utilities/custom_colors/custom_colors.dart';
import '../../users_screens/user_dashboard_screen/user_dashboard_screen.dart';
import '../dhoondh_loading_screen/dhoondh_loading_screen.dart';

class PermissionAccessScreen extends StatefulWidget {
  const PermissionAccessScreen({super.key, this.isForCamera = true});
  final bool isForCamera;
  @override
  State<PermissionAccessScreen> createState() => _PermissionAccessScreenState();
}

class _PermissionAccessScreenState extends State<PermissionAccessScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: KPadding.horizontal20,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              widget.isForCamera
                  ? 'Allow Camera access?'
                  : 'Allow location access?',
              style: KText.r28w5,
            ),
            Gap.height(),
            Text(
              widget.isForCamera
                  ? 'We need your Camera access to easily upload\n your picture.'
                  : 'We need your location access to easily find Dhoond’s professionals around you.',
              style: KText.r14Grey,
              textAlign: TextAlign.center,
            ),
            Gap.height(30),
            CustomizedButton(
              onTap: () async {
                if (widget.isForCamera) {
                  Functions.requestCameraPermission().then((value) {
                    Get.back();
                  });
                } else {
                  Functions.requestLocationPermission().then((value) {
                    Get.to(() => const LocationConfirmationScreen());
                  });
                }
              },
              text: 'Ask for permission',
              fontStyle: KText.r15w5White,
              backgroundColor: CustomColors.black,
            ),
            TextButton(
              onPressed: () {
                if (widget.isForCamera) {
                  Get.back();
                } else {
                  Get.to(
                    () => const DhoondhLoadingScreen(),
                  );
                }
              },
              child: Text(
                'Skip this step',
                style: KText.r14UnderlineW5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
