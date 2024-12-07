import 'package:customize_button/customize_button.dart';
import 'package:dhoond/components/shadow_container.dart';
import 'package:dhoond/components/check_online_container.dart';
import 'package:dhoond/screens/starting_screens/welcome_screen/welcome_screen.dart';
import 'package:dhoond/screens/users_screens/user_drawer_screens/user_contact_us_screen/user_contact_us_screen.dart';
import 'package:dhoond/utilities/assets_paths/assets_paths.dart';
import 'package:dhoond/utilities/core/kradius.dart';
import 'package:dhoond/utilities/core/ksizedbox.dart';
import 'package:dhoond/utilities/gap/gap.dart';
import 'package:dhoond/utilities/theme/ktext_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:get/get.dart';
import '../../../../utilities/custom_colors/custom_colors.dart';
import '../../../utilities/core/kpadding.dart';
import '../../users_screens/user_drawer_screens/user_help_support_screen/user_help_support_screen.dart';
import '../../users_screens/user_drawer_screens/user_privacy_policy_screen/user_privacy_policy_screen.dart';
import '../partner_my_team_screen/partner_my_team_screen.dart';
import '../partner_profile_edit_screen/partner_profile_edit_screen.dart';

class CustomPartnerDrawer extends StatefulWidget {
  const CustomPartnerDrawer({
    super.key,
  });

  @override
  State<CustomPartnerDrawer> createState() => _CustomPartnerDrawerState();
}

class _CustomPartnerDrawerState extends State<CustomPartnerDrawer> {
  bool status = false;
  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 0,
      width: Get.width * 0.75,
      shape: const RoundedRectangleBorder(),
      backgroundColor: CustomColors.white,
      child: Padding(
        padding: KPadding.symmetric(30, 20),
        child: ListView(
          children: [
            Gap.height(),
            const SizedBoxHeight(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 100.w,
                  width: 100.w,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage(
                          ImagePath.profileAvatar,
                        ),
                        fit: BoxFit.contain,
                      )),
                ),
              ],
            ),
            const SizedBoxHeight(
              height: 10,
            ),
            Text(
              'Chandan Kumar',
              style: KText.r32Comfortaa,
            ),
            const SizedBoxHeight(
              height: 30,
            ),
            ListTile(
              contentPadding: KPadding.none,
              onTap: () {
                Get.to(
                  () => const PartnerProfileEditScreen(),
                );
              },
              visualDensity: const VisualDensity(horizontal: -4, vertical: -4),
              leading: Text(
                'Profile',
                style: KText.r20Comfortaa,
              ),
            ),
            ListTile(
              contentPadding: KPadding.none,
              onTap: () {
                Get.to(
                  () => const PartnerMyTeamScreen(),
                );
              },
              visualDensity: const VisualDensity(horizontal: -4, vertical: -4),
              leading: Text(
                'My Team',
                style: KText.r20Comfortaa,
              ),
            ),
            ListTile(
              contentPadding: KPadding.none,
              onTap: () {},
              visualDensity: const VisualDensity(horizontal: -4, vertical: -4),
              trailing: SizedBox(
                height: 26.w,
                width: 50.w,
                child: FlutterSwitch(
                  value: status,
                  height: 26.w,
                  width: 50.w,
                  padding: 2,
                  toggleSize: 20,
                  toggleColor: CustomColors.black,
                  switchBorder: status ? null : kBorderAllGrey,
                  activeColor: CustomColors.black,
                  activeToggleColor: CustomColors.white,
                  inactiveColor: CustomColors.white,
                  onToggle: (val) {
                    setState(() {
                      status = val;
                    });
                  },
                ),
              ),
              leading: Text(
                'Shift',
                style: KText.r20Comfortaa,
              ),
            ),
            ListTile(
              contentPadding: KPadding.none,
              onTap: () {
                Get.to(
                  () => const UserPrivacyPolicyScreen(),
                );
              },
              visualDensity: const VisualDensity(horizontal: -4, vertical: -4),
              leading: Text(
                'Privacy Policy',
                style: KText.r20Comfortaa,
              ),
            ),
            ListTile(
              contentPadding: KPadding.none,
              onTap: () {
                Get.to(
                  () => const UserContactUsScreen(),
                );
              },
              visualDensity: const VisualDensity(horizontal: -4, vertical: -4),
              leading: Text(
                'Contact Us',
                style: KText.r20Comfortaa,
              ),
            ),
            ListTile(
              contentPadding: KPadding.none,
              onTap: () {
                Get.to(
                  () => const UserHelpSupportScreen(),
                );
              },
              visualDensity: const VisualDensity(horizontal: -4, vertical: -4),
              leading: Text(
                'Help & Support',
                style: KText.r20Comfortaa,
              ),
            ),
            ListTile(
              contentPadding: KPadding.none,
              visualDensity: const VisualDensity(horizontal: -4, vertical: -4),
              leading: Text(
                'VERSION 0.0.1',
                style: KText.r15ComfortaaGrey,
              ),
            ),
            const SizedBoxHeight(
              height: 25,
            ),
            Row(
              children: [
                CustomizedButton(
                  onTap: () {
                    Get.offAll(
                      () => const WelcomeScreen(),
                    );
                  },
                  fontStyle: KText.r14BoldWhite,
                  pad: KPadding.symmetric(35, 10),
                  borderRadius: 5,
                  backgroundColor: CustomColors.black,
                  text: 'Logout',
                ),
              ],
            ),
            const SizedBoxHeight(
              height: 25,
            ),
            Row(
              children: [
                Image.asset(
                  IconPath.googlePlay,
                  height: 20.h,
                ),
                const SizedBoxWidth(
                  width: 10,
                ),
                Text(
                  'Rate Us',
                  style: KText.r20Comfortaa,
                ),
                const SizedBoxWidth(),
                Image.asset(
                  IconPath.share,
                  height: 20.h,
                ),
                const SizedBoxWidth(
                  width: 10,
                ),
                Text(
                  'Share',
                  style: KText.r20Comfortaa,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
