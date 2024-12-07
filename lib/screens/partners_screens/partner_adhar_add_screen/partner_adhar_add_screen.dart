import 'dart:io';

import 'package:customize_button/customize_button.dart';
import 'package:dhoond/components/shadow_container.dart';
import 'package:dhoond/utilities/core/kboxshadow.dart';
import 'package:dhoond/utilities/core/kradius.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import '../../../components/arrow_left_appbar.dart';
import '../../../data/functions/common_function.dart';
import '../../../utilities/core/kpadding.dart';
import '../../../utilities/custom_colors/custom_colors.dart';
import '../../../utilities/custom_textfeild/custom_textfeild.dart';
import '../../../utilities/gap/gap.dart';
import '../../../utilities/theme/ktext_theme.dart';
import '../../users_screens/sos_screen/components/image_select_alert.dart';

class PartnerAdharAddScreen extends StatefulWidget {
  const PartnerAdharAddScreen({super.key});

  @override
  State<PartnerAdharAddScreen> createState() => _PartnerAdharAddScreenState();
}

class _PartnerAdharAddScreenState extends State<PartnerAdharAddScreen> {
  File? image;
  File? image2;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const ArrowLeftAppbar(),
        body: SingleChildScrollView(
          child: Container(
            padding: KPadding.horizontal16,
            child: Column(
              children: [
                Gap.height(),
                Center(
                  child: Text(
                    'Aadhaar Card',
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
                          'Adhaar Card',
                          style: KText.r18Bold,
                        ),
                        Gap.height(5),
                        Text(
                          'Please add your Aadhar card below for completing your first step of KYC.',
                          style: KText.r12GreyW5,
                        ),
                        Gap.height(),
                        CustomTextFeild(
                          controller: TextEditingController(),
                          onTextChange: (val) {},
                          title: 'Aadhaar Card Number',
                          readOnly: true,
                          hinttext: '--xxxx xxxx xxxx--',
                          hintStyle: KText.r14Grey,
                          titleStyle: KText.r14Grey,
                        ),
                        Gap.height(65),
                        Padding(
                          padding: KPadding.horizontal25,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ShadowContainer(
                                onTap: () async {
                                  image = await Functions.pickImage(
                                      ImageSource.camera);
                                  setState(() {});
                                },
                                backgroundColor: CustomColors.gradientGrey1,
                                borderRadius: kBorderRadius12,
                                height: 140.h,
                                width: 140.w,
                                child: image != null
                                    ? Center(
                                        child: Container(
                                          height: 80.w,
                                          width: 80.w,
                                          decoration: BoxDecoration(
                                              shape: BoxShape.rectangle,
                                              image: DecorationImage(
                                                  image: FileImage(
                                                    image!,
                                                  ),
                                                  fit: BoxFit.cover)),
                                        ),
                                      )
                                    : Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Feather.plus,
                                            size: 28.h,
                                          ),
                                          Text(
                                            'Front',
                                            style: KText.r15w5,
                                          )
                                        ],
                                      ),
                              ),
                              ShadowContainer(
                                onTap: () async {
                                  image2 = await Functions.pickImage(
                                      ImageSource.camera);
                                  setState(() {});
                                },
                                backgroundColor: CustomColors.gradientGrey1,
                                borderRadius: kBorderRadius12,
                                height: 140.h,
                                width: 140.w,
                                child: image2 != null
                                    ? Center(
                                        child: Container(
                                          height: 80.w,
                                          width: 80.w,
                                          decoration: BoxDecoration(
                                              shape: BoxShape.rectangle,
                                              image: DecorationImage(
                                                  image: FileImage(
                                                    image!,
                                                  ),
                                                  fit: BoxFit.cover)),
                                        ),
                                      )
                                    : Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Feather.plus,
                                            size: 28.h,
                                          ),
                                          Text(
                                            'Back',
                                            style: KText.r15w5,
                                          )
                                        ],
                                      ),
                              ),
                            ],
                          ),
                        ),
                        Gap.height(65),
                      ],
                    )),
                Gap.height(25),
                Text.rich(
                    textAlign: TextAlign.center,
                    TextSpan(
                      children: [
                        TextSpan(
                            text:
                                'If you are facing any difficulties, please get in touch\n with us on ',
                            style: KText.r12Grey),
                        TextSpan(text: 'What’sApp', style: KText.r12Bold)
                      ],
                    )),
                Gap.height(25),
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
