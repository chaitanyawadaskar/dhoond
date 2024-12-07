import 'package:animate_do/animate_do.dart';
import 'package:dhoond/components/arrow_left_appbar.dart';
import 'package:dhoond/data/extensions/extensions.dart';
import 'package:dhoond/screens/users_screens/user_dashboard_screen/user_dashboard_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../utilities/core/kpadding.dart';
import '../../../../utilities/core/ksizedbox.dart';
import '../../../../utilities/theme/ktext_theme.dart';
import '../../../starting_screens/change_language_screen/components/languages_gridview.dart';
import '../../../starting_screens/welcome_screen/welcome_screen.dart';

class UserDrawerChangeLanguageScreen extends StatefulWidget {
  const UserDrawerChangeLanguageScreen({super.key});

  @override
  State<UserDrawerChangeLanguageScreen> createState() =>
      _UserDrawerChangeLanguageScreenState();
}

class _UserDrawerChangeLanguageScreenState
    extends State<UserDrawerChangeLanguageScreen> {
  String language = '';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: KPadding.horizontal15,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 20,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const ArrowLeftAppbar(),
                Text(
                  'Choose your language',
                  style: KText.r25Bold,
                ).pOnly(top: 15),
              ],
            ),
            const SizedBoxHeight(
              height: 100,
            ),
            FadeInDown(
              from: 50,
              duration: const Duration(seconds: 1),
              child: LanguageGridView(
                selectedLang: language,
                onLanguagePress: (val) {
                  setState(() {
                    language = val;
                  });
                  Future.delayed(const Duration(seconds: 0), () {
                    Get.to(
                        () => const UserDashboardScreen(
                              currentIndex: 0,
                            ),
                        transition: Transition.rightToLeft);
                  });
                },
              ),
            ),
            const Spacer(
              flex: 1,
            ),
          ],
        ),
      ),
    ));
  }
}
