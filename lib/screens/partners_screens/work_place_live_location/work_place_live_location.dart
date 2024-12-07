import 'dart:async';

import 'package:customize_button/customize_button.dart';
import 'package:dhoond/screens/partners_screens/partner_arival_otp_verification_screen/partner_arival_otp_verification_screen.dart';
import 'package:dhoond/utilities/core/kradius.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:slide_to_act/slide_to_act.dart';
import '../../../../utilities/assets_paths/assets_paths.dart';
import '../../../../utilities/core/kpadding.dart';
import '../../../../utilities/custom_colors/custom_colors.dart';
import '../../../../utilities/gap/gap.dart';
import '../../../../utilities/theme/ktext_theme.dart';
import '../../../components/map_view.dart';
import '../../../components/shadow_container.dart';
import '../../../data/functions/common_function.dart';

class WorkPlaceLiveLocation extends StatefulWidget {
  const WorkPlaceLiveLocation({
    super.key,
  });

  @override
  State<WorkPlaceLiveLocation> createState() => _WorkPlaceLiveLocationState();
}

class _WorkPlaceLiveLocationState extends State<WorkPlaceLiveLocation> {
  static const CameraPosition kGooglePlex = CameraPosition(
    target: LatLng(21.1280447, 79.0079838),
    zoom: 14.4746,
  );
  final Completer<GoogleMapController> controller =
      Completer<GoogleMapController>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          fit: StackFit.expand,
          children: [
            MapView(
              kGooglePlex: kGooglePlex,
              controller: controller,
              height: Get.height * 0.55,
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: ShadowContainer(
                borderRadius: kBorderRadiusTLR15,
                child: Column(
                  children: [
                    Gap.height(30),
                    Padding(
                      padding: KPadding.horizontal16,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Prathamesh Dolaskar',
                                  style: KText.r20Bold,
                                ),
                                Gap.height(10),
                                Text(
                                  'Mahajanwadi hingna road, behind mahakali automobile plot No.75, Nagpur.',
                                  style: KText.r16Black,
                                )
                              ],
                            ),
                          ),
                          Container(
                            height: 40.w,
                            width: 40.w,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    image: AssetImage(
                                      ImagePath.carpenter,
                                    ),
                                    fit: BoxFit.cover)),
                          ),
                        ],
                      ),
                    ),
                    Gap.height(20),
                    Padding(
                      padding: KPadding.horizontal20,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            height: 45.h,
                            child: CustomizedButton(
                              width: Get.width * 0.4,
                              onTap: () {},
                              fontStyle: KText.r15w5,
                              borderRadius: 5,
                              backgroundColor: CustomColors.white,
                              elevation: 0,
                              borderColor: CustomColors.black,
                              enableBorder: true,
                              text: 'Call',
                            ),
                          ),
                          SizedBox(
                            height: 45.h,
                            child: CustomizedButton(
                              onTap: () {
                                Functions.launchGoogleMaps(21.1166, 79.0562);
                              },
                              fontStyle: KText.r14White,
                              borderRadius: 5,
                              backgroundColor: CustomColors.black,
                              widget: Padding(
                                padding: KPadding.symmetric(65, 0),
                                child: Row(
                                  children: [
                                    Text(
                                      'Start',
                                      style: KText.r15White,
                                    ),
                                    Gap.width(5),
                                    SvgPicture.asset(
                                      SvgPath.direction,
                                      height: 15,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Gap.height(24),
                    Divider(
                      color: CustomColors.skyBlue.withOpacity(0.5),
                    ),
                    Gap.height(10),
                    Padding(
                      padding: KPadding.horizontal16,
                      child: SlideAction(
                        onSubmit: () {
                          // Get.bottomSheet(const OTPFeildBottomSheet());
                          Get.to(
                              () => const PartnerArivalOTPVerificationScreen());
                          return null;
                        },
                        borderRadius: 50,
                        sliderButtonIcon: const Icon(
                          Icons.chevron_right,
                          size: 38,
                          color: CustomColors.buttonGreen2,
                        ),
                        text: 'Reached Location',
                        textStyle: KText.r15ComfortaaWhite,
                        reversed: false,
                        elevation: 0,
                        height: 54,
                        sliderButtonIconPadding: 3,
                        sliderButtonYOffset: BorderSide.strokeAlignCenter,
                        sliderRotate: true,
                        outerColor: CustomColors.buttonGreen2,
                        innerColor: CustomColors.white,
                      ),
                    ),
                    Gap.height(24),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
