import 'package:customize_button/customize_button.dart';
import 'package:flutter/material.dart';

import '../../../../components/shadow_container.dart';
import '../../../../utilities/core/kboxshadow.dart';
import '../../../../utilities/core/kpadding.dart';
import '../../../../utilities/core/kradius.dart';
import '../../../../utilities/core/ksizedbox.dart';
import '../../../../utilities/custom_colors/custom_colors.dart';
import '../../../../utilities/theme/ktext_theme.dart';

class FilterBottomBar extends StatelessWidget {
  const FilterBottomBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ShadowContainer(
      backgroundColor: CustomColors.white,
      padding: KPadding.symmetric(20, 10),
      borderRadius: kBorderRadius5,
      boxShadow: KBoxShadow.greyBorderType,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomizedButton(
                onTap: () {},
                fontStyle: KText.r14Bold,
                pad: KPadding.symmetric(30, 5),
                borderColor: CustomColors.faintGrey,
                borderRadius: 5,
                backgroundColor: CustomColors.white,
                enableBorder: true,
                text: 'Clear Filters',
              ),
              const SizedBoxHeight(),
              CustomizedButton(
                onTap: () {},
                fontStyle: KText.r14BoldWhite,
                pad: KPadding.symmetric(30, 5),
                borderRadius: 5,
                backgroundColor: CustomColors.black,
                text: '24 Results',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
