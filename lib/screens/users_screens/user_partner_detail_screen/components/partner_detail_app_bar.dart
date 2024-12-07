import 'package:dhoond/utilities/custom_colors/custom_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../components/arrow_left_appbar.dart';
import '../../../../utilities/core/kpadding.dart';
import '../../../../utilities/theme/ktext_theme.dart';

class PartnerDetailAppBar extends StatefulWidget {
  const PartnerDetailAppBar({
    super.key,
  });

  @override
  State<PartnerDetailAppBar> createState() => _PartnerDetailAppBarState();
}

class _PartnerDetailAppBarState extends State<PartnerDetailAppBar> {
  bool isFav = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ArrowLeftAppbar(
          padding: KPadding.only(left: 5),
        ),
        Text(
          'Profile',
          style: KText.r30ComfortaaW7,
        ),
        Padding(
          padding: KPadding.horizontal15,
          child: Column(
            children: [
              InkWell(
                  onTap: () {
                    setState(() {
                      isFav = !isFav;
                    });
                  },
                  child: Icon(
                    isFav ? CupertinoIcons.heart_solid : CupertinoIcons.heart,
                    color: isFav ? CustomColors.red : null,
                  )),
              Text(
                'Save',
                style: KText.r12,
              ),
            ],
          ),
        )
      ],
    );
  }
}
