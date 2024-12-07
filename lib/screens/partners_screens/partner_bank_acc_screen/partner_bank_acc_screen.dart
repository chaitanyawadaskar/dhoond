import 'package:customize_button/customize_button.dart';
import 'package:dhoond/components/shadow_container.dart';
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
import '../partner_licence_add_screen/partner_licence_add_screen.dart';
import '../partner_pan_add_screen/partner_pan_add_screen.dart';
import 'components/account_dropdown.dart';

class PartnerBankAccScreen extends StatefulWidget {
  const PartnerBankAccScreen({super.key});

  @override
  State<PartnerBankAccScreen> createState() => _PartnerBankAccScreenState();
}

class _PartnerBankAccScreenState extends State<PartnerBankAccScreen> {
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
                    'Bank Account Deatils',
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
                          'Please enter your bank account details which you are going to make payment for investment.',
                          style: KText.r12Grey,
                        ),
                        Gap.height(),
                        CustomTextFeild(
                          controller: TextEditingController(),
                          onTextChange: (val) {},
                          title: 'Account Number',
                          readOnly: true,
                          hinttext: '--Enter Account Number--',
                          hintStyle: KText.r14Grey,
                          titleStyle: KText.r14Bold,
                        ),
                        Gap.height(),
                        CustomTextFeild(
                          controller: TextEditingController(),
                          onTextChange: (val) {},
                          title: 'Confirm Account Number',
                          readOnly: true,
                          hinttext: '--Enter Account Number--',
                          hintStyle: KText.r14Grey,
                          titleStyle: KText.r14Bold,
                        ),
                        Gap.height(),
                        CustomTextFeild(
                          controller: TextEditingController(),
                          onTextChange: (val) {},
                          title: 'Bank Name',
                          readOnly: true,
                          hinttext: '--Enter Bank Name--',
                          hintStyle: KText.r14Grey,
                          titleStyle: KText.r14Bold,
                        ),
                        Gap.height(),
                        CustomTextFeild(
                          controller: TextEditingController(),
                          onTextChange: (val) {},
                          title: 'IFSC Code',
                          readOnly: true,
                          hinttext: '--Enter IFSC Code--',
                          hintStyle: KText.r14Grey,
                          titleStyle: KText.r14Bold,
                        ),
                        Gap.height(),
                        const AccountDropdown(),
                        Gap.height(),
                      ],
                    )),
                Gap.height(50),
                CustomizedButton(
                  onTap: () {
                    Get.back();
                  },
                  fontStyle: KText.r20w5White,
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
