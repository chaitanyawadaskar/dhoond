import 'package:dhoond/utilities/gap/gap.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../components/shadow_container.dart';
import '../../../../../../utilities/assets_paths/assets_paths.dart';
import '../../../../../../utilities/core/kpadding.dart';
import '../../../../../../utilities/core/kradius.dart';
import '../../../../../../utilities/custom_colors/custom_colors.dart';
import '../../../../../../utilities/theme/ktext_theme.dart';

class ParterSearchItemCard extends StatelessWidget {
  const ParterSearchItemCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ShadowContainer(
      backgroundColor: CustomColors.white,
      borderRadius: kBorderRadius8,
      padding: KPadding.all15,
      child: Row(
        children: [
          Container(
            height: 43.w,
            width: 43.w,
            decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage(
                      ImagePath.electricalMan,
                    ),
                    fit: BoxFit.cover)),
          ),
          Gap.width(20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '4 Hrs Ago',
                style: KText.r12Bold,
              ),
              Text(
                'Aditya Joshi',
                style: KText.r12,
              ),
              Text(
                'Tilak Nagar, Nagpur',
                style: KText.r12,
              ),
            ],
          )
        ],
      ),
    );
  }
}
