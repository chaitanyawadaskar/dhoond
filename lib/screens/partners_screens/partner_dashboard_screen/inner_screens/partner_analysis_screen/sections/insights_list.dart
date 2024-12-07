import 'package:dhoond/components/shadow_container.dart';
import 'package:dhoond/data/extensions/extensions.dart';
import 'package:dhoond/utilities/core/kboxshadow.dart';
import 'package:dhoond/utilities/core/kradius.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

import '../../../../../../utilities/core/kpadding.dart';
import '../../../../../../utilities/gap/gap.dart';
import '../../../../../../utilities/theme/ktext_theme.dart';
import '../../partner_search_screen/components/partner_search_item_card.dart';

class InsightsList extends StatelessWidget {
  const InsightsList({super.key});

  @override
  Widget build(BuildContext context) {
    var sortList = [
      {
        'title': 'Searches for Electrician',
        'profit': '+10.00₹',
        'loss': '-46',
        'price': '120.00'
      },
      {
        'title': 'Orders for HVAC',
        'profit': '+00.00₹',
        'loss': '-26',
        'price': '39.00'
      },
      {
        'title': 'Searches for Electric fitting',
        'profit': '+10.00₹',
        'loss': '-46',
        'price': '120.00'
      },
      {
        'title': 'Searches for Electric fitting',
        'profit': '+10.00₹',
        'loss': '-46',
        'price': '120.00'
      },
      {
        'title': 'Searches for Electric fitting',
        'profit': '+10.00₹',
        'loss': '-46',
        'price': '120.00'
      },
    ];
    return ListView.separated(
        padding: KPadding.symmetric(16, 8),
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (context, index) => ShadowContainer(
              boxShadow: KBoxShadow.insightsCardShadow,
              borderRadius: kBorderRadius10,
              padding: KPadding.all10,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        sortList[index]['title'].toString(),
                        style: KText.r16w4,
                      ),
                      Text(
                        'Aug 16',
                        style: KText.r12InterGrey,
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        children: [
                          Text(
                            sortList[index]['profit'].toString(),
                            style: KText.r12InterGreen,
                          ).mOnly(right: 10),
                          const Icon(
                            MaterialIcons.trending_up,
                            size: 18,
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            sortList[index]['loss'].toString(),
                            style: KText.r12InterRed,
                          ).mOnly(right: 5),
                          const Icon(
                            MaterialIcons.trending_down,
                            size: 18,
                          ),
                          Text(
                            sortList[index]['price'].toString(),
                            style: KText.r18w5,
                          ).mOnly(left: 5)
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
        separatorBuilder: (context, index) => Gap.height(10),
        itemCount: sortList.length);
  }
}
