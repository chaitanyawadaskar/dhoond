import 'package:flutter/material.dart';

import '../../../../components/radio_button.dart';
import '../../../../components/shadow_container.dart';
import '../../../../utilities/core/kpadding.dart';
import '../../../../utilities/core/kradius.dart';
import '../../../../utilities/gap/gap.dart';
import '../../../../utilities/theme/ktext_theme.dart';

class PaymentModeCard extends StatelessWidget {
  const PaymentModeCard({
    super.key,
    required this.isSelected,
    this.imgUrl,
    required this.title,
    this.subtitle,
    this.height,
    this.width,
    this.onTap,
    this.disableShadow = true,
    this.padding,
    this.isBorder = false,
  });
  final bool isSelected;
  final bool isBorder;
  final String? imgUrl;
  final String title;
  final String? subtitle;
  final double? height;
  final double? width;
  final bool disableShadow;
  final EdgeInsetsGeometry? padding;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return ShadowContainer(
        borderRadius: kBorderRadius10,
        border: isBorder ? kBorderAllGrey2 : null,
        padding: padding ?? KPadding.all20,
        onTap: onTap,
        disableShadow: disableShadow,
        child: Row(
          children: [
            RadioButton(
              selected: isSelected,
            ),
            Gap.width(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: KText.r14w5,
                ),
                if (subtitle != null) ...[
                  Gap.height(5),
                  !'$subtitle'.startsWith('https', 0)
                      ? Text(
                          '$subtitle',
                          style: KText.r13,
                        )
                      : Image.network(
                          '$subtitle',
                          height: height,
                          width: width,
                        )
                ]
              ],
            ),
            const Spacer(),
            if (!'$subtitle'.startsWith('https', 0))
              '$imgUrl'.startsWith('https', 0)
                  ? Image.network(
                      '$imgUrl',
                      height: height,
                      width: width,
                    )
                  : Image.asset(
                      '$imgUrl',
                      height: height,
                      width: width,
                    )
          ],
        ));
  }
}
