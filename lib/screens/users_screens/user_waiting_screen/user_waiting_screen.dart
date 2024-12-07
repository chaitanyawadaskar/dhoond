import 'package:customize_button/customize_button.dart';
import 'package:dhoond/data/extensions/extensions.dart';
import 'package:dhoond/screens/users_screens/user_booking%20_confirmed_screen/user_booking%20_confirmed_screen.dart';
import 'package:dhoond/screens/users_screens/user_dashboard_screen/user_dashboard_screen.dart';
import 'package:dhoond/screens/users_screens/user_waiting_screen/components/partner_response.dart';
import 'package:dhoond/utilities/assets_paths/assets_paths.dart';
import 'package:dhoond/utilities/core/ksizedbox.dart';
import 'package:dhoond/utilities/custom_colors/custom_colors.dart';
import 'package:dhoond/utilities/gap/gap.dart';
import 'package:dhoond/utilities/theme/ktext_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_countdown_timer/index.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:super_tooltip/super_tooltip.dart';

import '../../../utilities/core/kpadding.dart';

class UserWaitingScreen extends StatefulWidget {
  const UserWaitingScreen({super.key});

  @override
  State<UserWaitingScreen> createState() => _UserWaitingScreenState();
}

class _UserWaitingScreenState extends State<UserWaitingScreen>
    with SingleTickerProviderStateMixin {
  int endTime = DateTime.now().millisecondsSinceEpoch + 1000 * 60 * 2;
  bool isEnd = false;
  late AnimationController _controller;
  late Animation<Offset> _animation;
  CountdownTimerController? controller;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 120),
      vsync: this,
    );

    _animation = Tween<Offset>(
      begin: const Offset(0, 0),
      end: const Offset(5, 0),
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.linear,
    ));

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    controller?.dispose();
    _animation.removeListener(() {});
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: Get.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  Text(
                    'Sit back & relax...',
                    style: KText.r24w6,
                  ),
                ],
              ).mOnly(left: 16, right: 16, top: 12),
              const SizedBoxHeight(
                height: 45,
              ),
              InkWell(
                onTap: () {
                  Get.to(() => const UserBookingConfirmedScreen());
                },
                child: Text(
                  'Awaiting confirmation',
                  style: KText.r30ComfortaaW7,
                ),
              ),
              Text(
                'from Chandan Kumar',
                style: KText.r15Comfortaa,
              ),
              SizedBoxHeight(
                height: 120.h,
              ),
              CountdownTimer(
                onEnd: () {
                  if (mounted) {
                    setState(() {
                      isEnd = true;
                    });
                  }
                },
                endTime: endTime,
                widgetBuilder: (_, time) {
                  if (time == null) {
                    return Stack(
                      alignment: Alignment.center,
                      children: [
                        const SizedBox(
                          width: 200,
                          height: 200,
                          child: CircularProgressIndicator(
                            value: 0,
                            strokeWidth: 8,
                            backgroundColor: CustomColors.fontGrey,
                            valueColor: AlwaysStoppedAnimation<Color>(
                                CustomColors.fontGrey),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              '00 : 00',
                              style: KText.r36ComfortaaW7,
                            ),
                            Text(
                              'sec',
                              style: KText.r15ComfortaaW5,
                            ),
                          ],
                        ),
                      ],
                    );
                  }
                  int minutes = (time.min ?? 0);
                  int seconds = (time.sec ?? 0);

                  String timeString =
                      "${minutes.toString().padLeft(2, '0')} : ${seconds.toString().padLeft(2, '0')}";

                  int totalSecondsRemaining = (minutes * 60) + seconds;
                  double percentage = totalSecondsRemaining / 120;
                  return Stack(
                    alignment: Alignment.center,
                    children: [
                      SizedBox(
                        width: 200,
                        height: 200,
                        child: CircularProgressIndicator(
                          value: percentage,
                          strokeWidth: 8,
                          backgroundColor: CustomColors.grey,
                          valueColor: const AlwaysStoppedAnimation<Color>(
                              CustomColors.glowGreen),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            timeString,
                            style: KText.r36ComfortaaW7,
                          ),
                          Text(
                            'sec',
                            style: KText.r15ComfortaaW5,
                          ),
                        ],
                      ),
                    ],
                  );
                },
                controller: controller,
              ),
              const SizedBoxHeight(
                height: 90,
              ),
              Visibility(
                visible: !isEnd,
                child: SizedBox(
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
              ),
              Visibility(
                visible: !isEnd,
                child: Column(
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
                        InkWell(
                          onTap: () {
                            Get.dialog(const PartnerResponse());
                          },
                          child: SvgPicture.asset(
                            SvgPath.scooter,
                            height: 20,
                            width: 40,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBoxHeight(
                height: 50,
              ),
              Padding(
                padding: KPadding.horizontal16,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomizedButton(
                      width: 180.w,
                      onTap: () {
                        Get.close(3);
                      },
                      fontStyle: KText.r20w5,
                      borderRadius: 5,
                      backgroundColor: CustomColors.white,
                      elevation: 0,
                      borderColor: CustomColors.black,
                      enableBorder: true,
                      text: 'Cancel',
                    ),
                    CustomizedButton(
                      width: 180.w,
                      onTap: () {},
                      fontStyle: KText.r20w5White,
                      borderRadius: 5,
                      backgroundColor: CustomColors.black,
                      text: 'Call Back',
                    ),
                  ],
                ),
              ),
              // Visibility(
              //   // visible: !isEnd,
              //   child: Padding(
              //     padding: KPadding.horizontal30,
              //     child: CustomizedButton(
              //       onTap: () {
              //         Get.to(
              //           () => const UserBookingConfirmedScreen(),
              //           transition: Transition.native,
              //         );
              //       },
              //       fontStyle: KText.r18Bold,
              //       pad: KPadding.symmetric(0, 4),
              //       borderRadius: 5,
              //       backgroundColor: CustomColors.white,
              //       elevation: 0,
              //       borderColor: CustomColors.black,
              //       enableBorder: true,
              //       text: 'Confirm',
              //     ),
              //   ),
              // )
            ],
          ),
        ),
      ),
    );
  }
}
