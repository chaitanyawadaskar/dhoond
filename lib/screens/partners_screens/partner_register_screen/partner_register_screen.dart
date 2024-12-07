import 'dart:io';

import 'package:customize_button/customize_button.dart';
import 'package:dhoond/components/arrow_left_appbar.dart';
import 'package:dhoond/screens/partners_screens/partner_register_screen/components/gender_dropdown.dart';
import 'package:dhoond/utilities/core/kpadding.dart';
import 'package:dhoond/utilities/custom_textfeild/custom_textfeild.dart';
import 'package:dhoond/utilities/gap/gap.dart';
import 'package:dhoond/utilities/theme/ktext_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:get/get.dart';
import '../../../data/services/validation_service/validation_service.dart';
import '../../../utilities/assets_paths/assets_paths.dart';
import '../../../utilities/core/kradius.dart';
import '../../../utilities/custom_colors/custom_colors.dart';
import '../../common_screens/permission_access_screen/permission_access_screen.dart';
import '../../users_screens/sos_screen/components/image_select_alert.dart';
import '../partner_kyc_screen/partner_kyc_screen.dart';
import '../partner_primary_work_selection_screen/partner_primary_work_selection_screen.dart';
import '../partner_select_address_screen/partner_select_address_screen.dart';
import '../partner_selected_work_screen/partner_selected_work_screen.dart';

class PartnerRegisterScreen extends StatefulWidget {
  const PartnerRegisterScreen({super.key});

  @override
  State<PartnerRegisterScreen> createState() => _PartnerRegisterScreenState();
}

class _PartnerRegisterScreenState extends State<PartnerRegisterScreen> {
  final name = TextEditingController();
  final work = TextEditingController();
  final secondaryWork = TextEditingController();
  final city = TextEditingController();
  final age = TextEditingController();
  final gender = TextEditingController();
  final formKey = GlobalKey<FormState>();
  File? profile;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const ArrowLeftAppbar(),
        body: SingleChildScrollView(
          child: Container(
            margin: KPadding.horizontal15,
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  Gap.height(15),
                  Text(
                    'Complete your info',
                    style: KText.r34ComfortaaW7,
                  ),
                  Gap.height(30),
                  profile == null
                      ? Container(
                          height: 80.w,
                          width: 80.w,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: AssetImage(
                                    ImagePath.profileAvatar,
                                  ),
                                  fit: BoxFit.cover)),
                        )
                      : Container(
                          height: 80.w,
                          width: 80.w,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: FileImage(
                                    profile!,
                                  ),
                                  fit: BoxFit.cover)),
                        ),
                  Gap.height(10),
                  GestureDetector(
                    onTap: () async {
                      Get.dialog(ImageSelectAlert(
                        onCameraGalleryTap: (file) {
                          Get.back();
                          setState(() {
                            profile = file;
                          });
                        },
                      ));
                    },
                    child: Text(
                      'Upload Your Picture',
                      style: KText.r14Bold,
                    ),
                  ),
                  Gap.height(20),
                  CustomTextFeild(
                    controller: name,
                    onTextChange: (val) {
                      formKey.currentState!.validate();
                    },
                    title: 'What’s your name?',
                    hinttext: 'Enter your name',
                    hintStyle: KText.r14Grey,
                    titleStyle: KText.r14Bold,
                    // validator: (value) => ValidationService.validateString(
                    //     value, 'Please enter your name'),
                  ),
                  Gap.height(10),
                  CustomTextFeild(
                    onTap: () {
                      Get.to(
                        () => const PartnerPrimaryWorkSelectionScreen(),
                      );
                    },
                    readOnly: true,
                    controller: work,
                    onTextChange: (val) {
                      formKey.currentState!.validate();
                    },
                    title: 'What work do you do?',
                    hinttext: '--Enter work--',
                    hintStyle: KText.r14Grey,
                    titleStyle: KText.r14Bold,
                    // validator: (value) => ValidationService.validateString(
                    //     value, 'Please enter your work'),
                  ),
                  Gap.height(10),
                  CustomTextFeild(
                    onTap: () {
                      Get.to(
                        () => const PartnerSelectedWorkScreen(),
                      );
                    },
                    readOnly: true,
                    controller: secondaryWork,
                    onTextChange: (val) {
                      formKey.currentState!.validate();
                    },
                    title: 'Your Secondary work',
                    hinttext: '--Enter work--',
                    hintStyle: KText.r14Grey,
                    titleStyle: KText.r14Bold,
                    // validator: (value) => ValidationService.validateString(
                    //     value, 'Please enter your seconday work'),
                  ),
                  Gap.height(10),
                  CustomTextFeild(
                    onTap: () {
                      Get.to(
                        () => const PartnerSelectAddressScreen(),
                      );
                    },
                    readOnly: true,
                    controller: city,
                    onTextChange: (val) {
                      formKey.currentState!.validate();
                    },
                    title: 'Where do you live?',
                    hinttext: '--Enter city--',
                    hintStyle: KText.r14Grey,
                    titleStyle: KText.r14Bold,
                    // validator: (value) => ValidationService.validateString(
                    //     value, 'Please enter your city'),
                  ),
                  Gap.height(10),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Flexible(
                        flex: 4,
                        child: CustomTextFeild(
                          controller: age,
                          textinputtype: TextInputType.number,
                          length: 2,
                          onTextChange: (val) {
                            formKey.currentState!.validate();
                          },
                          title: 'Age',
                          hinttext: '0',
                          suffix: Container(
                            width: 80,
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Years old',
                              style: KText.r14,
                            ),
                          ),
                          hintStyle: KText.r14Grey,
                          titleStyle: KText.r14Bold,
                          // validator: (value) =>
                          //     ValidationService.validateString(
                          //         value, 'Please enter your age'),
                        ),
                      ),
                      Gap.width(20),
                      GederDropdown(controller: gender)
                    ],
                  ),
                  Gap.height(50),
                  CustomizedButton(
                    onTap: () {
                      if (formKey.currentState!.validate()) {
                        Get.to(
                          () => const PartnerKycScreen(),
                        );
                      }

                      // Get.bottomSheet(const UserOTPBottomSheet(),
                      //     shape: RoundedRectangleBorder(
                      //       borderRadius: kBorderRadius12,
                      //     ),
                      //     backgroundColor: CustomColors.transparent);
                    },
                    text: 'Continue',
                    fontStyle: KText.r20w5White,
                    backgroundColor: CustomColors.black,
                  ),
                  Gap.height(25),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
