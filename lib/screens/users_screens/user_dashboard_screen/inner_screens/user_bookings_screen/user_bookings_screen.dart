import 'package:dhoond/screens/users_screens/sos_screen/sos_screen.dart';
import 'package:dhoond/screens/users_screens/user_dashboard_screen/inner_screens/user_bookings_screen/components/bookings_app_bar.dart';
import 'package:dhoond/screens/users_screens/user_dashboard_screen/inner_screens/user_bookings_screen/section/done_section.dart';
import 'package:dhoond/utilities/constant/constant.dart';
import 'package:dhoond/utilities/core/kpadding.dart';
import 'package:dhoond/utilities/core/ksizedbox.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../../utilities/assets_paths/assets_paths.dart';
import 'section/booking_tab_bar.dart';
import 'section/float_section.dart';
import 'section/in_progress_section.dart';

class UserBookingScreen extends StatefulWidget {
  const UserBookingScreen({super.key});
  

  @override
  State<UserBookingScreen> createState() => _UserBookingScreenState();
}

class _UserBookingScreenState extends State<UserBookingScreen> {
  var bookingType = BookingType.inProgress;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Get.height,
      width: Get.width,
      child: Stack(
        children: [
          Column(
            children: [
              Padding(
                padding: KPadding.horizontal20,
                child: const Column(
                  children: [
                    SizedBoxHeight(
                      height: 20,
                    ),
                    BookingAppBar(),
                    SizedBoxHeight(
                      height: 26,
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
                height: 5,
              ),
              Visibility(
                  visible: bookingType == BookingType.inProgress,
                  child: const InProgressSection()),
              Visibility(
                  visible: bookingType == BookingType.done,
                  child: const DoneSection()),
              Visibility(
                  visible: bookingType == BookingType.float,
                  child: const FloatSection()),
              const SizedBoxHeight(),
            ],
          ),
          Positioned(
            bottom: 20,
            right: 20,
            child: InkWell(
              onTap: () {
                Get.to(
                  () => const SosScreen(),
                  transition: Transition.native,
                );
              },
              child: Image.asset(
                ImagePath.sos,
                height: 65.w,
                width: 65.w,
              ),
            ),
          )
        ],
      ),
    );
  }
}
