import 'package:customize_button/customize_button.dart';
import 'package:dhoond/utilities/core/kpadding.dart';
import 'package:dhoond/utilities/core/kradius.dart';
import 'package:dhoond/utilities/core/ksizedbox.dart';
import 'package:dhoond/utilities/gap/gap.dart';
import 'package:dhoond/utilities/theme/ktext_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:get/get.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import '../../../components/arrow_left_appbar.dart';
import '../../../utilities/custom_colors/custom_colors.dart';
import '../../starting_screens/otp_verification_screen/otp_verification_screen.dart';
import 'components/country_code_and_textfeild.dart';

class UserLoginScreen extends StatefulWidget {
  const UserLoginScreen({super.key, this.isRegister = false});
  final bool isRegister;
  @override
  State<UserLoginScreen> createState() => _UserLoginScreenState();
}

class _UserLoginScreenState extends State<UserLoginScreen> {
  String countryCode = '+91';
  final number = TextEditingController();
  bool loading = false;
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const ArrowLeftAppbar(),
        resizeToAvoidBottomInset: false,
        body: Padding(
          padding: KPadding.horizontal20,
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBoxHeight(
                  height: 15.h,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Mobile No',
                      style: KText.r34ComfortaaW7,
                    ),
                  ],
                ),
                const SizedBoxHeight(
                  height: 30,
                ),
                CountryCodeAndTextFeild(
                  countryCode: countryCode,
                  onSelect: (code) {
                    setState(() {
                      countryCode = code;
                    });
                  },
                  onTextChange: () {
                    formKey.currentState!.validate();
                  },
                  number: number,
                ),
                Gap.height(),
                Container(
                    decoration: BoxDecoration(
                      color: CustomColors.mobileNoGrey,
                      borderRadius: kBorderRadius8,
                    ),
                    padding: KPadding.symmetric(25, 20),
                    child: Row(
                      children: [
                        const Icon(
                          Ionicons.information_circle,
                          size: 20,
                        ),
                        Gap.width(),
                        Flexible(
                          child: Text(
                            'You will receive an OTP code from Dhoond to confirm your number.',
                            style: KText.r12w5,
                          ),
                        )
                      ],
                    )),
                Gap.height(20),
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
                            Future.delayed(const Duration(seconds: 2), () {
                              setState(() {
                                loading = false;
                              });
                              Get.to(
                                () => OtpVerificationScreen(
                                  number: number.text,
                                  isRegister: widget.isRegister,
                                ),
                                transition: Transition.native,
                              );
                            });
                          }
                        },
                        text: 'Get OTP',
                        fontStyle: KText.r20w5White,
                        backgroundColor: CustomColors.black,
                      ),
                const Spacer(
                  flex: 2,
                ),
                const Spacer(
                  flex: 1,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
