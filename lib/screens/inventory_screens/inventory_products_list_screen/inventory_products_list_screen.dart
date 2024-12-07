import 'package:dhoond/data/extensions/extensions.dart';
import 'package:dhoond/utilities/core/kpadding.dart';
import 'package:dhoond/utilities/core/kradius.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../components/inventory_shop_card.dart';
import '../../../utilities/assets_paths/assets_paths.dart';
import '../../../utilities/core/ksizedbox.dart';
import '../../../utilities/custom_colors/custom_colors.dart';
import '../../../utilities/theme/ktext_theme.dart';
import 'components/inventory_app_bar.dart';

class InventoryProductsListScreen extends StatefulWidget {
  const InventoryProductsListScreen({super.key});

  @override
  State<InventoryProductsListScreen> createState() =>
      _InventoryProductsListScreenState();
}

class _InventoryProductsListScreenState
    extends State<InventoryProductsListScreen> {
  var products = [
    {'image': ImagePath.hammer, 'name': 'Claw hammer', 'price': '294'},
    {'image': ImagePath.plane, 'name': 'Stanley smooth plane', 'price': '1517'},
    {'image': ImagePath.bosch, 'name': 'Bosch gsb 500', 'price': '3850'},
    {'image': ImagePath.tape, 'name': 'Measuring tape', 'price': '298'}
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const InventoryAppBar(),
      body: Padding(
        padding: KPadding.only(left: 20, right: 20, top: 20),
        child: Column(
          children: [
            const InventoryShopCard(),
            const SizedBoxHeight(),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Products List',
                  style: KText.r20,
                )
              ],
            ),
            const SizedBoxHeight(),
            Flexible(
                child: ListView.separated(
              itemBuilder: (context, index) => Container(
                padding: KPadding.all10,
                decoration: BoxDecoration(
                    border: kBorderAllFaintGrey, borderRadius: kBorderRadius20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      height: 75.w,
                      width: 75.w,
                      decoration: BoxDecoration(
                          border: kBorderAllFaintGrey,
                          borderRadius: kBorderRadius20,
                          image: DecorationImage(
                              image:
                                  AssetImage('${products[index]['image']}'))),
                    ),
                    const SizedBoxWidth(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '${products[index]['name']}',
                          style: KText.r12,
                        ),
                        Text(
                          '${products[index]['price']}'.rupee,
                          style: KText.r14w5,
                        ),
                        Row(
                          children: [
                            const Icon(Icons.add_circle_outline_sharp),
                            const SizedBoxWidth(
                              width: 10,
                            ),
                            Text(
                              '0',
                              style: KText.r14w5,
                            ),
                            const SizedBoxWidth(
                              width: 10,
                            ),
                            const Icon(Icons.remove_circle_outline_sharp)
                          ],
                        )
                      ],
                    ),
                    const Spacer(),
                    const Icon(
                      CupertinoIcons.delete,
                      color: CustomColors.red,
                    )
                  ],
                ),
              ),
              itemCount: products.length,
              separatorBuilder: (BuildContext context, int index) {
                return const SizedBoxHeight();
              },
            ))
          ],
        ),
      ),
    );
  }
}
