import 'dart:async';
import 'package:customize_button/customize_button.dart';
import 'package:dhoond/data/extensions/extensions.dart';
import 'package:dhoond/screens/users_screens/user_dashboard_screen/user_dashboard_screen.dart';
import 'package:dhoond/components/map_view.dart';
import 'package:dhoond/utilities/assets_paths/assets_paths.dart';
import 'package:dhoond/utilities/core/kradius.dart';
import 'package:dhoond/utilities/core/ksizedbox.dart';
import 'package:dhoond/utilities/custom_colors/custom_colors.dart';
import 'package:dhoond/utilities/gap/gap.dart';
import 'package:dhoond/utilities/theme/ktext_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
import 'package:lottie/lottie.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart' as Marker;
import '../../../components/shadow_container.dart';
import '../../../utilities/constant/constant.dart';
import '../../../utilities/core/kpadding.dart';
import '../../common_screens/support_chat_screen/support_chat_screen.dart';
import '../components/name_image_rating_design.dart';
import '../components/skills_charges_design.dart';

class UserLocationTrackingScreen extends StatefulWidget {
  const UserLocationTrackingScreen({super.key});

  @override
  State<UserLocationTrackingScreen> createState() =>
      _UserLocationTrackingScreenState();
}

class _UserLocationTrackingScreenState
    extends State<UserLocationTrackingScreen> {
  final locationController = Location();
  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();
  LatLng? currentPosition;
  Set<Polyline> polylines = <Polyline>{};
  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(21.1280447, 79.0079838),
    zoom: 14.4746,
  );
  Future<void> fetchLocationUpdated() async {
    Location location = Location();
    bool serviceEnabled;
    PermissionStatus permissionGranted;

    serviceEnabled = await location.serviceEnabled();
    if (!serviceEnabled) {
      serviceEnabled = await location.requestService();
      if (!serviceEnabled) {
        return;
      }
    }

    permissionGranted = await location.hasPermission();
    if (permissionGranted == PermissionStatus.denied) {
      permissionGranted = await location.requestPermission();
      if (permissionGranted != PermissionStatus.granted) {
        return;
      }
    }

    locationController.onLocationChanged.listen((currentLocation) {
      if (currentLocation.latitude != null &&
          currentLocation.longitude != null) {
        if (mounted) {
          setState(() {
            currentPosition =
                LatLng(currentLocation.latitude!, currentLocation.longitude!);
          });
        }

        // initializeMap();
      }
    });
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance
        .addPostFrameCallback((timeStamp) async => fetchLocationUpdated());
  }

  // Future<void> initializeMap() async {
  //   final coordinates = await fetchPolylinePoint();
  //   print('cordinate >>>>>> $coordinates');
  //   generatePolylineFromPoint(coordinates);
  // }

  // Future<List<LatLng>> fetchPolylinePoint() async {
  //   final polylinePoints = PolylinePoints();
  //   final result = await polylinePoints.getRouteBetweenCoordinates(
  //     googleApiKey: googleMapApiKey,
  //     request: PolylineRequest(
  //       origin:
  //           PointLatLng(currentPosition!.latitude, currentPosition!.longitude),
  //       destination: const PointLatLng(21.1280447, 79.0079838),
  //       mode: TravelMode.driving,
  //     ),
  //   );

  //   if (result.points.isNotEmpty) {
  //     return result.points
  //         .map((element) => LatLng(element.latitude, element.longitude))
  //         .toList();
  //   } else {
  //     return [];
  //   }
  // }

  // Future<void> generatePolylineFromPoint(
  //     List<LatLng> polylineCordinates) async {
  //   setState(() {});
  //   polylines = {
  //     Polyline(
  //         polylineId: const PolylineId('polyline'),
  //         color: CustomColors.amber,
  //         points: polylineCordinates,
  //         width: 4)
  //   };
  // }

  @override
  void dispose() {
    super.dispose();

    _controller.future.then((controller) {
      controller.dispose();
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: Get.width,
          child: Padding(
            padding: KPadding.horizontal10,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBoxHeight(
                  height: 20,
                ),
                Row(
                  children: [
                    Image.asset(
                      ImagePath.check,
                      height: 70.w,
                      width: 70.w,
                    ).mOnly(left: 16),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Yayy...',
                          style: KText.r30ComfortaaW7,
                        ),
                        Text(
                          'BOOKING CONFIRMED',
                          style: KText.r20ComfortaaW7,
                        ),
                      ],
                    ).mOnly(left: 10),
                  ],
                ),
                const SizedBoxHeight(
                  height: 20,
                ),
                currentPosition == null
                    ? const Center(
                        child: CircularProgressIndicator(
                          color: CustomColors.black,
                        ),
                      )
                    : Stack(
                        children: [
                          Container(
                            margin: KPadding.symmetric(0, 0),
                            child: MapView(
                              kGooglePlex: _kGooglePlex,
                              controller: _controller,
                              height: Get.height * 0.49,
                              // polylines: polylines,
                              markers: {
                                // Marker.Marker(
                                //   markerId: const MarkerId('current location'),
                                //   position: currentPosition!,
                                //   infoWindow:
                                //       const InfoWindow(title: 'current location'),
                                // ),
                                const Marker.Marker(
                                  markerId: MarkerId('destination'),
                                  position: LatLng(21.1280447, 79.0079838),
                                  infoWindow: InfoWindow(title: 'destination'),
                                ),
                              },
                            ),
                          ),
                          Positioned(
                              bottom: 15,
                              left: 15,
                              child: InkWell(
                                onTap: () {
                                  Get.to(() => const SupportChatScreen(),
                                      transition: Transition.native,
                                      duration:
                                          const Duration(milliseconds: 700));
                                },
                                child: Lottie.asset(LottiePath.eraBot,
                                    height: 70.w, width: 670.w),
                              ))
                        ],
                      ),
                ShadowContainer(
                    padding: KPadding.all10,
                    borderRadius: kBorderRadius10,
                    child: Column(
                      children: [
                        const NameImageRatingDesign(
                          type: ServiceProviderType.customerCoice,
                        ),
                        const SizedBoxHeight(
                          height: 10,
                        ),
                        const SkillsChargesDesign(),
                        const SizedBoxHeight(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  padding: KPadding.all(5),
                                  decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: CustomColors.lightGreen),
                                ),
                                const SizedBoxWidth(
                                  width: 5,
                                ),
                                Text.rich(TextSpan(children: [
                                  TextSpan(
                                      text: 'ARRIVING IN', style: KText.r15),
                                  TextSpan(
                                      text: ' 20 MIN', style: KText.r15Bold)
                                ])),
                                const SizedBoxWidth(
                                  width: 5,
                                ),
                                Icon(
                                  Fontisto.bicycle,
                                  size: 20.w,
                                  color: CustomColors.black,
                                )
                              ],
                            ),
                            Text(
                              '5 1 8 6',
                              style: KText.r24Bold,
                            )
                          ],
                        ),
                        const SizedBoxHeight(
                          height: 10,
                        ),
                      ],
                    )),
                Gap.height(),
                CustomizedButton(
                  onTap: () {
                    Get.to(
                      () => const UserDashboardScreen(
                        currentIndex: 3,
                      ),
                      transition: Transition.native,
                    );
                  },
                  fontStyle: KText.r20w5White,
                  borderRadius: 5,
                  backgroundColor: CustomColors.black,
                  elevation: 0,
                  text: 'Go to my bookings',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
