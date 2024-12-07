import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../../../components/shadow_container.dart';
import '../../../../../../utilities/assets_paths/assets_paths.dart';
import '../../../../../../utilities/core/kpadding.dart';
import '../../../../../../utilities/core/kradius.dart';
import '../../../../../../utilities/custom_colors/custom_colors.dart';
import '../../../../../../utilities/gap/gap.dart';
import '../../../../../../utilities/theme/ktext_theme.dart';
import '../../../../partner_job_search_screen/partner_job_search_screen.dart';
import '../../../../partner_profile_view_screen/partner_profile_view_screen.dart';
import '../../../../partner_trending_jobs_screen/partner_trending_jobs_screen.dart';

class PartnerSearchTabs extends StatelessWidget {
  const PartnerSearchTabs({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          child: ShadowContainer(
              onTap: () {
                Get.to(
                  () => const PartnerProfileViewScreen(),
                  transition: Transition.native,
                );
              },
              border: kBorderAll,
              borderRadius: kBorderRadius8,
              padding: KPadding.all10,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'PROFILE\nVIEWS',
                    style: KText.r13Bold,
                  ),
                  Container(
                    padding: KPadding.all(5),
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: CustomColors.lightGreen),
                  )
                ],
              )),
        ),
        Gap.width(),
        Flexible(
          child: ShadowContainer(
              onTap: () {
                Get.to(
                  () => const PartnerJobSearchScreen(),
                  transition: Transition.native,
                );
              },
              border: kBorderAll,
              borderRadius: kBorderRadius8,
              padding: KPadding.all10,
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Padding(
                    padding: KPadding.only(right: 25),
                    child: Text(
                      'YOUR JOB\nSEARCHES',
                      style: KText.r13Bold,
                    ),
                  ),
                  Positioned(
                    right: -5,
                    bottom: 0,
                    child: Image.asset(
                      IconPath.jobSearch,
                      height: 30.h,
                      color: CustomColors.black,
                    ),
                  )
                ],
              )),
        ),
        Gap.width(),
        Flexible(
          child: ShadowContainer(
              onTap: () {
                Get.to(
                  () => const PartnerTrendingJobsScreen(),
                  transition: Transition.native,
                );
              },
              border: kBorderAll,
              borderRadius: kBorderRadius8,
              padding: KPadding.all10,
              child: Stack(
                children: [
                  Padding(
                    padding: KPadding.only(right: 15),
                    child: Text(
                      'TRENDING\nJOBS',
                      style: KText.r13Bold,
                    ),
                  ),
                  Positioned(
                    right: 0,
                    bottom: 0,
                    child: Image.asset(
                      IconPath.trending,
                      height: 30.h,
                      color: CustomColors.black,
                    ),
                  )
                ],
              )),
        )
      ],
    );
  }
}
