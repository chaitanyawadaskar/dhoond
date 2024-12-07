import 'package:customize_button/customize_button.dart';
import 'package:dhoond/components/arrow_left_appbar.dart';
import 'package:dhoond/components/shadow_container.dart';
import 'package:dhoond/utilities/core/kpadding.dart';
import 'package:dhoond/utilities/core/kradius.dart';
import 'package:dhoond/utilities/gap/gap.dart';
import 'package:dhoond/utilities/theme/ktext_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../utilities/assets_paths/assets_paths.dart';
import '../../../utilities/custom_colors/custom_colors.dart';
import '../components/team_card.dart';
import '../partner_add_member_screen/partner_add_member_screen.dart';

class PartnerMyTeamScreen extends StatefulWidget {
  const PartnerMyTeamScreen({super.key});

  @override
  State<PartnerMyTeamScreen> createState() => _PartnerMyTeamScreenState();
}

class _PartnerMyTeamScreenState extends State<PartnerMyTeamScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: ArrowLeftAppbar(
          suffix: Expanded(
            child: Row(
              children: [
                const Spacer(
                  flex: 2,
                ),
                Text(
                  'My Team',
                  style: KText.r30ComfortaaW7,
                ),
                const Spacer(
                  flex: 3,
                ),
              ],
            ),
          ),
          suffixAsLeading: true,
        ),
        body: Padding(
          padding: KPadding.horizontal20,
          child: Column(
            children: [
              Gap.height(30),
              Text(
                'Enter the team members UID who can collaborate with you and work with you.',
                style: KText.r14,
              ),
              Gap.height(25),
              ConstrainedBox(
                constraints: BoxConstraints(maxHeight: 250.h),
                child: ListView.separated(
                  itemBuilder: (context, index) =>
                      TeamCard(isSelected: index == 0),
                  itemCount: 2,
                  shrinkWrap: true,
                  separatorBuilder: (BuildContext context, int index) =>
                      Gap.height(),
                ),
              ),
              Gap.height(25),
              Align(
                alignment: Alignment.topLeft,
                child: CustomizedButton(
                  onTap: () {
                    Get.to(
                      () => const PartnerAddMemberScreen(),
                      transition: Transition.native,
                    );
                  },
                  pad: KPadding.symmetric(10, 8),
                  borderRadius: 30,
                  backgroundColor: CustomColors.black,
                  widget: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Gap.width(5),
                      Text(
                        'Add Member',
                        style: KText.r12White,
                      ),
                      Gap.width(5),
                      Icon(
                        Icons.add,
                        size: 25.h,
                        color: CustomColors.white,
                      )
                    ],
                  ),
                ),
              ),
              const Spacer(),
              CustomizedButton(
                onTap: () {},
                pad: KPadding.symmetric(10, 8),
                borderRadius: 5,
                backgroundColor: CustomColors.black,
                text: 'Select & Save',
                fontStyle: KText.r14BoldWhite,
              ),
              Gap.height(25),
              ShadowContainer(
                  padding: KPadding.all10,
                  borderRadius: kBorderRadius10,
                  child: Text(
                    '''Please specify your hourly charges for your work and also include any team members who can collaborate with you. You can share 40% of your work revenue, as DHOOND does not provide extra income. Additionally, user participation depends on you and your team.\"''',
                    style: KText.r14w5,
                  )),
              Gap.height(25),
            ],
          ),
        ),
      ),
    );
  }
}
