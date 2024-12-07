import 'package:customize_button/customize_button.dart';
import 'package:dhoond/data/extensions/extensions.dart';
import 'package:dhoond/utilities/core/kradius.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import '../../../../components/otp_feild.dart';
import '../../../../data/functions/common_function.dart';
import '../../../../utilities/core/kpadding.dart';
import '../../../../utilities/custom_colors/custom_colors.dart';
import '../../../../utilities/gap/gap.dart';
import '../../../../utilities/theme/ktext_theme.dart';
import '../../../common_screens/dhoondh_loading_screen/dhoondh_loading_screen.dart';

class UserOTPBottomSheet extends StatefulWidget {
  const UserOTPBottomSheet({super.key});

  @override
  State<UserOTPBottomSheet> createState() => _UserOTPBottomSheetState();
}

class _UserOTPBottomSheetState extends State<UserOTPBottomSheet> {
  CountdownTimer countdownTimer = CountdownTimer(initialSeconds: 59);
  String remainingTime = '00 : 59';

  @override
  void initState() {
    super.initState();
    countdownTimer.startCountdown(onTick: (val) {
      setState(() {
        remainingTime = val.timeToString;
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    countdownTimer.cancelCountdown();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: KPadding.horizontal25,
      decoration: BoxDecoration(
          color: CustomColors.white, borderRadius: kBorderRadius12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Gap.height(50),
          const OTPFeild(),
          Gap.height(15),
          Text.rich(TextSpan(
              text: 'Didn’t receive the OTP ? ',
              style: KText.r14Grey,
              children: [
                TextSpan(
                    text: 'Resend in $remainingTime sec', style: KText.r14w5)
              ])),
          Gap.height(50),
          CustomizedButton(
            onTap: () {
              Get.to(
                () => const DhoondhLoadingScreen(),
              );
            },
            fontStyle: KText.r14BoldWhite,
            borderRadius: 5,
            backgroundColor: CustomColors.black,
            text: 'Verify OTP',
          ),
          Gap.height(30),
        ],
      ),
    );
  }
}
