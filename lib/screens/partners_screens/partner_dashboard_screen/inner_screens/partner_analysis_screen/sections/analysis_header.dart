import 'package:dhoond/data/extensions/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

import '../../../../../../utilities/gap/gap.dart';
import '../../../../../../utilities/theme/ktext_theme.dart';
import '../components/category_dropdown.dart';

class AnalysisHeader extends StatelessWidget {
  const AnalysisHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    '98.00',
                    style: KText.r36w5,
                  ).mOnly(right: 10),
                  const Icon(
                    MaterialIcons.trending_up,
                    size: 30,
                  )
                ],
              ),
              Text(
                'Jobs done in Electrician Category.',
                style: KText.r14Greyw4,
              )
            ],
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              '156',
              style: KText.r24w6,
            ),
            Text(
              'Viewed Profile',
              style: KText.r14Grey,
            )
          ],
        ).mOnly(bottom: 25),
        Gap.width(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Category',
              style: KText.r12,
            ).mOnly(left: 5),
            const CategoryDropdown().mOnly(top: 5)
          ],
        ).mOnly(bottom: 17),
      ],
    ).mSymmetric(16);
  }
}
