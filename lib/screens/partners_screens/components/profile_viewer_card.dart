import 'package:dhoond/utilities/gap/gap.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../utilities/assets_paths/assets_paths.dart';
import '../../../../../utilities/core/kpadding.dart';
import '../../../../../utilities/custom_colors/custom_colors.dart';
import '../../../../../utilities/theme/ktext_theme.dart';

class ProfileViewerCard extends StatelessWidget {
  const ProfileViewerCard({
    super.key,
    this.showLookingFor = false,
    this.margin,
  });
  final bool showLookingFor;
  final EdgeInsetsGeometry? margin;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: KPadding.all15,
      margin: margin ?? KPadding.horizontal20,
      child: Row(
        children: [
          Container(
            height: 43.w,
            width: 43.w,
            decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage(
                      ImagePath.applianceTech,
                    ),
                    fit: BoxFit.cover)),
          ),
          Gap.width(20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'ABHINAV KAPADIYA',
                style: KText.r13Bold,
              ),
              Row(
                children: [
                  Text(
                    'Phone',
                    style: KText.r12,
                  ),
                  Gap.width(10),
                  Icon(
                    Icons.call,
                    size: 12.h,
                  )
                ],
              ),
              Row(
                children: [
                  Text(
                    'Shivprasad Complex, Nagpur',
                    style: KText.r12,
                  ),
                  Gap.width(10),
                  Icon(
                    Icons.location_on,
                    color: CustomColors.darkRed,
                    size: 12.h,
                  )
                ],
              ),
              Text(
                'VISITED ON: 5-aug-23 4:30 pm',
                style: KText.r10Grey,
              ),
            ],
          ),
          const Spacer(),
          Visibility(
            visible: showLookingFor,
            child: Column(
              children: [
                Image.asset(
                  ImagePath.lookingFor,
                  height: 50.h,
                ),
                Text(
                  'Looking For',
                  style: KText.r10,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
