import 'package:dhoond/components/shadow_container.dart';
import 'package:dhoond/utilities/core/kpadding.dart';
import 'package:dhoond/utilities/core/kradius.dart';
import 'package:dhoond/utilities/core/ksizedbox.dart';
import 'package:flutter/material.dart';
import '../../../../utilities/custom_colors/custom_colors.dart';
import '../../../../utilities/theme/ktext_theme.dart';

class Gender extends StatelessWidget {
  const Gender({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: KPadding.all15,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBoxHeight(
            height: 10,
          ),
          Text(
            'Gender',
            style: KText.r12Bold,
          ),
          const SizedBoxHeight(
            height: 25,
          ),
          ShadowContainer(
            disableShadow: true,
            backgroundColor: CustomColors.grey2.withOpacity(0.2),
            padding: KPadding.symmetric(15, 6),
            borderRadius: kBorderRadius5,
            child: Text(
              'Male',
              style: KText.r12,
            ),
          ),
          const SizedBoxHeight(),
          Row(
            children: [
              ShadowContainer(
                disableShadow: true,
                backgroundColor: CustomColors.grey2.withOpacity(0.2),
                padding: KPadding.symmetric(15, 6),
                borderRadius: kBorderRadius5,
                child: Text(
                  'Female',
                  style: KText.r12,
                ),
              ),
              const SizedBoxWidth(),
              ShadowContainer(
                disableShadow: true,
                backgroundColor: CustomColors.grey2.withOpacity(0.2),
                padding: KPadding.symmetric(15, 6),
                borderRadius: kBorderRadius5,
                child: Text(
                  'Others',
                  style: KText.r12,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
