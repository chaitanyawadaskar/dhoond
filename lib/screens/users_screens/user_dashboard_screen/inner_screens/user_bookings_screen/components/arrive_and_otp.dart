import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../utilities/core/kpadding.dart';
import '../../../../../../utilities/core/ksizedbox.dart';
import '../../../../../../utilities/custom_colors/custom_colors.dart';
import '../../../../../../utilities/theme/ktext_theme.dart';

class ArriveAndOtp extends StatelessWidget {
  const ArriveAndOtp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: KPadding.horizontal25,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                padding: KPadding.all(5),
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: CustomColors.lightGreen),
              ),
              Text.rich(TextSpan(children: [
                TextSpan(text: 'ARRIVING IN', style: KText.r15),
                TextSpan(text: ' 20 MIN', style: KText.r15Bold),
              ])),
              const SizedBoxWidth(
                width: 5,
              ),
              Icon(
                Icons.pedal_bike_outlined,
                size: 25.w,
              )
            ],
          ),
          Row(
            children: [
              Text(
                'OTP',
                style: KText.r15,
              ),
              const SizedBoxWidth(),
              Text(
                '5346',
                style: KText.r25Bold,
              ),
            ],
          )
        ],
      ),
    );
  }
}
