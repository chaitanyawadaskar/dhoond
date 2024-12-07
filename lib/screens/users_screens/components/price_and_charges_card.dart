import 'package:dhoond/data/extensions/extensions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:intl/intl.dart';

import '../../../components/shadow_container.dart';
import '../../../utilities/assets_paths/assets_paths.dart';
import '../../../utilities/core/kpadding.dart';
import '../../../utilities/core/kradius.dart';
import '../../../utilities/custom_colors/custom_colors.dart';
import '../../../utilities/gap/gap.dart';
import '../../../utilities/theme/ktext_theme.dart';

class PriceAndChargesCard extends StatelessWidget {
  const PriceAndChargesCard(
      {super.key,
      required this.price,
      required this.gst,
      required this.gatewayCharges,
      required this.grandTotal,
      this.enabledIcon = true,
      this.border,
      this.disableShadow = false});

  final String price;
  final String gst;
  final String gatewayCharges;
  final String grandTotal;
  final bool enabledIcon;
  final BoxBorder? border;
  final bool? disableShadow;
  @override
  Widget build(BuildContext context) {
    return ShadowContainer(
        borderRadius: kBorderRadius8,
        padding: KPadding.all15,
        border: kBorderAllGrey2,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total Price',
                  style: KText.r14w5,
                ),
                Text(
                  price.commaDenote.rupee,
                  style: KText.r14w5,
                )
              ],
            ),
            Gap.height(2),
            Text(
              'includes ₹10 for helping people with disability',
              style: KText.r12Grey,
            ),
            Gap.height(10),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Visibility(
                  visible: enabledIcon,
                  child: Icon(
                    FontAwesome.bank,
                    size: 20.h,
                  ),
                ),
                Gap.width(8),
                Text(
                  'GST',
                  style: KText.r14,
                ),
                Gap.width(4),
                Text(
                  '5%',
                  style: KText.r14,
                ),
                const Spacer(),
                Text(
                  gst.rupee,
                  style: KText.r14,
                )
              ],
            ),
            Gap.height(10),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Visibility(
                  visible: enabledIcon,
                  child: Icon(
                    MaterialIcons.phone_android,
                    size: 20.h,
                  ),
                ),
                Gap.width(5),
                Text(
                  'Gateway Charges',
                  style: KText.r14,
                ),
                Gap.width(4),
                Text(
                  '3%',
                  style: KText.r14,
                ),
                const Spacer(),
                Text(
                  gatewayCharges.rupee,
                  style: KText.r14,
                )
              ],
            ),
            Gap.height(10),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Visibility(
                  visible: enabledIcon,
                  child: SvgPicture.asset(
                    SvgPath.scooter,
                    height: 20.h,
                  ),
                ),
                Gap.width(5),
                Text(
                  'Dhoond partner fee',
                  style: KText.r14,
                ),
                Gap.width(8),
                const Spacer(),
                Text(
                  '₹128',
                  style: KText.r14lineThrough,
                ),
                Gap.width(5),
                Text(
                  'FREE',
                  style: KText.r14BlueW5,
                )
              ],
            ),
            Gap.height(10),
            const Divider(
              thickness: 1,
              color: CustomColors.mobileNoGrey,
            ),
            Gap.height(10),
            Row(
              children: [
                Text(
                  'Grand Total',
                  style: KText.r14w5,
                ),
                const Spacer(),
                Builder(builder: (context) {
                  final String newTextFormatted;
                  if (grandTotal.isNotEmpty) {
                    newTextFormatted = NumberFormat("#,##,##,###").format(
                        double.tryParse(grandTotal.replaceAll(",", "")));
                  } else {
                    newTextFormatted = grandTotal;
                  }
                  return Text(
                    newTextFormatted.rupee,
                    style: KText.r14w5,
                  );
                })
              ],
            ),
            Gap.height(5),
          ],
        ));
  }
}
