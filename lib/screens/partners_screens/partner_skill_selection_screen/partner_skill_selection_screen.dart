import 'package:customize_button/customize_button.dart';
import 'package:dhoond/screens/partners_screens/partner_selected_work_screen/components/work_card.dart';
import 'package:dhoond/utilities/custom_colors/custom_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:get/get.dart';

import '../../../components/arrow_left_appbar.dart';
import '../../../components/shadow_container.dart';
import '../../../utilities/core/kpadding.dart';
import '../../../utilities/core/kradius.dart';
import '../../../utilities/gap/gap.dart';
import '../../../utilities/theme/ktext_theme.dart';
import '../../users_screens/user_dashboard_screen/inner_screens/user_home_screen/components/search_text_feild.dart';
import '../partner_selected_work_screen/partner_selected_work_screen.dart';

class PartnerSkillSelectionScreen extends StatefulWidget {
  const PartnerSkillSelectionScreen({super.key});

  @override
  State<PartnerSkillSelectionScreen> createState() =>
      _PartnerSkillSelectionScreenState();
}

class _PartnerSkillSelectionScreenState
    extends State<PartnerSkillSelectionScreen> {
  var selectedSkills = [];
  var skills = [
    'Electrical installation',
    'Repair & Maintenance',
    'Safety Inspections',
    'Decor & Painting'
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const ArrowLeftAppbar(),
        bottomNavigationBar: Container(
          padding: KPadding.symmetric(15, 25),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomizedButton(
                onTap: () {
                  Get.to(() => const PartnerSelectedWorkScreen(),
                      transition: Transition.native);
                },
                fontStyle: KText.r20w5White,
                borderRadius: 5,
                elevation: 0,
                backgroundColor: CustomColors.black,
                text: 'Next',
              ),
            ],
          ),
        ),
        body: Container(
          margin: KPadding.horizontal15,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              'Select your skills',
              style: KText.r34ComfortaaW7,
            ),
            Gap.height(10),
            const WorkCard(),
            Gap.height(20),
            Text(
              'Popular Skills',
              style: KText.r16Bold,
            ),
            Wrap(runSpacing: 0, spacing: 12, children: [
              ...skills.map((e) => InputChip(
                    label: Text(e.toString()),
                    side: selectedSkills.contains(e.toString())
                        ? BorderSide.none
                        : const BorderSide(width: 1),
                    deleteButtonTooltipMessage: 'Delete kar thoh dekh!',
                    shape:
                        RoundedRectangleBorder(borderRadius: kBorderRadius20),
                    labelStyle: KText.r12,
                    deleteIcon: selectedSkills.contains(e.toString())
                        ? const Icon(Icons.clear, size: 18)
                        : Container(),
                    onPressed: () {
                      if (!selectedSkills.contains(e.toString())) {
                        setState(() {
                          selectedSkills.add(e.toString());
                        });
                      }
                    },
                    backgroundColor: selectedSkills.contains(e.toString())
                        ? CustomColors.mobileNoGrey
                        : CustomColors.white,
                    onDeleted: () {
                      setState(() {
                        selectedSkills.remove(e.toString());
                      });
                    },
                  ))
            ])
          ]),
        ),
      ),
    );
  }
}
