import 'package:customize_button/customize_button.dart';
import 'package:flutter/material.dart';

import '../utilities/core/kpadding.dart';
import '../utilities/custom_colors/custom_colors.dart';
import '../utilities/theme/ktext_theme.dart';

class PositionedButton extends StatelessWidget {
  const PositionedButton({
    super.key,
    required this.title,
    required this.onTap,
  });
  final String title;
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Container(
        margin: KPadding.all(25),
        child: CustomizedButton(
          onTap: onTap,
          fontStyle: KText.r14BoldWhite,
          pad: KPadding.H15V10,
          borderRadius: 5,
          backgroundColor: CustomColors.black,
          text: title,
        ),
      ),
    );
  }
}
