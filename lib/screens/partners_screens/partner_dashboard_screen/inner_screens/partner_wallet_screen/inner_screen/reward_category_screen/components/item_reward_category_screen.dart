import 'package:dhoond/components/bullet_points.dart';
import 'package:dhoond/data/extensions/extensions.dart';
import 'package:dhoond/utilities/constant/constant.dart';
import 'package:dhoond/utilities/core/kpadding.dart';
import 'package:dhoond/utilities/custom_colors/custom_colors.dart';
import 'package:dhoond/utilities/gap/gap.dart';
import 'package:dhoond/utilities/theme/ktext_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemCategoryRewardScreen extends StatelessWidget {
  const ItemCategoryRewardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(
              alignment: Alignment.topCenter,
              padding: KPadding.all(7),
              decoration: BoxDecoration(
                  color: CustomColors.bulletGreen, shape: BoxShape.circle),
            ),
            Gap.width(5),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Gap.height(27),
                  Text(
                    'Everyday Essentials',
                    style: KText.r18w7,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Income Range:',
                        style: KText.r18GreyW5,
                      ),
                      Text(
                        '₹10,000 – ₹20,000',
                        style: KText.r18GreyW5,
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ).pSymmetric(20),
        Gap.height(5),
        BulletPoints(
          iconSize: 5,
          spacing: 10,
          textStyle: KText.r18,
          style: BulletStyle.dot,
          items: const [
            'Grocery Coupons',
            'Fuel Vouchers',
            'Mobile/Data Recharge'
          ],
        ).pOnly(left: 50),
        Gap.height(10),
        Divider(
          thickness: 1,
          color: CustomColors.grey.withOpacity(0.5),
        ),
      ],
    );
  }
}
