import 'dart:async';

import 'package:customize_button/customize_button.dart';
import 'package:dhoond/components/arrow_left_appbar.dart';
import 'package:dhoond/components/shadow_container.dart';
import 'package:dhoond/screens/users_screens/user_add_address_screen/user_add_address_screen.dart';
import 'package:dhoond/screens/users_screens/user_dashboard_screen/inner_screens/user_home_screen/components/search_text_feild.dart';
import 'package:dhoond/utilities/core/kboxshadow.dart';
import 'package:dhoond/utilities/core/kpadding.dart';
import 'package:dhoond/utilities/core/kradius.dart';
import 'package:dhoond/utilities/gap/gap.dart';
import 'package:dhoond/utilities/theme/ktext_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../components/map_view.dart';
import '../../../utilities/custom_colors/custom_colors.dart';

class UserConfirmAddressScreen extends StatelessWidget {
  const UserConfirmAddressScreen({super.key, this.isPartner});
  final bool? isPartner;
  @override
  Widget build(BuildContext context) {
    final Completer<GoogleMapController> _controller =
        Completer<GoogleMapController>();
    const CameraPosition _kGooglePlex = CameraPosition(
      target: LatLng(21.1280447, 79.0079838),
      zoom: 14.4746,
    );
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          Gap.height(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ArrowLeftAppbar(
                padding: KPadding.only(left: 15),
              ),
              Text(
                'Confirm location',
                style: KText.r20w5,
              ),
              Container(
                width: 50.w,
              )
            ],
          ),
          Gap.height(),
          Expanded(
            child: Stack(
              children: [
                MapView(
                    height: Get.height * 0.65,
                    kGooglePlex: _kGooglePlex,
                    controller: _controller),
                Positioned(
                  top: 10,
                  left: 15,
                  right: 15,
                  child: SizedBox(
                    height: 55.h,
                    child: SearchTextFeild(
                      hintText: 'Search for area, street name...',
                      hintStyle: KText.r12,
                      showMike: false,
                      borderRadius: kBorderRadius8,
                    ),
                  ),
                ),
                Positioned(
                  top: Get.height * 0.65,
                  left: 0,
                  right: 0,
                  child: ShadowContainer(
                      boxShadow: KBoxShadow.cardShadow,
                      padding: KPadding.all15,
                      child: Column(
                        children: [
                          Text(
                            'Delivering your service to'.toUpperCase(),
                            style: KText.r12Grey,
                          ),
                          Gap.height(),
                          Row(
                            children: [
                              Icon(
                                Ionicons.location_sharp,
                                size: 25,
                              ),
                              Gap.width(),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Nagpur',
                                    style: KText.r18w5,
                                  ),
                                  Text(
                                    'India',
                                    style: KText.r14,
                                  ),
                                ],
                              ),
                              Spacer(),
                              InkWell(
                                onTap: () {
                                  Get.back();
                                },
                                child: Text(
                                  'CHANGE',
                                  style: KText.r14,
                                ),
                              ),
                            ],
                          ),
                          Gap.height(),
                          CustomizedButton(
                            onTap: () {
                              Get.to(() => UserAddAddressScreen(isPartner:isPartner??false ,));
                            },
                            text: 'Add More Address Details',
                            fontStyle: KText.r20w5White,
                            backgroundColor: CustomColors.black,
                          ),
                          Gap.height(25),
                        ],
                      )),
                )
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
