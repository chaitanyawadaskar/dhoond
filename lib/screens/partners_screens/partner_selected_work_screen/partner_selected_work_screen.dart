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
import 'components/work_card.dart';

class PartnerSelectedWorkScreen extends StatefulWidget {
  const PartnerSelectedWorkScreen({super.key});

  @override
  State<PartnerSelectedWorkScreen> createState() =>
      _PartnerSelectedWorkScreenState();
}

class _PartnerSelectedWorkScreenState extends State<PartnerSelectedWorkScreen> {
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
              Flexible(
                  child: ListView.separated(
                      padding: KPadding.vertical10,
                      itemBuilder: (context, index) => const WorkCard(),
                      separatorBuilder: (context, index) => Gap.height(),
                      itemCount: 1)),
              ShadowContainer(
                  onTap: () {
                    Get.to(() => const PartnerSecondaryWorkScreen(),
                        transition: Transition.native);
                  },
                  backgroundColor: CustomColors.black,
                  borderRadius: kBorderRadius30,
                  padding: KPadding.all15,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Add Work',
                        style: KText.r12White,
                      ),
                      Gap.width(5),
                      Icon(
                        Icons.add,
                        size: 20.h,
                        color: CustomColors.white,
                      )
                    ],
                  )),
              Gap.height(40),
            ],
          ),
        ),
      ),
    );
  }
}
