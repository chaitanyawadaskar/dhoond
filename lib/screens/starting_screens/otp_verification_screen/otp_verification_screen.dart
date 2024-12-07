import 'dart:async';
import 'package:customize_button/customize_button.dart';
import 'package:dhoond/screens/common_screens/dhoondh_loading_screen/dhoondh_loading_screen.dart';
import 'package:dhoond/screens/partners_screens/partner_dashboard_screen/partner_dashboard_screen.dart';
import 'package:dhoond/screens/users_screens/user_register_screen/user_register_screen.dart';
import 'package:dhoond/utilities/core/kpadding.dart';
import 'package:dhoond/utilities/core/ksizedbox.dart';
import 'package:dhoond/utilities/custom_colors/custom_colors.dart';
import 'package:dhoond/utilities/theme/ktext_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import '../../../components/arrow_left_appbar.dart';
import '../../../components/otp_feild.dart';
import '../../../utilities/gap/gap.dart';
import '../../partners_screens/partner_register_screen/partner_register_screen.dart';

class OtpVerificationScreen extends StatefulWidget {
  const OtpVerificationScreen(
      {super.key,
      this.isUser = true,
      required this.number,
      this.isRegister = false});
  final bool isUser;
  final String number;
  final bool isRegister;
  @override
  State<OtpVerificationScreen> createState() => _OtpVerificationScreenState();
}

class _OtpVerificationScreenState extends State<OtpVerificationScreen> {
  Timer? countdownTimer;
  Duration myDuration = const Duration(seconds: 60);
  bool loading = false;
  final formKey = GlobalKey<FormState>();

  String strDigits(int n) => n.toString().padLeft(2, '0');

  void setCountDown() {
    const reduceSecondsBy = 1;
    if (mounted) {
      setState(() {
        final seconds = myDuration.inSeconds - reduceSecondsBy;
        if (myDuration.inSeconds <= 0) {
          countdownTimer!.cancel();
        } else {
          myDuration = Duration(seconds: seconds);
        }
      });
    }
  }

  void startTimer(String value) {
    // stopTimer();
    if (value == '00') {
      countdownTimer =
          Timer.periodic(const Duration(seconds: 1), (_) => setCountDown());
    }
  }

  void stopTimer() {
    setState(() => countdownTimer!.cancel());
  }

  void resetTimer() {
    stopTimer();
    setState(() {
      myDuration = const Duration(seconds: 60);
      // isOtpClear = true;
    });
    startTimer("00");
  }

  @override
  void initState() {
    super.initState();
    startTimer("00");
  }

  @override
  Widget build(BuildContext context) {
    final seconds = strDigits(myDuration.inSeconds.remainder(60));

    return SafeArea(
      child: Scaffold(
        appBar: const ArrowLeftAppbar(),
        resizeToAvoidBottomInset: false,
        body: Container(
          padding: KPadding.horizontal16,
          width: Get.width,
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBoxHeight(
                  height: 15,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'OTP Verification',
                      style: KText.r34ComfortaaW7,
                    ),
                    Gap.height(5),
                    Text(
                      'Enter the code that was sent to your number',
                      style: KText.r12Grey,
                    ),
                  ],
                ),
                const SizedBoxHeight(
                  height: 30,
                ),
                const OTPFeild(),
                const SizedBoxHeight(
                  height: 20,
                ),
                Text.rich(TextSpan(
                    text: 'Didn’t receive the OTP ? ',
                    style: KText.r14Grey,
                    children: [
                      TextSpan(
                          text: 'Resend in 00:$seconds sec',
                          style: KText.r14Bold)
                    ])),
                const SizedBoxHeight(
                  height: 20,
                ),
                loading
                    ? Center(
                        child: LoadingAnimationWidget.waveDots(
                          size: 45,
                          color: CustomColors.black,
                        ),
                      )
                    : CustomizedButton(
                        onTap: () {
                          if (formKey.currentState!.validate()) {
                            setState(() {
                              loading = true;
                            });
                            Future.delayed(const Duration(milliseconds: 1500),
                                () {
                              setState(() {
                                loading = false;
                              });
                              if (widget.isUser) {
                                if (widget.isRegister) {
                                  Get.to(
                                    () => const UserRegisterScreen(),
                                  );
                                } else {
                                  Get.to(
                                    () => const DhoondhLoadingScreen(),
                                  );
                                }
                              } else {
                                if (widget.isRegister) {
                                  Get.to(
                                    () => const PartnerRegisterScreen(),
                                  );
                                } else {
                                  Get.to(
                                    () => const DhoondhLoadingScreen(
                                      isUser: false,
                                    ),
                                  );
                                }
                                // Get.to(() => const PartnerDashboardScreen());
                              }
                            });
                          }
                        },
                        fontStyle: KText.r20w5White,
                        borderRadius: 5,
                        backgroundColor: CustomColors.black,
                        text: 'Verify',
                      ),
                const Spacer(
                  flex: 2,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
