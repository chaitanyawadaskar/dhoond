import 'package:customize_button/customize_button.dart';
import 'package:dhoond/components/radio_button.dart';
import 'package:dhoond/components/shadow_container.dart';
import 'package:dhoond/screens/partners_screens/components/experience_feild.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../components/arrow_left_appbar.dart';
import '../../../utilities/core/kpadding.dart';
import '../../../utilities/core/kradius.dart';
import '../../../utilities/custom_colors/custom_colors.dart';
import '../../../utilities/gap/gap.dart';
import '../../../utilities/theme/ktext_theme.dart';
import '../../users_screens/user_dashboard_screen/inner_screens/user_home_screen/components/search_text_feild.dart';
import '../partner_skill_selection_screen/partner_skill_selection_screen.dart';

class PartnerPrimaryWorkSelectionScreen extends StatefulWidget {
  const PartnerPrimaryWorkSelectionScreen({super.key});

  @override
  State<PartnerPrimaryWorkSelectionScreen> createState() =>
      _PartnerPrimaryWorkSelectionScreenState();
}

class _PartnerPrimaryWorkSelectionScreenState
    extends State<PartnerPrimaryWorkSelectionScreen> {
  var work = [
    {
      'title': 'Construction & Building work',
      'list': [
        'Carpenter',
        'Plumber',
        'Electrician',
        'Welder',
        'Manson',
        'Tile Installer',
        'Bricklayer',
        'Painter',
        'Iron work',
        'Glass Installer'
      ]
    },
    {'title': 'Household works', 'list': []},
    {'title': 'Electrical trades', 'list': []},
    {'title': 'Mechanical trades', 'list': []},
    {'title': 'Event & Hospitality trades', 'list': []},
    {'title': 'Transportation & Logistics trades', 'list': []},
    {'title': 'Health care & Medical trades', 'list': []},
    {'title': 'Beauty & wellness trades', 'list': []},
    {'title': 'Skilled crafts', 'list': []},
    {'title': 'Landscaping & Gardening crafts', 'list': []},
    {'title': 'Repair Trades', 'list': []},
    {'title': 'Textile & Apparel trades', 'list': []},
    {'title': 'Energy & Utensils trades', 'list': []},
    {'title': 'Security & Protective trades', 'list': []},
    {'title': 'Sports & Fitness trades', 'list': []},
    {'title': 'Sanitary & Dispensary', 'list': []},
  ];
  bool isShow = false;
  int selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const ArrowLeftAppbar(),
        bottomNavigationBar: selectedIndex != -1
            ? ShadowContainer(
                padding: KPadding.symmetric(15, 25),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CustomizedButton(
                      onTap: () {
                        Get.to(() => const PartnerSkillSelectionScreen(),
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
              )
            : null,
        body: SingleChildScrollView(
          child: Container(
            margin: KPadding.horizontal15,
            child: Column(
              children: [
                // Gap.height(),
                Text(
                  'Select your primary work',
                  style: KText.r34ComfortaaW7,
                ),
                Gap.height(),
                Row(
                  children: [
                    Flexible(
                      flex: 6,
                      child: SearchTextFeild(
                        showMike: false,
                        hintStyle: KText.r14Grey,
                        showRightSearchIcon: false,
                        disableShadow: true,
                        border: kBorderAll,
                        borderRadius: kBorderRadius25,
                      ),
                    ),
                    Gap.width(),
                    const ExpericenceFeild()
                  ],
                ),
                Gap.height(25),
                ListView.separated(
                    padding: KPadding.only(left: 5),
                    itemBuilder: (context, index) => Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '${work[index]['title']}',
                                  style: KText.r20Bold,
                                ),
                                IconButton(
                                  visualDensity: const VisualDensity(
                                      horizontal: -4, vertical: -4),
                                  onPressed: () {
                                    setState(() {
                                      isShow = !isShow;
                                    });
                                  },
                                  icon: const Icon(
                                    Icons.keyboard_arrow_down,
                                    size: 25,
                                  ),
                                )
                              ],
                            ),
                            if (isShow)
                              ...(work[index]['list'] as List)
                                  .map((e) => Padding(
                                        padding: KPadding.only(
                                            left: 10, right: 25, top: 10),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              '$e',
                                              style: KText.r16,
                                            ),
                                            InkWell(
                                                onTap: () {
                                                  setState(() {
                                                    selectedIndex = (work[index]
                                                            ['list'] as List)
                                                        .indexOf(e);
                                                  });
                                                },
                                                child: RadioButton(
                                                  selected: selectedIndex ==
                                                      (work[index]['list']
                                                              as List)
                                                          .indexOf(e),
                                                ))
                                          ],
                                        ),
                                      ))
                          ],
                        ),
                    separatorBuilder: (context, index) => Gap.height(),
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: work.length),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
