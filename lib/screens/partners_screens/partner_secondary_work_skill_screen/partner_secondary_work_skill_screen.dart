import 'package:customize_button/customize_button.dart';
import 'package:dhoond/components/arrow_left_appbar.dart';
import 'package:dhoond/components/shadow_container.dart';
import 'package:dhoond/screens/partners_screens/partner_register_screen/partner_register_screen.dart';
import 'package:dhoond/utilities/core/kpadding.dart';
import 'package:dhoond/utilities/core/kradius.dart';
import 'package:dhoond/utilities/custom_colors/custom_colors.dart';
import 'package:dhoond/utilities/gap/gap.dart';
import 'package:dhoond/utilities/theme/ktext_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../partner_secondary_work_screen/partner_secondary_work_screen.dart';
import '../partner_selected_work_screen/components/work_card.dart';
import '../partner_selected_work_screen/partner_selected_work_screen.dart';

class PartnerSelectedWorkSkillScreen extends StatefulWidget {
  const PartnerSelectedWorkSkillScreen({super.key});

  @override
  State<PartnerSelectedWorkSkillScreen> createState() =>
      _PartnerSelectedWorkSkillScreenState();
}

class _PartnerSelectedWorkSkillScreenState
    extends State<PartnerSelectedWorkSkillScreen> {
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
        appBar: ArrowLeftAppbar(
          suffix: InkWell(
            onTap: () {
              Get.to(() => const PartnerRegisterScreen(),
                  transition: Transition.native);
            },
            child: Text(
              'Skip',
              style: KText.r14UnderlineW5,
            ),
          ),
        ),
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
        body: Padding(
          padding: KPadding.horizontal15,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Gap.height(),
              Text(
                'Are you a Pro?',
                style: KText.r30ComfortaaW7,
              ),
              Text(
                'Select your Secondary works',
                style: KText.r20Comfortaa,
              ),
              Gap.height(40),
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
            ],
          ),
        ),
      ),
    );
  }
}
