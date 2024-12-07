import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utilities/assets_paths/assets_paths.dart';
import '../../../utilities/core/kpadding.dart';
import '../../../utilities/core/kradius.dart';
import '../../../utilities/custom_colors/custom_colors.dart';
import '../../../utilities/gap/gap.dart';
import '../../../utilities/theme/ktext_theme.dart';

class TeamCard extends StatelessWidget {
  const TeamCard({
    super.key,
    required this.isSelected,
  });
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: KPadding.horizontal10,
      child: Row(
        children: [
          Container(
            height: 45.w,
            width: 45.w,
            decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage(
                      ImagePath.profileAvatar,
                    ),
                    fit: BoxFit.cover)),
          ),
          Gap.width(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Sanjay Verma',
                style: KText.r14Bold,
              ),
              Text(
                'verified UID',
                style: KText.r12,
              )
            ],
          ),
          const Spacer(),
          AnimatedContainer(
            padding: REdgeInsets.all(3),
            decoration:
                BoxDecoration(shape: BoxShape.circle, border: kBorderAllGrey),
            duration: const Duration(milliseconds: 500),
            child: Container(
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: isSelected ? CustomColors.black : CustomColors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
