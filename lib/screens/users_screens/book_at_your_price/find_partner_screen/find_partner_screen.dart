import 'dart:async';

import 'package:animate_do/animate_do.dart';
import 'package:dhoond/components/arrow_left_appbar.dart';
import 'package:dhoond/data/controller/price_controller/price_controller.dart';
import 'package:dhoond/utilities/core/kpadding.dart';
import 'package:dhoond/utilities/gap/gap.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../../../../components/map_view.dart';
import '../../../../utilities/custom_colors/custom_colors.dart';
import 'components/finding_partner_bottom_sheet.dart';
import 'components/partner_accept_bottom_sheet.dart';
import 'components/partner_fare_card.dart';

class FindPartnerScreen extends StatefulWidget {
  const FindPartnerScreen({super.key});

  @override
  State<FindPartnerScreen> createState() => _FindPartnerScreenState();
}

class _FindPartnerScreenState extends State<FindPartnerScreen>
    with SingleTickerProviderStateMixin {
  final priceController = Get.find<PriceController>();
  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();
  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(21.1280447, 79.0079838),
    zoom: 14.4746,
  );
  bool showCard = false;
  bool isAccepted = false;
  @override
  void initState() {
    super.initState();
    // Future.delayed(
    //   const Duration(seconds: 0),
    //   () {
    //     Get.bottomSheet(FindingPartnerBottomSheet(),
    //         // isDismissible: false,
    //         barrierColor: CustomColors.transparent,
    //         isScrollControlled: true,
    //         enableDrag: false);
    //   },
    // );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: Get.height,
          width: Get.width,
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              MapView(
                kGooglePlex: _kGooglePlex,
                controller: _controller,
                myLocationButtonEnabled: false,
                height: Get.height,
              ),
              if (showCard && !isAccepted)
                Positioned(
                    top: 80.h,
                    left: 0,
                    right: 0,
                    child: ListView.separated(
                        itemBuilder: (context, index) => FadeIn(
                              delay: Duration(seconds: index * 2),
                              child: PartnerFareCard(
                                onAccept: () {
                                  setState(() {
                                    isAccepted = true;
                                  });
                                  priceController.acceptPrice.value =
                                      (priceController.price.value +
                                          50 * (index + 1));
                                },
                                price: (priceController.price.value +
                                        50 * (index + 1))
                                    .toString(),
                              ),
                            ),
                        shrinkWrap: true,
                        separatorBuilder: (context, index) => Gap.height(),
                        itemCount: 2)),
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                child: ArrowLeftAppbar(),
              ),
              !isAccepted
                  ? FindingPartnerBottomSheet(
                      onRaiseFair: () {
                        setState(() {
                          showCard = true;
                        });
                      },
                    )
                  : const PartnerAcceptBottomSheet(),
            ],
          ),
        ),
      ),
    );
  }
}
