import 'package:customize_button/customize_button.dart';
import 'package:dhoond/components/shadow_container.dart';
import 'package:dhoond/screens/users_screens/user_dashboard_screen/inner_screens/user_home_screen/components/search_text_feild.dart';
import 'package:dhoond/screens/users_screens/user_filter_screen/section/customer_rating.dart';
import 'package:dhoond/utilities/core/kboxshadow.dart';
import 'package:dhoond/utilities/core/kpadding.dart';
import 'package:dhoond/utilities/core/kradius.dart';
import 'package:dhoond/utilities/core/ksizedbox.dart';
import 'package:dhoond/utilities/custom_colors/custom_colors.dart';
import 'package:flutter/material.dart';
import '../../../components/arrow_left_appbar.dart';
import '../../../utilities/theme/ktext_theme.dart';
import 'components/filter_bottom_bar.dart';
import 'section/availibility.dart';
import 'section/experience.dart';
import 'section/gender.dart';
import 'section/price_range.dart';
import 'section/prime_partner.dart';
import 'section/ranking.dart';
import 'section/working_shift.dart';

class UserFilterScreen extends StatefulWidget {
  const UserFilterScreen({
    super.key,
  });
  @override
  State<UserFilterScreen> createState() => _UserFilterScreenState();
}

class _UserFilterScreenState extends State<UserFilterScreen> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    var filterSection = [
      const CustomerRating(),
      const PrimePartner(),
      const PrimeRange(),
      const Availibility(),
      const Gender(),
      const Experience(),
      const Ranking(),
      const WorkingShift(),
    ];
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: const FilterBottomBar(),
        appBar: ArrowLeftAppbar(
          padding: KPadding.horizontal15,
        ),
        body: Column(
          children: [
            // const SizedBoxHeight(),
            // Padding(
            //   padding: KPadding.horizontal20,
            //   child: SearchTextFeild(
            //     hintStyle: KText.r13,
            //   ),
            // ),
            const SizedBoxHeight(),
            ShadowContainer(
                borderRadius: kBorderRadius15,
                boxShadow: KBoxShadow.onlyTop,
                child: const SizedBox(
                  height: 10,
                  width: double.infinity,
                )),
            Padding(
              padding: KPadding.all25,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Filter',
                    style: KText.r14Bold,
                  ),
                  Text(
                    'Close',
                    style: KText.r12,
                  )
                ],
              ),
            ),
            const SizedBoxHeight(),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                      flex: 1,
                      child: Column(
                        children: [
                          ListTile(
                            dense: true,
                            contentPadding: KPadding.all15,
                            tileColor: CustomColors.grey2.withOpacity(0.2),
                            selectedTileColor: CustomColors.white,
                            selected: selectedIndex == 0,
                            onTap: () {
                              setState(() {
                                selectedIndex = 0;
                              });
                            },
                            visualDensity: const VisualDensity(
                                horizontal: -4, vertical: -4),
                            leading: Text(
                              'Customer Rating',
                              style: KText.r12Bold,
                            ),
                          ),
                          ListTile(
                            dense: true,
                            contentPadding: KPadding.all15,
                            tileColor: CustomColors.grey2.withOpacity(0.2),
                            selectedTileColor: CustomColors.white,
                            selected: selectedIndex == 1,
                            onTap: () {
                              setState(() {
                                selectedIndex = 1;
                              });
                            },
                            visualDensity: const VisualDensity(
                                horizontal: -4, vertical: -4),
                            leading: Text(
                              'Prime Partner',
                              style: KText.r12Bold,
                            ),
                          ),
                          ListTile(
                            dense: true,
                            contentPadding: KPadding.all15,
                            tileColor: CustomColors.grey2.withOpacity(0.2),
                            selectedTileColor: CustomColors.white,
                            selected: selectedIndex == 2,
                            onTap: () {
                              setState(() {
                                selectedIndex = 2;
                              });
                            },
                            visualDensity: const VisualDensity(
                                horizontal: -4, vertical: -4),
                            leading: Text(
                              'Price Range',
                              style: KText.r12Bold,
                            ),
                          ),
                          ListTile(
                            dense: true,
                            contentPadding: KPadding.all15,
                            tileColor: CustomColors.grey2.withOpacity(0.2),
                            selectedTileColor: CustomColors.white,
                            selected: selectedIndex == 3,
                            onTap: () {
                              setState(() {
                                selectedIndex = 3;
                              });
                            },
                            visualDensity: const VisualDensity(
                                horizontal: -4, vertical: -4),
                            leading: Text(
                              'Availibility',
                              style: KText.r12Bold,
                            ),
                          ),
                          ListTile(
                            dense: true,
                            contentPadding: KPadding.all15,
                            tileColor: CustomColors.grey2.withOpacity(0.2),
                            selectedTileColor: CustomColors.white,
                            selected: selectedIndex == 4,
                            onTap: () {
                              setState(() {
                                selectedIndex = 4;
                              });
                            },
                            visualDensity: const VisualDensity(
                                horizontal: -4, vertical: -4),
                            leading: Text(
                              'Gender',
                              style: KText.r12Bold,
                            ),
                          ),
                          ListTile(
                            dense: true,
                            contentPadding: KPadding.all15,
                            tileColor: CustomColors.grey2.withOpacity(0.2),
                            selectedTileColor: CustomColors.white,
                            selected: selectedIndex == 5,
                            onTap: () {
                              setState(() {
                                selectedIndex = 5;
                              });
                            },
                            visualDensity: const VisualDensity(
                                horizontal: -4, vertical: -4),
                            leading: Text(
                              'Experience',
                              style: KText.r12Bold,
                            ),
                          ),
                          // ListTile(
                          //   dense: true,
                          //   contentPadding: KPadding.all15,
                          //   tileColor: CustomColors.grey2.withOpacity(0.2),
                          //   selectedTileColor: CustomColors.white,
                          //   selected: selectedIndex == 6,
                          //   onTap: () {
                          //     setState(() {
                          //       selectedIndex = 6;
                          //     });
                          //   },
                          //   visualDensity: const VisualDensity(
                          //       horizontal: -4, vertical: -4),
                          //   leading: Text(
                          //     'Ranking',
                          //     style: KText.r12Bold,
                          //   ),
                          // ),
                          ListTile(
                            dense: true,
                            contentPadding: KPadding.all15,
                            tileColor: CustomColors.grey2.withOpacity(0.2),
                            selectedTileColor: CustomColors.white,
                            selected: selectedIndex == 7,
                            onTap: () {
                              setState(() {
                                selectedIndex = 7;
                              });
                            },
                            visualDensity: const VisualDensity(
                                horizontal: -4, vertical: -4),
                            leading: Text(
                              'Working shifts',
                              style: KText.r12Bold,
                            ),
                          ),
                          Flexible(
                            child: Container(
                              color: CustomColors.grey2.withOpacity(0.2),
                            ),
                          )
                        ],
                      )),
                  Expanded(flex: 2, child: filterSection[selectedIndex])
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
