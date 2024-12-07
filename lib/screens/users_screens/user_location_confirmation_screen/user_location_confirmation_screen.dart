import 'dart:async';

import 'package:customize_button/customize_button.dart';
import 'package:dhoond/screens/users_screens/user_location_confirmation_screen/components/cancel_service_bottom_sheet.dart';
import 'package:dhoond/screens/users_screens/user_location_confirmation_screen/components/sure_alert.dart';
import 'package:dhoond/screens/users_screens/user_waiting_screen/user_waiting_screen.dart';
import 'package:dhoond/utilities/assets_paths/assets_paths.dart';
import 'package:dhoond/utilities/core/kboxshadow.dart';
import 'package:dhoond/utilities/core/kradius.dart';
import 'package:dhoond/utilities/core/ksizedbox.dart';
import 'package:dhoond/utilities/custom_alert/custom_alert_box.dart';
import 'package:dhoond/utilities/custom_colors/custom_colors.dart';
import 'package:dhoond/utilities/gap/gap.dart';
import 'package:dhoond/utilities/theme/ktext_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../utilities/core/kpadding.dart';
import '../../../components/map_view.dart';

class UserLocationConfirmationScreen extends StatefulWidget {
  const UserLocationConfirmationScreen({super.key});

  @override
  State<UserLocationConfirmationScreen> createState() =>
      _UserLocationConfirmationScreenState();
}

class _UserLocationConfirmationScreenState
    extends State<UserLocationConfirmationScreen> {
  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();

  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(21.1280447, 79.0079838),
    zoom: 14.4746,
  );
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBoxHeight(
              height: 90,
            ),
            Text(
              'Chandan Kumar',
              style: KText.r30ComfortaaW7,
            ),
            Text(
              'Waiting for your confirmation',
              style: KText.r15Comfortaa,
            ),
            const SizedBoxHeight(
              height: 80,
            ),
            Container(
              width: 320.w,
              height: 320.w,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                boxShadow: KBoxShadow.glowGreen,
              ),
              child: ClipOval(
                  child: MapView(
                      kGooglePlex: _kGooglePlex, controller: _controller)),
            ),
            const SizedBoxHeight(
              height: 30,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'Arrival in   ',
                  style: KText.r30Comfortaa,
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      '45 min',
                      style: KText.r14,
                    ),
                    Gap.width(5),
                    SvgPicture.asset(
                      SvgPath.scooter,
                      height: 20,
                      width: 40,
                    ),
                  ],
                )
              ],
            ),
            const SizedBoxHeight(
              height: 60,
            ),
            Padding(
              padding: KPadding.horizontal16,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomizedButton(
                    width: 180.w,
                    onTap: () {
                      Get.bottomSheet(const CancelServiceBottomSheet(),
                          backgroundColor: CustomColors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: kBorderRadius8));
                    },
                    fontStyle: KText.r20w5,
                    borderRadius: 5,
                    backgroundColor: CustomColors.white,
                    elevation: 0,
                    borderColor: CustomColors.black,
                    enableBorder: true,
                    text: 'Cancel',
                  ),
                  CustomizedButton(
                    width: 180.w,
                    onTap: () {
                      Get.dialog(const SureAlert());
                    },
                    fontStyle: KText.r20w5White,
                    borderRadius: 5,
                    backgroundColor: CustomColors.black,
                    text: 'Confirm',
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
