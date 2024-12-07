import 'package:customize_button/customize_button.dart';
import 'package:dhoond/components/shadow_container.dart';
import 'package:dhoond/screens/partners_screens/partner_bank_verification_screen/partner_bank_verification_screen.dart';
import 'package:dhoond/utilities/core/kradius.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../components/arrow_left_appbar.dart';
import '../../../utilities/core/kpadding.dart';
import '../../../utilities/custom_colors/custom_colors.dart';
import '../../../utilities/custom_textfeild/custom_textfeild.dart';
import '../../../utilities/gap/gap.dart';
import '../../../utilities/theme/ktext_theme.dart';
import '../partner_adhar_add_screen/partner_adhar_add_screen.dart';
import '../partner_bank_acc_screen/partner_bank_acc_screen.dart';
import '../partner_licence_add_screen/partner_licence_add_screen.dart';
import '../partner_pan_add_screen/partner_pan_add_screen.dart';
import '../partner_verification_forward_screen/partner_verification_forward_screen.dart';

class PartnerKycScreen extends StatefulWidget {
  const PartnerKycScreen({super.key});

  @override
  State<PartnerKycScreen> createState() => _PartnerKycScreenState();
}

class _PartnerKycScreenState extends State<PartnerKycScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const ArrowLeftAppbar(),
        body: SingleChildScrollView(
          child: Container(
            padding: KPadding.horizontal15,
            child: Column(
              children: [
                Gap.height(),
                Center(
                  child: Text(
                    'KYC Verification',
                    style: KText.r30ComfortaaW7,
                  ),
                ),
                Gap.height(25),
                ShadowContainer(
                    padding: KPadding.all15,
                    borderRadius: kBorderRadius15,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Gap.height(),
                        Text(
                          'ID Verification',
                          style: KText.r18Bold,
                        ),
                        Gap.height(),
                        Text(
                          'Select a documents type below to confirm your identity.',
                          style: KText.r12GreyW5,
                        ),
                        Gap.height(),
                        CustomTextFeild(
                          controller: TextEditingController(),
                          onTextChange: (val) {},
                          title: 'Aadhar card *',
                          readOnly: true,
                          hinttext: '--Aadhar card details--',
                          hintStyle: KText.r14Grey,
                          titleStyle: KText.r14Bold,
                          suffixIcon: Padding(
                            padding: KPadding.only(right: 15),
                            child: InkWell(
                              onTap: () {
                                Get.to(() => const PartnerAdharAddScreen(),
                                    transition: Transition.native);
                              },
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Add +',
                                    style: KText.r15Bold,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Gap.height(),
                        CustomTextFeild(
                          controller: TextEditingController(),
                          onTextChange: (val) {},
                          title: 'Pan card',
                          readOnly: true,
                          hinttext: '--PAN card details--',
                          hintStyle: KText.r14Grey,
                          titleStyle: KText.r14Bold,
                          suffixIcon: Padding(
                            padding: KPadding.only(right: 15),
                            child: InkWell(
                              onTap: () {
                                Get.to(() => const PartnerPanAddScreen(),
                                    transition: Transition.native);
                              },
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Add +',
                                    style: KText.r15Bold,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Gap.height(),
                        CustomTextFeild(
                          controller: TextEditingController(),
                          onTextChange: (val) {},
                          title: 'Driving license *',
                          readOnly: true,
                          hinttext: '--Driving license details--',
                          hintStyle: KText.r14Grey,
                          titleStyle: KText.r14Bold,
                          suffixIcon: Padding(
                            padding: KPadding.only(right: 15),
                            child: InkWell(
                              onTap: () {
                                Get.to(() => const PartnerLicenseAddScreen(),
                                    transition: Transition.native);
                              },
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Add +',
                                    style: KText.r15Bold,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Gap.height(),
                        CustomTextFeild(
                          controller: TextEditingController(),
                          onTextChange: (val) {},
                          title: 'Bank account details',
                          readOnly: true,
                          hinttext: '--Bank account details--',
                          hintStyle: KText.r14Grey,
                          titleStyle: KText.r14Bold,
                          suffixIcon: Padding(
                            padding: KPadding.only(right: 15),
                            child: InkWell(
                              onTap: () {
                                Get.to(() => const PartnerBankAccScreen(),
                                    transition: Transition.native);
                              },
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Add +',
                                    style: KText.r15Bold,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Gap.height(),
                        CustomTextFeild(
                          controller: TextEditingController(),
                          onTextChange: (val) {},
                          title: 'GST No. (If available)',
                          readOnly: true,
                          hinttext: '--Enter GST No.--',
                          hintStyle: KText.r14Grey,
                          titleStyle: KText.r14Bold,
                        ),
                        Gap.height(),
                      ],
                    )),
                Gap.height(50),
                CustomizedButton(
                  onTap: () {
                    Get.to(
                      () => const PartnerVerificationForwardScreen(),
                      transition: Transition.native,
                    );
                  },
                  fontStyle: KText.r20w5White,
                  pad: KPadding.symmetric(30, 5),
                  borderRadius: 5,
                  elevation: 0,
                  backgroundColor: CustomColors.black,
                  text: 'Submit',
                ),
                Gap.height(50),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
