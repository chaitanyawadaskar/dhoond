import 'package:customize_button/customize_button.dart';
import 'package:dhoond/screens/partners_screens/partner_bank_verification_screen/components/account_type_dropdown.dart';
import 'package:dhoond/utilities/core/kpadding.dart';
import 'package:dhoond/utilities/custom_textfeild/custom_textfeild.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../components/arrow_left_appbar.dart';
import '../../../utilities/custom_colors/custom_colors.dart';
import '../../../utilities/gap/gap.dart';
import '../../../utilities/theme/ktext_theme.dart';

class AddBankAccountScreen extends StatefulWidget {
  const AddBankAccountScreen({super.key});

  @override
  State<AddBankAccountScreen> createState() => _AddBankAccountScreenState();
}

class _AddBankAccountScreenState extends State<AddBankAccountScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: KPadding.all10,
          child: Column(
            children: [
              Gap.height(20),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const ArrowLeftAppbar(
                    padding: KPadding.none,
                  ),
                  Gap.width(),
                  Text(
                    'Add New Bank\n Account',
                    style: KText.r30Comfortaa,
                  )
                ],
              ),
              Gap.height(35),
              CustomTextFeild(
                controller: TextEditingController(),
                onTextChange: (val) {},
                label: 'Bank Name',
              ),
              Gap.height(),
              CustomTextFeild(
                controller: TextEditingController(),
                onTextChange: (val) {},
                label: 'Account Holder Name',
              ),
              Gap.height(),
              CustomTextFeild(
                controller: TextEditingController(),
                onTextChange: (val) {},
                label: 'Re-Enter Account Holder Name',
              ),
              Gap.height(),
              CustomTextFeild(
                controller: TextEditingController(),
                onTextChange: (val) {},
                label: 'IFSC Code',
              ),
              Gap.height(),
              const AccountTypeDropdown(),
              Gap.height(25),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CustomizedButton(
                    onTap: () {
                      // Get.to(() => const PartnerVerificationForwardScreen(),
                      //     transition: Transition.native,
                      //     );
                    },
                    text: 'Add Account',
                    fontStyle: KText.r15w5White,
                    borderRadius: 30,
                    backgroundColor: CustomColors.black,
                  ),
                  Gap.width(),
                  CustomizedButton(
                    onTap: () {
                      // Get.to(() => const PartnerVerificationForwardScreen(),
                      //     transition: Transition.native,
                      //     );
                    },
                    text: 'Close',
                    pad: KPadding.horizontal30,
                    elevation: 0,
                    fontStyle: KText.r15w5,
                    borderRadius: 30,
                    enableBorder: true,
                    backgroundColor: CustomColors.white,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
