import 'package:customize_button/customize_button.dart';
import 'package:dhoond/components/shadow_container.dart';
import 'package:dhoond/utilities/core/kboxshadow.dart';
import 'package:dhoond/utilities/core/kradius.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../components/arrow_left_appbar.dart';
import '../../../utilities/core/kpadding.dart';
import '../../../utilities/custom_colors/custom_colors.dart';
import '../../../utilities/custom_textfeild/custom_textfeild.dart';
import '../../../utilities/gap/gap.dart';
import '../../../utilities/theme/ktext_theme.dart';
import '../../users_screens/sos_screen/components/image_select_alert.dart';

class PartnerPanAddScreen extends StatefulWidget {
  const PartnerPanAddScreen({super.key});

  @override
  State<PartnerPanAddScreen> createState() => _PartnerPanAddScreenState();
}

class _PartnerPanAddScreenState extends State<PartnerPanAddScreen> {
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
                    'PAN Card',
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
                          'PAN Card',
                          style: KText.r18Bold,
                        ),
                        Gap.height(5),
                        Text(
                          'Please enter your Pan Card Number and Upload Your Pan Card Photo below.',
                          style: KText.r12Grey,
                        ),
                        Gap.height(),
                        CustomTextFeild(
                          controller: TextEditingController(),
                          onTextChange: (val) {},
                          title: 'PAN Card Number',
                          readOnly: true,
                          hinttext: '--xxxx xxxx xxxx--',
                          hintStyle: KText.r14Grey,
                          titleStyle: KText.r14Grey,
                        ),
                        Gap.height(65),
                        ShadowContainer(
                            boxShadow: KBoxShadow.greyBorderType,
                            margin: KPadding.horizontal40,
                            borderRadius: kBorderRadius15,
                            padding: KPadding.symmetric(56, 56),
                            child: Column(
                              children: [
                                Text(
                                  'Upload your PAN card photo  ',
                                  style: KText.r12,
                                  textAlign: TextAlign.center,
                                ),
                                Gap.height(),
                                CustomizedButton(
                                  onTap: () {
                                    Get.dialog(ImageSelectAlert(
                                      onCameraGalleryTap: (file) {
                                        Get.back();
                                        setState(() {
                                          // profile = file;
                                        });
                                      },
                                    ));
                                  },
                                  fontStyle: KText.r14BoldWhite,
                                  width: 100,
                                  pad: KPadding.symmetric(30, 5),
                                  borderRadius: 5,
                                  elevation: 0,
                                  backgroundColor: CustomColors.black,
                                  text: 'Add Photo',
                                ),
                              ],
                            )),
                        Gap.height(20),
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
