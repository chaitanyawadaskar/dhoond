import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utilities/assets_paths/assets_paths.dart';
import '../utilities/core/kpadding.dart';
import '../utilities/core/kradius.dart';
import '../utilities/core/ksizedbox.dart';
import '../utilities/custom_colors/custom_colors.dart';
import '../utilities/theme/ktext_theme.dart';

class InventoryShopCard extends StatelessWidget {
  const InventoryShopCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: KPadding.all20,
      decoration: BoxDecoration(
          border: kBorderAllFaintGrey, borderRadius: kBorderRadius20),
      child: Row(
        children: [
          Container(
            height: 100.w,
            width: 100.w,
            decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage(
                      ImagePath.shop,
                    ),
                    fit: BoxFit.cover)),
          ),
          const SizedBoxWidth(),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Divyansh Interiors & Furniture',
                  style: KText.r20,
                ),
                Text(
                  'Hingna road, Nagpur',
                  style: KText.r14w5,
                ),
                Row(children: [
                  RatingBar.builder(
                    initialRating: 4.5,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemSize: 20.w,
                    itemPadding: KPadding.none,
                    itemBuilder: (context, _) => const Icon(
                      Icons.star,
                      color: CustomColors.amber,
                    ),
                    onRatingUpdate: (rating) {
                      print(rating);
                    },
                  ),
                  Text(
                    '4.5',
                    style: KText.r14w5,
                  ),
                  Text(
                    ' (23 review)',
                    style: KText.r12Grey,
                  ),
                ])
              ],
            ),
          ),
        ],
      ),
    );
  }
}
