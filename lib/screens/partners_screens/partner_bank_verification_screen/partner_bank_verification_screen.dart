import 'package:customize_button/customize_button.dart';
import 'package:dhoond/components/arrow_left_appbar.dart';
import 'package:dhoond/utilities/core/kpadding.dart';
import 'package:dhoond/utilities/gap/gap.dart';
import 'package:dhoond/utilities/theme/ktext_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utilities/custom_colors/custom_colors.dart';
import '../../../utilities/custom_textfeild/custom_textfeild.dart';
import '../partner_verification_forward_screen/partner_verification_forward_screen.dart';
import 'components/account_type_dropdown.dart';

class PartnerBankVerificationScreen extends StatefulWidget {
  const PartnerBankVerificationScreen({super.key});

  @override
  State<PartnerBankVerificationScreen> createState() =>
      _PartnerBankVerificationScreenState();
}

class _PartnerBankVerificationScreenState
    extends State<PartnerBankVerificationScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const ArrowLeftAppbar(),
        body: SingleChildScrollView(
          child: Padding(
            padding: KPadding.horizontal15,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Gap.height(70),
                Text(
                  'Bank Verification',
                  style: KText.r30ComfortaaW7,
                ),
                Gap.height(50),
                CustomTextFeild(
                  controller: TextEditingController(),
                  onTextChange: (val) {},
                  label: 'Bank Name',
                  hinttext: 'Enter your bank name',
                  hintStyle: KText.r14Grey,
                ),
                Gap.height(10),
                CustomTextFeild(
                  controller: TextEditingController(),
                  onTextChange: (val) {},
                  label: 'Account Holder Name',
                  hinttext: 'Enter account holder name',
                  hintStyle: KText.r14Grey,
                ),
                Gap.height(10),
                CustomTextFeild(
                  controller: TextEditingController(),
                  onTextChange: (val) {},
                  label: 'Account Number',
                  hinttext: 'Enter account number',
                  hintStyle: KText.r14Grey,
                ),
                Gap.height(10),
                CustomTextFeild(
                  controller: TextEditingController(),
                  onTextChange: (val) {},
                  label: 'Re-Enter Account Number',
                  hinttext: 'Enter  account number',
                  hintStyle: KText.r14Grey,
                ),
                Gap.height(10),
                CustomTextFeild(
                  controller: TextEditingController(),
                  onTextChange: (val) {},
                  label: 'IFSC Code',
                  hinttext: 'Enter IFSC number',
                  hintStyle: KText.r14Grey,
                ),
                Gap.height(10),
                const AccountTypeDropdown(),
                Gap.height(120),
                CustomizedButton(
                  onTap: () {
                    Get.to(
                      () => const PartnerVerificationForwardScreen(),
                      transition: Transition.native,
                    );
                  },
                  text: 'Submit',
                  fontStyle: KText.r15w5White,
                  backgroundColor: CustomColors.black,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
