import 'package:customize_button/customize_button.dart';
import 'package:dhoond/components/arrow_left_appbar.dart';
import 'package:dhoond/components/radio_with_text.dart';
import 'package:dhoond/utilities/core/kpadding.dart';
import 'package:dhoond/utilities/gap/gap.dart';
import 'package:dhoond/utilities/theme/ktext_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:get/get.dart';

import '../../../utilities/core/kradius.dart';
import '../../../utilities/custom_colors/custom_colors.dart';
import '../partner_bank_verification_screen/partner_bank_verification_screen.dart';

class PartnerIdProofScreen extends StatefulWidget {
  const PartnerIdProofScreen({super.key});

  @override
  State<PartnerIdProofScreen> createState() => _PartnerIdProofScreenState();
}

class _PartnerIdProofScreenState extends State<PartnerIdProofScreen> {
  int documentId = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const ArrowLeftAppbar(),
        body: Padding(
          padding: KPadding.horizontal15,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Gap.height(70),
              Text(
                'ID Proof Verification',
                style: KText.r30ComfortaaW7,
              ),
              Gap.height(40),
              Text(
                'Select type of Document',
                style: KText.r14w5,
              ),
              Gap.height(10),
              RadioWithText(
                  selected: documentId == 0,
                  text: 'Adhar Card',
                  onTap: () {
                    setState(() {
                      documentId = 0;
                    });
                  }),
              Gap.height(10),
              RadioWithText(
                  selected: documentId == 1,
                  text: 'PAN card',
                  onTap: () {
                    setState(() {
                      documentId = 1;
                    });
                  }),
              Gap.height(10),
              RadioWithText(
                  selected: documentId == 2,
                  text: 'Driving license',
                  onTap: () {
                    setState(() {
                      documentId = 2;
                    });
                  }),
              Gap.height(),
              Text(
                'Upload Document',
                style: KText.r14w5,
              ),
              Gap.height(10),
              Container(
                padding: KPadding.all15,
                decoration: BoxDecoration(
                  border: kBorderAll,
                  borderRadius: kBorderRadius5,
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(
                          Feather.plus_circle,
                          size: 25.h,
                        ),
                        Gap.width(5),
                        Text(
                          'Upload',
                          style: KText.r16w5,
                        )
                      ],
                    ),
                    Gap.height(35),
                    Text(
                      'Upload image on both sides.',
                      style: KText.r16Grey,
                    )
                  ],
                ),
              ),
              Gap.height(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Feather.camera,
                    size: 25.h,
                  ),
                  Gap.width(5),
                  Text(
                    'Open camera',
                    style: KText.r16w5,
                  )
                ],
              ),
              const Spacer(),
              CustomizedButton(
                onTap: () {
                  Get.to(
                    () => const PartnerBankVerificationScreen(),
                    transition: Transition.native,
                  );
                },
                text: 'Submit',
                fontStyle: KText.r15w5White,
                backgroundColor: CustomColors.black,
              ),
              Gap.height(30),
            ],
          ),
        ),
      ),
    );
  }
}
