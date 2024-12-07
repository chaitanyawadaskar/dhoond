import 'package:dhoond/components/arrow_left_appbar.dart';
import 'package:dhoond/utilities/core/kpadding.dart';
import 'package:dhoond/utilities/gap/gap.dart';
import 'package:dhoond/utilities/theme/ktext_theme.dart';
import 'package:flutter/material.dart';

class FloatDateTimeAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const FloatDateTimeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: KPadding.only(top: 15, left: 15),
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
          Gap.width(50)
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}
