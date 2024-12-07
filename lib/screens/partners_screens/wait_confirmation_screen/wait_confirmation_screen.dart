import 'package:customize_button/customize_button.dart';
import 'package:dhoond/screens/partners_screens/partner_payment_confirm_screen/partner_payment_confirm_screen.dart';
import 'package:dhoond/utilities/core/kpadding.dart';
import 'package:dhoond/utilities/custom_colors/custom_colors.dart';
import 'package:dhoond/utilities/gap/gap.dart';
import 'package:dhoond/utilities/theme/ktext_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_countdown_timer/index.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class WaitConfirmationScreen extends StatefulWidget {
  const WaitConfirmationScreen({super.key});

  @override
  State<WaitConfirmationScreen> createState() => _WaitConfirmationScreenState();
}

class _WaitConfirmationScreenState extends State<WaitConfirmationScreen>
    with SingleTickerProviderStateMixin {
  int endTime =
      DateTime.now().millisecondsSinceEpoch + 1000 * 60 * 10; // 10 minutes
  bool isEnd = false;
  late AnimationController _controller;
  late Animation<Offset> _animation;
  CountdownTimerController? controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 60 * 10), // 10 minutes
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
      body: Column(
        children: [
          Gap.height(49),
          Text(
            'Awaiting payment confirmation from Prathamesh Dolaskar ',
            style: KText.r30ComfortaaW7,
            textAlign: TextAlign.center,
          ),
          Gap.height(130),
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
                return Container();
              }

              int minutes = (time.min ?? 0); // Show minutes
              int seconds = (time.sec ?? 0); // Show remaining seconds

              String timeString =
                  "${minutes.toString().padLeft(2, '0')} : ${seconds.toString().padLeft(2, '0')}";
              double percentage = ((minutes * 60 + seconds) /
                  (10 * 60)); // Percentage of 10 minutes

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
                        'min : sec',
                        style: KText.r15ComfortaaW5,
                      ),
                    ],
                  ),
                ],
              );
            },
            controller: controller,
          ),
          const Spacer(),
          Visibility(
            visible: isEnd,
            child: Padding(
              padding: KPadding.horizontal16,
              child: CustomizedButton(
                onTap: () {
                  Get.to(
                    () => const PartnerPaymentConfirmScreen(),
                    transition: Transition.native,
                  );
                },
                pad: KPadding.symmetric(10, 0),
                backgroundColor: CustomColors.black,
                text: 'Retry',
                fontStyle: KText.r18w5White,
              ),
            ),
          ),
          Gap.height(50)
        ],
      ),
    ));
  }
}
