import 'package:customize_button/customize_button.dart';
import 'package:dhoond/data/extensions/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../components/radio_button.dart';
import '../../../../components/shadow_container.dart';
import '../../../../utilities/constant/constant.dart';
import '../../../../utilities/core/kpadding.dart';
import '../../../../utilities/core/kradius.dart';
import '../../../../utilities/custom_colors/custom_colors.dart';
import '../../../../utilities/gap/gap.dart';
import '../../../../utilities/theme/ktext_theme.dart';

class FloatPaymentCard extends StatelessWidget {
  const FloatPaymentCard({
    super.key,
    required this.isSelected,
    required this.isPaid,
    required this.index,
    this.showButton = false,
    this.onTap,
    required this.date,
    required this.price,
    this.type = FloatPlanType.days,
    this.opacity = 1,
    this.disableRadio = false,
  });

  final bool isSelected;
  final bool isPaid;
  final bool showButton;
  final int index;
  final VoidCallback? onTap;
  final String date;
  final String price;
  final double opacity;
  final FloatPlanType type;
  final bool disableRadio;

  @override
  Widget build(BuildContext context) {
    String getType() {
      if (type == FloatPlanType.days) {
        return 'days';
      } else if (type == FloatPlanType.weeks) {
        return 'weeks';
      } else {
        return 'month';
      }
    }

    return Opacity(
      opacity: opacity,
      child: ShadowContainer(
        disableShadow: true,
        onTap: onTap,
        backgroundColor: CustomColors.floatGrey,
        borderRadius: kBorderRadius10,
        padding: KPadding.all10,
        child: Row(
          children: [
            if (!disableRadio)
              RadioButton(
                selected: isSelected,
                selectedColor: CustomColors.transparent,
              ),
            Gap.width(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  isPaid ? 'Paid' : 'In $index ${getType()}',
                  style: KText.r14Bold,
                ),
                Text(
                  isPaid ? '$index st payment down!' : 'due on $date',
                  style: KText.r12Grey,
                ),
              ],
            ),
            const Spacer(),
            showButton
                ? SizedBox(
                    height: 35.h,
                    child: CustomizedButton(
                      onTap: () => onTap,
                      text: 'Pay Now',
                      fontStyle: KText.r10White,
                      width: 90.w,
                      backgroundColor: CustomColors.black,
                    ),
                  )
                : Text(
                    price.rupee,
                    style: KText.r14Bold,
                  )
          ],
        ),
      ),
    );
  }
}
