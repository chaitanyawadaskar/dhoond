import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../components/shadow_container.dart';
import '../../../../utilities/assets_paths/assets_paths.dart';
import '../../../../utilities/core/kpadding.dart';
import '../../../../utilities/core/kradius.dart';
import '../../../../utilities/custom_colors/custom_colors.dart';
import '../../../../utilities/gap/gap.dart';
import '../../../../utilities/theme/ktext_theme.dart';

class TrendingAssuredCard extends StatelessWidget {
  const TrendingAssuredCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ShadowContainer(
      backgroundColor: CustomColors.white,
      borderRadius: kBorderRadius8,
      padding: KPadding.all15,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
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
              Gap.width(2),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    padding: KPadding.symmetric(5, 2),
                    decoration: BoxDecoration(
                        border: kBorderAll,
                        color: CustomColors.grey.withOpacity(0.4),
                        borderRadius: kBorderRadius30),
                    child: Row(
                      children: [
                        Image.asset(
                          ImagePath.dhoond,
                          height: 12.h,
                        ),
                        Text(
                          'Assured',
                          style: KText.r12,
                        ),
                        Image.asset(
                          ImagePath.diamond,
                          height: 15.h,
                        )
                      ],
                    ),
                  ),
                  Text(
                    '4+ Work\nToday',
                    style: KText.r15w5,
                  )
                ],
              )
            ],
          ),
          SizedBox(
            width: 120.w,
            child: Text(
              'Sandeep Sharma(carpenter) complired his work in Amec mobility pv Ltd.in nagpur ',
              style: KText.r13,
            ),
          )
        ],
      ),
    );
  }
}
