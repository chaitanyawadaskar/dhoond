import 'package:dhoond/utilities/core/kradius.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utilities/core/kpadding.dart';
import '../utilities/custom_colors/custom_colors.dart';
import '../utilities/theme/ktext_theme.dart';

class RadioWithText extends StatelessWidget {
  final bool selected;
  final String text;
  final VoidCallback onTap;
  const RadioWithText({
    super.key,
    required this.selected,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: KPadding.all15,
        decoration:
            BoxDecoration(border: kBorderAll, borderRadius: kBorderRadius5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: KText.r14Grey,
            ),
            Container(
              padding: REdgeInsets.all(3),
              decoration:
                  BoxDecoration(shape: BoxShape.circle, border: kBorderAllGrey),
              child: Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: selected ? CustomColors.black : CustomColors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
