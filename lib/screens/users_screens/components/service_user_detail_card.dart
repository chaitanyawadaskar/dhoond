import 'package:dhoond/screens/users_screens/user_partner_detail_screen/user_partner_detail_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../utilities/constant/constant.dart';
import '../../../components/check_online_container.dart';
import '../../../utilities/assets_paths/assets_paths.dart';
import '../../../utilities/core/kboxshadow.dart';
import '../../../utilities/core/kpadding.dart';
import '../../../utilities/core/kradius.dart';
import '../../../utilities/core/ksizedbox.dart';
import '../../../utilities/custom_colors/custom_colors.dart';
import '../../../utilities/theme/ktext_theme.dart';
import '../../../components/shadow_container.dart';
import 'behavior_kms.dart';
import 'name_image_rating_design.dart';
import 'recently_worked_call.dart';
import 'skills_charges_design.dart';

class ServiceUserDetailCard extends StatelessWidget {
  const ServiceUserDetailCard({
    super.key,
    this.inProfile = false,
  });
  final bool inProfile;

  @override
  Widget build(BuildContext context) {
    return ShadowContainer(
        borderRadius: kBorderRadius10,
        onTap: () {
          if (!inProfile) {
            Get.to(
              () => const UserPartnerDetailScreen(),
              transition: Transition.native,
            );
          }
        },
        padding: KPadding.symmetric(8, 15),
        boxShadow: KBoxShadow.faintGrey,
        child: Column(
          children: [
            const NameImageRatingDesign(
              type: ServiceProviderType.customerCoice,
            ),
            const SizedBoxHeight(
              height: 10,
            ),
            const SkillsChargesDesign(),
            const SizedBoxHeight(
              height: 10,
            ),
            const BehaviorKms(),
            const SizedBoxHeight(
              height: 10,
            ),
            RecentlyWorkedAndCall(
              inProfile: inProfile,
            )
          ],
        ));
  }
}
