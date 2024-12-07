import 'dart:async';

import 'package:customize_button/customize_button.dart';
import 'package:dhoond/data/extensions/extensions.dart';
import 'package:dhoond/data/functions/common_function.dart';
import 'package:dhoond/screens/partners_screens/work_place_live_location/work_place_live_location.dart';
import 'package:dhoond/screens/users_screens/user_waiting_screen/user_waiting_screen.dart';
import 'package:dhoond/utilities/core/kboxshadow.dart';
import 'package:dhoond/utilities/core/ksizedbox.dart';
import 'package:dhoond/utilities/custom_colors/custom_colors.dart';
import 'package:dhoond/utilities/theme/ktext_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../utilities/core/kpadding.dart';
import '../../../components/map_view.dart';
import '../partner_navigation_screen/partner_navigation_screen.dart';

class PartnerWorkConfirmationScreen extends StatefulWidget {
  const PartnerWorkConfirmationScreen({super.key});

  @override
  State<PartnerWorkConfirmationScreen> createState() =>
      PartnerWorkConfirmationScreenState();
}

class PartnerWorkConfirmationScreenState
    extends State<PartnerWorkConfirmationScreen> {
  String remainingTime = '00 : 00';
  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();

  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(21.1280447, 79.0079838),
    zoom: 14.4746,
  );
  CountdownTimer countdownTimer = CountdownTimer(initialSeconds: 60);

  @override
  void initState() {
    super.initState();
    countdownTimer.startCountdown(onTick: (val) {
      setState(() {
        remainingTime = val.timeToString;
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    countdownTimer.cancelCountdown();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBoxHeight(
              height: 80,
            ),
            Text(
              'Prathamesh Dolaskar',
              style: KText.r30ComfortaaW7,
            ),
            Text(
              'Waiting for your confirmation',
              style: KText.r14Comfortaa,
            ),
            const SizedBoxHeight(
              height: 90,
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
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Go to',
                  style: KText.r30ComfortaaW7,
                ),
                Text(
                  'Hingna Road, MIDC Nagpur',
                  style: KText.r14,
                  textAlign: TextAlign.center,
                )
              ],
            ),
            const SizedBoxHeight(
              height: 80,
            ),
            Padding(
              padding: KPadding.horizontal20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomizedButton(
                    onTap: () {
                      Get.back();
                    },
                    width: Get.width * 0.43,
                    fontStyle: KText.r18Bold,
                    pad: KPadding.symmetric(0, 0),
                    borderRadius: 5,
                    backgroundColor: CustomColors.white,
                    elevation: 0,
                    borderColor: CustomColors.black,
                    enableBorder: true,
                    text: 'PASS ($remainingTime)',
                  ),
                  CustomizedButton(
                    onTap: () {
                      Get.to(
                        () => const WorkPlaceLiveLocation(),
                        transition: Transition.native,
                      );
                    },
                    width: Get.width * 0.43,
                    fontStyle: KText.r18BoldWhite,
                    borderRadius: 5,
                    backgroundColor: CustomColors.black,
                    text: 'Confirm',
                  ),
                ],
              ),
            ),
            // Padding(
            //   padding: KPadding.horizontal20,
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //     children: [
            //       CustomizedButton(
            //         onTap: () {
            //           Get.back();
            //         },
            //         width: Get.width * 0.35,
            //         fontStyle: KText.r18Bold,
            //         pad: KPadding.symmetric(8, 10),
            //         borderRadius: 5,
            //         backgroundColor: CustomColors.white,
            //         elevation: 0,
            //         borderColor: CustomColors.black,
            //         enableBorder: true,
            //         text: 'PASS ($remainingTime)',
            //       ),
            //       CustomizedButton(
            //         onTap: () {
            //           Get.to(
            //             () => const WorkPlaceLiveLocation(),
            //             transition: Transition.native,
            //           );
            //         },
            //         width: Get.width * 0.35,
            //         fontStyle: KText.r18BoldWhite,
            //         pad: KPadding.symmetric(10, 10),
            //         borderRadius: 5,
            //         backgroundColor: CustomColors.black,
            //         text: 'Confirm',
            //       ),
            //     ],
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
