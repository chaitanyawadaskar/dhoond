import 'package:dhoond/components/arrow_left_appbar.dart';
import 'package:dhoond/data/extensions/extensions.dart';
import 'package:dhoond/utilities/core/kpadding.dart';
import 'package:dhoond/utilities/core/kradius.dart';
import 'package:dhoond/utilities/gap/gap.dart';
import 'package:dhoond/utilities/theme/ktext_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:super_tooltip/super_tooltip.dart';

import '../../../../../utilities/custom_colors/custom_colors.dart';

class FloatPaymentPlanAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const FloatPaymentPlanAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: KPadding.only(top: 15, left: 15, right: 18),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const ArrowLeftAppbar(
            padding: KPadding.none,
          ),
          Text(
            'Float Payment',
            style: KText.r20w5,
          ),
          SuperTooltip(
              elevation: 0,
              hideTooltipOnTap: true,
              shadowSpreadRadius: 0,
              minimumOutsideMargin: 15,
              arrowLength: 20,
              content: Container(
                padding: KPadding.all15,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Penalty for late payments',
                      style: KText.r14,
                    ),
                    Gap.height(10),
                    Text(
                      'A ₹40 penalty applies for late payments. Avoid it by paying on time.',
                      style: KText.r13Grey,
                    ),
                  ],
                ),
              ),
              child: const Icon(
                Foundation.info,
                size: 24,
              )),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}
