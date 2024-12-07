import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapView extends StatelessWidget {
  const MapView({
    super.key,
    required CameraPosition kGooglePlex,
    required Completer<GoogleMapController> controller,
    this.height,
    this.polylines = const <Polyline>{},
    this.markers,
    this.myLocationButtonEnabled = true,
  })  : _kGooglePlex = kGooglePlex,
        _controller = controller;

  final CameraPosition _kGooglePlex;
  final Completer<GoogleMapController> _controller;
  final double? height;
  final Set<Polyline> polylines;
  final Set<Marker>? markers;
  final bool myLocationButtonEnabled;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? 180.h,
      child: GoogleMap(
        mapType: MapType.normal,
        myLocationButtonEnabled: myLocationButtonEnabled,
        compassEnabled: true,
        cameraTargetBounds: CameraTargetBounds.unbounded,
        zoomGesturesEnabled: true,
        zoomControlsEnabled: false,
        rotateGesturesEnabled: true,
        scrollGesturesEnabled: true,
        myLocationEnabled: true,
        markers: markers ??
            {
              const Marker(
                markerId: MarkerId('marker1'),
                position: LatLng(21.1280447, 79.0079838),
                infoWindow: InfoWindow(title: 'Dhoond Partner'),
              ),
            },
        polylines: polylines,
        initialCameraPosition: _kGooglePlex,
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
      ),
    );
  }
}
