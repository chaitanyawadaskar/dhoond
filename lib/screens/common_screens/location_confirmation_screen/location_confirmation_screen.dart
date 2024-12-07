import 'package:dhoond/data/functions/common_function.dart';
import 'package:dhoond/screens/users_screens/user_dashboard_screen/user_dashboard_screen.dart';
import 'package:dhoond/utilities/custom_colors/custom_colors.dart';
import 'package:dhoond/utilities/theme/ktext_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:get/get.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

import '../../../utilities/gap/gap.dart';

class LocationConfirmationScreen extends StatefulWidget {
  const LocationConfirmationScreen({super.key});

  @override
  State<LocationConfirmationScreen> createState() =>
      _LocationConfirmationScreenState();
}

class _LocationConfirmationScreenState
    extends State<LocationConfirmationScreen> {
  String address = '';
  @override
  void initState() {
    super.initState();
    getAddress();
  }

  getAddress() async {
    Functions.getCurrentPosition().then((value) async {
      if (value != null) {
        var placemark = await Functions.getAddressFromLatLng(
            value.latitude, value.latitude);
        var place = placemark[0];
        setState(() {
          address =
              '${place.street}, ${place.subLocality}, ${place.subAdministrativeArea}, ${place.postalCode}';
        });
        Future.delayed(const Duration(seconds: 2), () {
          Get.to(() => const UserDashboardScreen());
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            address.isEmpty
                ? Center(
                    child: LoadingAnimationWidget.waveDots(
                      size: 50,
                      color: CustomColors.black,
                    ),
                  )
                : Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Icon(
                          Entypo.location,
                          size: 25,
                          color: CustomColors.black,
                        ),
                        Gap.height(10),
                        Text(
                          address,
                          style: KText.r22,
                        )
                      ],
                    ),
                  )
          ],
        ),
      ),
    );
  }
}
