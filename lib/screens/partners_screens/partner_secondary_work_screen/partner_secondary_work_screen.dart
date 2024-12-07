import 'package:customize_button/customize_button.dart';
import 'package:dhoond/utilities/core/kradius.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../components/arrow_left_appbar.dart';
import '../../../components/radio_button.dart';
import '../../../utilities/core/kpadding.dart';
import '../../../utilities/custom_colors/custom_colors.dart';
import '../../../utilities/gap/gap.dart';
import '../../../utilities/theme/ktext_theme.dart';
import '../partner_secondary_work_skill_screen/partner_secondary_work_skill_screen.dart';
import '../partner_selected_work_screen/partner_selected_work_screen.dart';

class PartnerSecondaryWorkScreen extends StatefulWidget {
  const PartnerSecondaryWorkScreen({super.key});

  @override
  State<PartnerSecondaryWorkScreen> createState() =>
      _PartnerSecondaryWorkScreenState();
}

class _PartnerSecondaryWorkScreenState
    extends State<PartnerSecondaryWorkScreen> {
  bool isSelectedCat = true;
  String selectedCat = '';
  var cat = [
    'Line men',
    'HVAC Technician',
    'AC Technician',
    'Elevator Technician'
  ];
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
    return Scaffold(
      appBar: const ArrowLeftAppbar(),
      bottomNavigationBar: Container(
        padding: KPadding.symmetric(15, 25),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomizedButton(
              onTap: () {
                // Get.to(() => const PartnerSelectedWorkScreen(),
                //     transition: Transition.native);
                Get.to(() => const PartnerSelectedWorkSkillScreen(),
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
        padding: KPadding.horizontal15,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            'Are you a Pro?',
            style: KText.r30ComfortaaW7,
          ),
          Text(
            'Select your Secondary work',
            style: KText.r20Comfortaa,
          ),
          Gap.height(),
          Container(
            decoration: BoxDecoration(border: kBorderFaintGrey),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      isSelectedCat = true;
                    });
                  },
                  child: Container(
                    decoration:
                        BoxDecoration(border: isSelectedCat ? kBorderB2 : null),
                    child: Text(
                      'Selected Category',
                      style: isSelectedCat ? KText.r16Bold : KText.r16Grey,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      isSelectedCat = false;
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        border: !isSelectedCat ? kBorderB2 : null),
                    child: Text(
                      'All Category',
                      style: !isSelectedCat ? KText.r16Bold : KText.r16Grey,
                    ),
                  ),
                )
              ],
            ),
          ),
          Gap.height(),
          if (isSelectedCat)
            ...cat.map((e) => Padding(
                  padding:
                      KPadding.only(left: 10, right: 25, top: 15, bottom: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        e,
                        style: KText.r16,
                      ),
                      InkWell(
                          onTap: () {
                            setState(() {
                              selectedCat = e;
                            });
                          },
                          child: RadioButton(
                            selected: selectedCat == e,
                          ))
                    ],
                  ),
                ))
          else
            Expanded(
              child: ListView.separated(
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
                            ...(work[index]['list'] as List).map((e) => Padding(
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
                                              selectedIndex =
                                                  (work[index]['list'] as List)
                                                      .indexOf(e);
                                            });
                                          },
                                          child: RadioButton(
                                            selected: selectedIndex ==
                                                (work[index]['list'] as List)
                                                    .indexOf(e),
                                          ))
                                    ],
                                  ),
                                ))
                        ],
                      ),
                  separatorBuilder: (context, index) => Gap.height(),
                  shrinkWrap: true,
                  itemCount: work.length),
            ),
        ]),
      ),
    );
  }
}
