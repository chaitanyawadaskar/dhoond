import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utilities/core/kradius.dart';
import '../utilities/custom_colors/custom_colors.dart';

class RadioButton extends StatelessWidget {
  const RadioButton({
    super.key,
    required this.selected,
    this.selectedColor,
  });

  final bool selected;
  final Color? selectedColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: REdgeInsets.all(3),
      decoration: BoxDecoration(shape: BoxShape.circle, border: kBorderAllGrey),
      child: Container(
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: selected
                ? CustomColors.black
                : selectedColor ?? CustomColors.white),
      ),
    );
  }
}
