import 'package:customize_button/customize_button.dart';
import 'package:dhoond/components/shadow_container.dart';
import 'package:dhoond/data/functions/common_function.dart';
import 'package:dhoond/screens/starting_screens/change_language_screen/change_language_screen.dart';
import 'package:dhoond/screens/starting_screens/welcome_screen/welcome_screen.dart';
import 'package:dhoond/screens/users_screens/saved_profiles/saved_profiles.dart';
import 'package:dhoond/screens/users_screens/user_drawer_screens/user_change_language_screen/user_drawer_change_language_screen.dart';
import 'package:dhoond/screens/users_screens/user_drawer_screens/user_contact_us_screen/user_contact_us_screen.dart';
import 'package:dhoond/screens/users_screens/user_drawer_screens/user_profile_edit_screen/user_profile_edit_screen.dart';
import 'package:dhoond/utilities/assets_paths/assets_paths.dart';
import 'package:dhoond/utilities/core/kradius.dart';
import 'package:dhoond/utilities/core/ksizedbox.dart';
import 'package:dhoond/utilities/gap/gap.dart';
import 'package:dhoond/utilities/theme/ktext_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:get/get.dart';
import '../../../../utilities/custom_colors/custom_colors.dart';
import '../user_drawer_screens/user_help_support_screen/user_help_support_screen.dart';
import '../user_drawer_screens/user_privacy_policy_screen/user_privacy_policy_screen.dart';
import '../../../utilities/core/kpadding.dart';

class CustomUserDrawer extends StatefulWidget {
  const CustomUserDrawer({
    super.key,
  });

  @override
  State<CustomUserDrawer> createState() => _CustomUserDrawerState();
}

class _CustomUserDrawerState extends State<CustomUserDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 0,
      width: Get.width * 0.8,
      shape: const RoundedRectangleBorder(),
      backgroundColor: CustomColors.white,
      child: Padding(
        padding: KPadding.symmetric(30, 40),
        child: ListView(
          children: [
            Padding(
              padding: KPadding.vertical(30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Hello, Prathamesh',
                    style: KText.r22w5,
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(() => const UserProfileEditScreen());
                    },
                    child: Container(
                      height: 52.w,
                      width: 52.w,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: CustomColors.gradientGrey1),
                      child: Icon(
                        Ionicons.person,
                        size: 25.w,
                        color: CustomColors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Gap.height(20),
            ShadowContainer(
              disableShadow: true,
              padding: KPadding.all25,
              borderRadius: kBorderRadius8,
              backgroundColor: CustomColors.gradientGrey1,
              child: Column(
                children: [
                  Text(
                    'Invite your friends & get up to  20% off',
                    style: KText.r15w5,
                  ),
                  Gap.height(),
                  Text(
                    'Introduce your friends to the easiest way to find and hire professionals for your needs.',
                    style: KText.r12Grey,
                  )
                ],
              ),
            ),
            const SizedBoxHeight(
              height: 40,
            ),
            ListTile(
              onTap: () {
                Get.to(
                  () => const UserDrawerChangeLanguageScreen(),
                );
              },
              contentPadding: KPadding.only(bottom: 25),
              visualDensity: const VisualDensity(horizontal: -4, vertical: -4),
              leading: SvgPicture.asset(
                SvgPath.language,
                height: 40,
              ),
              minLeadingWidth: 50,
              title: Text(
                'Language',
                style: KText.r14w5,
              ),
            ),
            ListTile(
              onTap: () {
                Get.to(
                  () => const SavedProfilesScreen(),
                );
              },
              contentPadding: KPadding.only(bottom: 25),
              visualDensity: const VisualDensity(horizontal: -4, vertical: -4),
              leading: SvgPicture.asset(
                SvgPath.savedProfile,
                height: 40,
              ),
              minLeadingWidth: 50,
              title: Text(
                'Saved Profile',
                style: KText.r14w5,
              ),
            ),
            ListTile(
              onTap: () {
                Get.to(
                  () => const UserPrivacyPolicyScreen(),
                );
              },
              contentPadding: KPadding.only(bottom: 25),
              visualDensity: const VisualDensity(horizontal: -4, vertical: -4),
              leading: SvgPicture.asset(
                SvgPath.privacy,
                height: 40,
              ),
              minLeadingWidth: 50,
              title: Text(
                'Privacy Policy',
                style: KText.r14w5,
              ),
            ),
            ListTile(
              onTap: () {
                Get.to(
                  () => const UserContactUsScreen(),
                );
              },
              contentPadding: KPadding.only(bottom: 25),
              visualDensity: const VisualDensity(horizontal: -4, vertical: -4),
              leading: SvgPicture.asset(
                SvgPath.call,
                height: 40,
              ),
              minLeadingWidth: 50,
              title: Text(
                'Contact us',
                style: KText.r14w5,
              ),
            ),
            ListTile(
              onTap: () {
                Get.to(
                  () => const UserHelpSupportScreen(),
                );
              },
              contentPadding: KPadding.only(bottom: 25),
              visualDensity: const VisualDensity(horizontal: -4, vertical: -4),
              leading: SvgPicture.asset(
                SvgPath.help,
                height: 40,
              ),
              minLeadingWidth: 50,
              title: Text(
                'Help & Support',
                style: KText.r14w5,
              ),
            ),
            ListTile(
              onTap: () {
                Get.to(() => WelcomeScreen());
                // Get.to(
                //   () => const ChangeLanguageScreen(),
                // );
              },
              contentPadding: KPadding.only(bottom: 25),
              visualDensity: const VisualDensity(horizontal: -4, vertical: -4),
              leading: SvgPicture.asset(
                SvgPath.about,
                height: 40,
              ),
              minLeadingWidth: 50,
              title: Text(
                'Logout',
                style: KText.r14w5,
              ),
            ),
            Center(
              child: Text(
                'VERSION 0.0.1',
                style: KText.r11Grey,
              ),
            ),
            const SizedBoxHeight(
              height: 25,
            ),
          ],
        ),
      ),
    );
  }
}
