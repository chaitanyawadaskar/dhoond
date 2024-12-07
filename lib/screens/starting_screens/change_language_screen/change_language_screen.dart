import 'package:animate_do/animate_do.dart';
import 'package:dhoond/screens/starting_screens/welcome_screen/welcome_screen.dart';
import 'package:dhoond/utilities/assets_paths/assets_paths.dart';
import 'package:dhoond/utilities/core/kpadding.dart';
import 'package:dhoond/utilities/core/ksizedbox.dart';
import 'package:dhoond/utilities/theme/ktext_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../components/arrow_left_appbar.dart';
import 'components/languages_gridview.dart';

class ChangeLanguageScreen extends StatefulWidget {
  const ChangeLanguageScreen({super.key});

  @override
  State<ChangeLanguageScreen> createState() => _ChangeLanguageScreenState();
}

class _ChangeLanguageScreenState extends State<ChangeLanguageScreen> {
  String language = '';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // appBar: const ArrowLeftAppbar(),
        body: Padding(
          padding: KPadding.horizontal15,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBoxHeight(
                height: 120,
              ),
              Text(
                'Choose your language',
                style: KText.r20Bold,
              ),
              const SizedBoxHeight(
                height: 50,
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
                    Future.delayed(const Duration(seconds: 1), () {
                      Get.to(() => const WelcomeScreen(),
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
      ),
    );
  }
}
