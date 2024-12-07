import 'package:dhoond/data/extensions/extensions.dart';
import 'package:dhoond/utilities/theme/ktext_theme.dart';
import 'package:flutter/material.dart';

import '../components/sort_dropdown.dart';

class MarketInsights extends StatelessWidget {
  const MarketInsights({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Current Market Insights',
          style: KText.r18w5,
        ),
        const SortDropdown()
      ],
    ).mSymmetric(16);
  }
}
