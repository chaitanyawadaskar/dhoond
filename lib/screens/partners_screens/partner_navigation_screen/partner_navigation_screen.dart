import 'dart:async';
import 'package:customize_button/customize_button.dart';
import 'package:dhoond/components/map_view.dart';
import 'package:dhoond/data/functions/common_function.dart';
import 'package:dhoond/utilities/core/kpadding.dart';
import 'package:dhoond/utilities/custom_colors/custom_colors.dart';
import 'package:dhoond/utilities/gap/gap.dart';
import 'package:dhoond/utilities/theme/ktext_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../partner_arival_otp_verification_screen/partner_arival_otp_verification_screen.dart';

class PartnerNavigationScreen extends StatefulWidget {
  const PartnerNavigationScreen({super.key});

  @override
  State<PartnerNavigationScreen> createState() =>
      _PartnerNavigationScreenState();
}

class _PartnerNavigationScreenState extends State<PartnerNavigationScreen> {
  final Completer<GoogleMapController> controller =
      Completer<GoogleMapController>();
  static const CameraPosition kGooglePlex = CameraPosition(
    target: LatLng(21.1280447, 79.0079838),
    zoom: 14.4746,
  );
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: KPadding.horizontal15,
          child: Column(
            children: [
              Gap.height(20),
              Text(
                'Go to...\nPrathamesh Dolaskar',
                style: KText.r30ComfortaaW7,
              ),
              Gap.height(10),
              Center(
                child: Text(
                  'Mahajanwadi \nhingna road, behind mahakali automobile',
                  style: KText.r14,
                  textAlign: TextAlign.center,
                ),
              ),
              Gap.height(25),
              Stack(
                children: [
                  MapView(
                    kGooglePlex: kGooglePlex,
                    controller: controller,
                    height: Get.height * 0.48,
                  ),
                  Positioned(
                      left: 20,
                      right: 20,
                      bottom: 20,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomizedButton(
                            onTap: () {
                              Get.to(
                                () =>
                                    const PartnerArivalOTPVerificationScreen(),
                                transition: Transition.native,
                              );
                            },
                            pad: KPadding.symmetric(10, 8),
                            backgroundColor: CustomColors.black,
                            widget: Row(
                              children: [
                                Gap.width(5),
                                Text(
                                  'ENTER OTP',
                                  style: KText.r12White,
                                ),
                                Gap.width(5),
                                Icon(
                                  Icons.chevron_right,
                                  size: 25.h,
                                  color: CustomColors.white,
                                )
                              ],
                            ),
                          ),
                          CustomizedButton(
                            onTap: () {},
                            pad: KPadding.symmetric(10, 8),
                            backgroundColor: CustomColors.white,
                            widget: Row(
                              children: [
                                Gap.width(5),
                                Text(
                                  'YOUR LOCATION',
                                  style: KText.r12,
                                ),
                                Gap.width(5),
                                Icon(
                                  Icons.chevron_right,
                                  size: 25.h,
                                  color: CustomColors.black,
                                )
                              ],
                            ),
                          )
                        ],
                      ))
                ],
              ),
              Gap.height(10),
              CustomizedButton(
                onTap: () {
                  Functions.launchGoogleMaps(21.1166, 79.0562);
                },
                pad: KPadding.symmetric(10, 8),
                backgroundColor: CustomColors.black,
                widget: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Gap.width(5),
                    Text(
                      'Turning On Navigation',
                      style: KText.r12White,
                    ),
                    Gap.width(15),
                    Icon(
                      Entypo.location,
                      size: 20.h,
                      color: CustomColors.white,
                    )
                  ],
                ),
              ),
              Gap.height(50),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    width: Get.width * 0.55,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          ' MY LOCATION',
                          style: KText.r20Bold,
                        ),
                        Text(
                          'prathamesh Dolaskar, Mahajanwadi hingna road, behind mahakali automobile plot No.75',
                          style: KText.r12Bold,
                        )
                      ],
                    ),
                  ),
                  Icon(
                    CupertinoIcons.location,
                    size: 55.h,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
