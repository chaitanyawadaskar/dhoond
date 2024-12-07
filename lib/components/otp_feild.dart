import 'package:dhoond/data/services/validation_service/validation_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pinput/pinput.dart';

import '../utilities/core/kradius.dart';
import '../utilities/theme/ktext_theme.dart';

class OTPFeild extends StatelessWidget {
  const OTPFeild({
    super.key,
    this.length = 6,
  });
  final int length;
  @override
  Widget build(BuildContext context) {
    return Pinput(
      defaultPinTheme: PinTheme(
        width: 50.w,
        height: 50.w,
        textStyle: KText.r20Bold,
        decoration: BoxDecoration(
          border: kBorderAll2,
          borderRadius: kBorderRadius8,
        ),
      ),
      focusedPinTheme: PinTheme(
        width: 50.w,
        height: 50.w,
        textStyle: KText.r20Bold,
        decoration: BoxDecoration(
          border: kBorderAll2,
          borderRadius: kBorderRadius8,
        ),
      ),
      submittedPinTheme: PinTheme(
        width: 50.w,
        height: 50.w,
        textStyle: KText.r20Bold,
        decoration: BoxDecoration(
          border: kBorderAll2,
          borderRadius: kBorderRadius8,
        ),
      ),
      errorPinTheme: PinTheme(
        width: 50.w,
        height: 50.w,
        textStyle: KText.r20Bold,
        decoration: BoxDecoration(
          border: kBorderRedAll2,
          borderRadius: kBorderRadius8,
        ),
      ),
      errorTextStyle: KText.r14Red,
      validator: (value) => ValidationService.validateOTP(value, '000000'),
      pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
      showCursor: true,
      length: length,
      onCompleted: (pin) => debugPrint(pin),
    );
  }
}
