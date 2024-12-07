import 'dart:io';

import 'package:customize_button/customize_button.dart';
import 'package:dhoond/components/arrow_left_appbar.dart';
import 'package:dhoond/data/functions/common_function.dart';
import 'package:dhoond/data/services/validation_service/validation_service.dart';
import 'package:dhoond/screens/common_screens/permission_access_screen/permission_access_screen.dart';
import 'package:dhoond/utilities/constant/constant.dart';
import 'package:dhoond/utilities/core/kpadding.dart';
import 'package:dhoond/utilities/core/kradius.dart';
import 'package:dhoond/utilities/custom_image/custom_image.dart';
import 'package:dhoond/utilities/custom_textfeild/custom_textfeild.dart';
import 'package:dhoond/utilities/gap/gap.dart';
import 'package:dhoond/utilities/theme/ktext_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:permission_handler/permission_handler.dart';
import '../../../utilities/assets_paths/assets_paths.dart';
import '../../../utilities/custom_colors/custom_colors.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';

import '../sos_screen/components/image_select_alert.dart';

class UserRegisterScreen extends StatefulWidget {
  const UserRegisterScreen({super.key});

  @override
  State<UserRegisterScreen> createState() => _UserRegisterScreenState();
}

class _UserRegisterScreenState extends State<UserRegisterScreen> {
  final firstName = TextEditingController();
  final lastName = TextEditingController();
  final state = TextEditingController();
  final city = TextEditingController();
  final formKey = GlobalKey<FormState>();
  File? profile;
  static const List<String> states = <String>[
    'Maharashtra',
    'Karnataka',
    'Tamil Nadu',
    'Delhi',
    'Uttar Pradesh',
    'Gujarat',
    'Rajasthan',
    'West Bengal',
    'Punjab',
    'Haryana',
  ];
  static const List<String> cities = <String>[
    'Mumbai',
    'Bangalore',
    'Chennai',
    'Delhi',
    'Kolkata',
    'Hyderabad',
    'Ahmedabad',
    'Pune',
    'Jaipur',
    'Chandigarh',
  ];

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
                  CustomImage(
                    img: profile ?? ImagePath.profileAvatar,
                    shape: BoxShape.circle,
                    imageType:
                        profile == null ? ImageType.asset : ImageType.file,
                    height: 80.w,
                    width: 80.w,
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
                    controller: firstName,
                    onTextChange: (val) {
                      formKey.currentState!.validate();
                    },
                    title: 'First Name',
                    hinttext: 'Enter your first name',
                    hintStyle: KText.r14Grey,
                    titleStyle: KText.r14Bold,
                    validator: (value) => ValidationService.validateString(
                        value, 'Please enter your first name'),
                  ),
                  Gap.height(10),
                  CustomTextFeild(
                    controller: lastName,
                    onTextChange: (val) {
                      formKey.currentState!.validate();
                    },
                    title: 'Last Name',
                    hinttext: 'Enter your last name',
                    hintStyle: KText.r14Grey,
                    titleStyle: KText.r14Bold,
                    validator: (value) => ValidationService.validateString(
                        value, 'Please enter your last name'),
                  ),
                  Gap.height(10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: KPadding.only(bottom: 5),
                        child: Text(
                          'State',
                          style: KText.r14Bold,
                        ),
                      ),
                      TypeAheadFormField(
                        keepSuggestionsOnSuggestionSelected: false,
                        textFieldConfiguration: TextFieldConfiguration(
                          onChanged: (value) {
                            formKey.currentState!.validate();
                          },
                          controller: state,
                          scrollPadding: KPadding.only(bottom: 250),
                          style: KText.r16,
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: CustomColors.transparent,
                              contentPadding:
                                  REdgeInsets.only(left: 15, top: 10),
                              hintStyle: KText.r14Grey,
                              suffixIcon: const Icon(
                                Icons.keyboard_arrow_down,
                                size: 20,
                              ),
                              errorStyle: KText.r14Red,
                              border: OutlineInputBorder(
                                  borderRadius: kBorderRadius6,
                                  borderSide: const BorderSide(
                                      color: CustomColors.grey, width: 1)),
                              disabledBorder: OutlineInputBorder(
                                  borderRadius: kBorderRadius6,
                                  borderSide: const BorderSide(
                                      color: CustomColors.grey, width: 1)),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: kBorderRadius6,
                                  borderSide: const BorderSide(
                                      color: CustomColors.grey, width: 1)),
                              errorBorder: OutlineInputBorder(
                                  borderRadius: kBorderRadius6,
                                  borderSide: const BorderSide(
                                      color: CustomColors.darkRed, width: 1)),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: kBorderRadius6,
                                  borderSide: const BorderSide(
                                      color: CustomColors.grey, width: 1)),
                              focusedErrorBorder: OutlineInputBorder(
                                  borderRadius: kBorderRadius6,
                                  borderSide: const BorderSide(
                                      color: CustomColors.darkRed, width: 1)),
                              hintText: "Enter your state"),
                        ),
                        suggestionsCallback: (pattern) async {
                          var data = states.where((state) => state
                              .toLowerCase()
                              .contains(pattern.toLowerCase()));
                          return data;
                        },
                        validator: (value) => ValidationService.validateString(
                            value, 'Please select your state'),
                        itemBuilder: (context, suggestion) {
                          return ListTile(
                            dense: true,
                            tileColor: CustomColors.white,
                            title: Text(
                              suggestion,
                              style: KText.r14w5,
                            ),
                            visualDensity: VisualDensity.compact,
                          );
                        },
                        onSuggestionSelected: (suggestion) {
                          state.text = suggestion;
                          formKey.currentState!.validate();
                        },
                      ),
                    ],
                  ),
                  Gap.height(10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: KPadding.only(bottom: 5),
                        child: Text(
                          'City',
                          style: KText.r14Bold,
                        ),
                      ),
                      TypeAheadFormField(
                        keepSuggestionsOnSuggestionSelected: false,
                        textFieldConfiguration: TextFieldConfiguration(
                          onChanged: (value) {
                            formKey.currentState!.validate();
                          },
                          controller: city,
                          scrollPadding: KPadding.only(bottom: 250),
                          style: KText.r16,
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: CustomColors.transparent,
                              contentPadding:
                                  REdgeInsets.only(left: 15, top: 10),
                              hintStyle: KText.r14Grey,
                              suffixIcon: const Icon(
                                Icons.keyboard_arrow_down,
                                size: 20,
                              ),
                              errorStyle: KText.r14Red,
                              border: OutlineInputBorder(
                                  borderRadius: kBorderRadius6,
                                  borderSide: const BorderSide(
                                      color: CustomColors.grey, width: 1)),
                              disabledBorder: OutlineInputBorder(
                                  borderRadius: kBorderRadius6,
                                  borderSide: const BorderSide(
                                      color: CustomColors.grey, width: 1)),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: kBorderRadius6,
                                  borderSide: const BorderSide(
                                      color: CustomColors.grey, width: 1)),
                              errorBorder: OutlineInputBorder(
                                  borderRadius: kBorderRadius6,
                                  borderSide: const BorderSide(
                                      color: CustomColors.darkRed, width: 1)),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: kBorderRadius6,
                                  borderSide: const BorderSide(
                                      color: CustomColors.grey, width: 1)),
                              focusedErrorBorder: OutlineInputBorder(
                                  borderRadius: kBorderRadius6,
                                  borderSide: const BorderSide(
                                      color: CustomColors.darkRed, width: 1)),
                              hintText: "Enter your city"),
                        ),
                        suggestionsCallback: (pattern) async {
                          var data = cities.where((city) => city
                              .toLowerCase()
                              .contains(pattern.toLowerCase()));
                          return data;
                        },
                        itemBuilder: (context, suggestion) {
                          return ListTile(
                            dense: true,
                            tileColor: CustomColors.white,
                            title: Text(
                              suggestion,
                              style: KText.r14w5,
                            ),
                            visualDensity: VisualDensity.compact,
                          );
                        },
                        onSuggestionSelected: (suggestion) {
                          city.text = suggestion;
                          formKey.currentState!.validate();
                        },
                        validator: (value) => ValidationService.validateString(
                            value, 'Please select your city'),
                      ),
                    ],
                  ),
                  // const Spacer(),
                  Gap.height(50),
                  CustomizedButton(
                    onTap: () {
                      if (formKey.currentState!.validate()) {
                        Get.to(
                          () => const PermissionAccessScreen(
                            isForCamera: false,
                          ),
                        );
                      }

                      // Get.bottomSheet(const UserOTPBottomSheet(),
                      //     shape: RoundedRectangleBorder(
                      //       borderRadius: kBorderRadius12,
                      //     ),
                      //     backgroundColor: CustomColors.transparent);
                    },
                    text: 'Next',
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
