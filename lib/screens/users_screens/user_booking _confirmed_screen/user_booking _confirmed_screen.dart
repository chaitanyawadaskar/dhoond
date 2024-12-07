import 'package:customize_button/customize_button.dart';
import 'package:dhoond/screens/users_screens/user_location_tracking_screen/user_location_tracking_screen.dart';
import 'package:dhoond/utilities/assets_paths/assets_paths.dart';
import 'package:dhoond/utilities/core/ksizedbox.dart';
import 'package:dhoond/utilities/custom_colors/custom_colors.dart';
import 'package:dhoond/utilities/gap/gap.dart';
import 'package:dhoond/utilities/theme/ktext_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import '../../../utilities/core/kpadding.dart';

class UserBookingConfirmedScreen extends StatefulWidget {
  const UserBookingConfirmedScreen({super.key});

  @override
  State<UserBookingConfirmedScreen> createState() =>
      _UserBookingConfirmedScreenState();
}

class _UserBookingConfirmedScreenState extends State<UserBookingConfirmedScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 10),
      vsync: this,
    );

    _animation = Tween<Offset>(
      begin: const Offset(0, 0),
      end: const Offset(4.7, 0),
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.linear,
    ));

    _controller.forward();
    // Future.delayed(const Duration(seconds: 10), () {
    //   Get.to(
    //     () => const UserLocationTrackingScreen(),
    //     transition: Transition.native,
    //   );
    // });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: Get.width,
          child: Padding(
            padding: KPadding.horizontal15,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBoxHeight(
                  height: 77,
                ),
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
                ),
                Gap.height(100),
                SizedBox(
                  height: 210.h,
                  child: OverflowBox(
                    maxHeight: 300.w,
                    maxWidth: 300.w,
                    child: Lottie.asset(
                      LottiePath.checkConfetti,
                    ),
                  ),
                ),
                const SizedBoxHeight(
                  height: 100,
                ),
                SizedBox(
                  width: 280.w,
                  height: 30.h,
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        height: 2,
                        width: 275.w,
                        color: CustomColors.black,
                      ),
                      Positioned(
                        left: 0,
                        top: -2,
                        child: Container(
                          padding: KPadding.all(4),
                          decoration: const BoxDecoration(
                              color: CustomColors.black,
                              shape: BoxShape.circle),
                        ),
                      ),
                      Positioned(
                        right: 0,
                        top: -2,
                        child: Container(
                          padding: KPadding.all(4),
                          decoration: const BoxDecoration(
                              color: CustomColors.black,
                              shape: BoxShape.circle),
                        ),
                      ),
                      Positioned(
                        top: -25,
                        child: SlideTransition(
                          position: _animation,
                          child: SvgPicture.asset(
                            SvgPath.scooter,
                            height: 29,
                            width: 43,
                          ),
                        ),
                      ),
                      const Positioned(
                        top: -25,
                        right: -9,
                        child: Icon(
                          Icons.location_on_rounded,
                          color: CustomColors.red,
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'Arrival in   ',
                      style: KText.r30Comfortaa,
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          '45 min',
                          style: KText.r14,
                        ),
                        Gap.width(5),
                        SvgPicture.asset(
                          SvgPath.scooter,
                          height: 20,
                          width: 40,
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBoxHeight(
                  height: 60,
                ),
                CustomizedButton(
                  onTap: () {
                    Get.to(
                      () => const UserLocationTrackingScreen(),
                      transition: Transition.native,
                    );
                  },
                  fontStyle: KText.r20w5White,
                  borderRadius: 5,
                  backgroundColor: CustomColors.black,
                  elevation: 0,
                  text: 'Next',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
