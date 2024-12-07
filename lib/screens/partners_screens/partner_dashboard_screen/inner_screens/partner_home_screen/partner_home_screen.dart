import 'dart:async';

import 'package:dhoond/components/map_view.dart';
import 'package:dhoond/components/shadow_container.dart';
import 'package:dhoond/screens/common_screens/under_developement_screen.dart';
import 'package:dhoond/screens/partners_screens/components/team_edit_dialog.dart';
import 'package:dhoond/screens/partners_screens/partner_estimator_screen/partner_estimator_screen.dart';
import 'package:dhoond/screens/partners_screens/partner_work_confimation_screen/partner_work_confimation_screen.dart';
import 'package:dhoond/utilities/constant/constant.dart';
import 'package:dhoond/utilities/core/kpadding.dart';
import 'package:dhoond/utilities/core/kradius.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../../../utilities/assets_paths/assets_paths.dart';
import '../../../../../utilities/core/kboxshadow.dart';
import '../../../../../utilities/gap/gap.dart';
import '../../../../../utilities/theme/ktext_theme.dart';
import 'section/count_work_image.dart';
import 'section/partner_home_header.dart';
import 'section/partner_working_status.dart';
import 'section/select_job_transport_mode.dart';

class PartnerHomeScreen extends StatefulWidget {
  const PartnerHomeScreen({
    super.key,
  });
  @override
  State<PartnerHomeScreen> createState() => _PartnerHomeScreenState();
}

class _PartnerHomeScreenState extends State<PartnerHomeScreen> {
  var partnerStatus = PartnerWorkStatus.offDuty;
  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();
  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(21.1280447, 79.0079838),
    zoom: 14.4746,
  );
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Padding(
            padding: KPadding.horizontal16,
            child: Column(
              children: [
                Gap.height(20),
                const PartnerHomeHeader(),
                Gap.height(20),
                PartnerWorkingStatus(
                  partnerWorkStatus: partnerStatus,
                  onTap: (status) {
                    HapticFeedback.vibrate();

                    setState(() {
                      partnerStatus = status;
                    });
                    if (partnerStatus == PartnerWorkStatus.goTo) {
                      Get.to(
                        () => const PartnerWorkConfirmationScreen(),
                        transition: Transition.native,
                      );
                    } else if (partnerStatus == PartnerWorkStatus.onDuty) {
                      Get.dialog(const TeamEditDialog());
                    }
                  },
                ),
                Gap.height(20),
                Expanded(
                    child: Column(
                  children: [
                    const CountWorkImage(),
                    Gap.height(20),
                    Expanded(
                        child: Stack(
                      fit: StackFit.expand,
                      children: [
                        MapView(
                            kGooglePlex: _kGooglePlex, controller: _controller),
                        Positioned(
                            bottom: 15,
                            right: 15,
                            child: Column(
                              children: [
                                ShadowContainer(
                                    padding: KPadding.all15,
                                    onTap: () {
                                      Get.to(
                                          () => const PartnerEstimatorScreen());
                                    },
                                    boxShadow: KBoxShadow.estimatorShadow,
                                    borderRadius: kBorderRadius15,
                                    child: Row(
                                      children: [
                                        Image.asset(
                                          IconPath.note,
                                          height: 25.h,
                                        ),
                                        Gap.width(10),
                                        Text(
                                          'Estimator',
                                          style: KText.r12ComfortaaW7,
                                        )
                                      ],
                                    )),
                                Gap.height(10),
                                ShadowContainer(
                                    padding: KPadding.symmetric(15, 11),
                                    onTap: () {
                                      Get.to(() =>
                                          const UnderDevelopementScreen());
                                    },
                                    boxShadow: KBoxShadow.estimatorShadow,
                                    borderRadius: kBorderRadius15,
                                    child: Row(
                                      children: [
                                        Image.asset(
                                          IconPath.tools,
                                          height: 25.h,
                                        ),
                                        Gap.width(10),
                                        SizedBox(
                                          width: 60.w,
                                          child: Text(
                                            'Tools on Rent',
                                            style: KText.r12ComfortaaW7,
                                            textAlign: TextAlign.center,
                                          ),
                                        )
                                      ],
                                    ))
                              ],
                            )),
                      ],
                    )),
                    // Gap.height(20),
                  ],
                ))
              ],
            ),
          ),
        ),
        const SelectJobTransportMode(),
      ],
    );
  }
}
