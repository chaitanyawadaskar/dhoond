import 'package:dhoond/screens/partners_screens/partner_dashboard_screen/inner_screens/partner_booking_screen/section/booking_float.dart';
import 'package:dhoond/utilities/constant/constant.dart';
import 'package:dhoond/utilities/core/kpadding.dart';
import 'package:dhoond/utilities/core/ksizedbox.dart';
import 'package:flutter/material.dart';
import '../../../../users_screens/user_dashboard_screen/inner_screens/user_bookings_screen/section/booking_tab_bar.dart';
import 'components/partner_booking_app_bar.dart';
import 'section/booking_done.dart';
import 'section/booking_in_progress.dart';

class PartnerBookingScreen extends StatefulWidget {
  const PartnerBookingScreen({super.key});

  @override
  State<PartnerBookingScreen> createState() => _PartnerBookingScreenState();
}

class _PartnerBookingScreenState extends State<PartnerBookingScreen> {
  var bookingType = BookingType.inProgress;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: KPadding.horizontal20,
          child: const Column(
            children: [
              SizedBoxHeight(
                height: 20,
              ),
              PartnerBookingAppBar(),
              SizedBoxHeight(
                height: 40,
              ),
            ],
          ),
        ),
        BookingsTabBar(
          bookingType: bookingType,
          onTap: (type) {
            setState(() {
              bookingType = type;
            });
          },
        ),
        const SizedBoxHeight(
          height:5,
        ),
        Visibility(
            visible: bookingType == BookingType.inProgress,
            child: const BookingInProgress()),
        Visibility(
            visible: bookingType == BookingType.done,
            child: const BookingDone()),
        Visibility(
            visible: bookingType == BookingType.float,
            child: const BookingFloat()),
        const SizedBoxHeight(),
      ],
    );
  }
}
