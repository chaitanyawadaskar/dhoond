import 'package:customize_button/customize_button.dart';
import 'package:dhoond/components/arrow_left_appbar.dart';
import 'package:dhoond/components/shadow_container.dart';
import 'package:dhoond/screens/partners_screens/partner_login_screen/partner_login_screen.dart';
import 'package:dhoond/screens/users_screens/user_dashboard_screen/user_dashboard_screen.dart';
import 'package:dhoond/screens/users_screens/user_register_screen/user_register_screen.dart';
import 'package:dhoond/utilities/assets_paths/assets_paths.dart';
import 'package:dhoond/utilities/core/kpadding.dart';
import 'package:dhoond/utilities/core/kradius.dart';
import 'package:dhoond/utilities/custom_colors/custom_colors.dart';
import 'package:dhoond/utilities/gap/gap.dart';
import 'package:dhoond/utilities/theme/ktext_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../common_screens/dhoondh_loading_screen/dhoondh_loading_screen.dart';
import '../../users_screens/user_login_screen/user_login_screen.dart';

class PartnerAuthScreen extends StatefulWidget {
  const PartnerAuthScreen({super.key});

  @override
  State<PartnerAuthScreen> createState() => _PartnerAuthScreenState();
}

class _PartnerAuthScreenState extends State<PartnerAuthScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // appBar: const ArrowLeftAppbar(),
        body: Padding(
          padding: KPadding.horizontal15,
          child: Column(
            children: [
              const Spacer(
                flex: 2,
              ),
              Image.asset(
                ImagePath.dhoond,
                height: 45.h,
              ),
              Padding(
                padding: KPadding.only(top: 20, bottom: 8),
                child: Text(
                  'Connecting you with local customers effortlessly.',
                  style: KText.r14w5,
                  textAlign: TextAlign.center,
                ),
              ),
              Gap.height(25),
              CustomizedButton(
                onTap: () {
                  Get.to(
                    () => const PartnerLoginScreen(
                      isRegister: true,
                    ),
                    transition: Transition.native,
                  );
                },
                text: 'Create a new account',
                pad: KPadding.vertical5,
                fontStyle: KText.r16w5White,
                backgroundColor: CustomColors.black,
              ),
              Gap.height(20),
              CustomizedButton(
                onTap: () {
                  Get.to(
                    () => const PartnerLoginScreen(),
                    transition: Transition.native,
                  );
                },
                text: 'Login',
                pad: KPadding.vertical5,
                elevation: 0,
                fontStyle: KText.r16Bold,
                backgroundColor: CustomColors.white,
                enableBorder: true,
              ),
              TextButton(
                onPressed: () {
                  Get.to(
                    () => const DhoondhLoadingScreen(
                      isUser: false,
                    ),
                  );
                },
                child: Text(
                  'Skip this step',
                  style: KText.r14UnderlineW4,
                ),
              ),
              Gap.height(),
              ShadowContainer(
                  borderRadius: kBorderRadius35,
                  disableShadow: false,
                  border: kBorderAll,
                  padding:
                      KPadding.only(left: 10, top: 8, bottom: 8, right: 10),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset(
                        IconPath.whatsup,
                        height: 20,
                      ),
                      Gap.width(10),
                      Text(
                        'Sign In with WhatsApp',
                        style: KText.r14Bold,
                      )
                    ],
                  )),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
