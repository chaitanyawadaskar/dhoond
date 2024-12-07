import 'dart:io';

import 'package:customize_button/customize_button.dart';
import 'package:dhoond/components/shadow_container.dart';
import 'package:dhoond/components/check_online_container.dart';
import 'package:dhoond/utilities/assets_paths/assets_paths.dart';
import 'package:dhoond/utilities/custom_colors/custom_colors.dart';
import 'package:dhoond/utilities/custom_textfeild/custom_textfeild.dart';
import 'package:dhoond/utilities/gap/gap.dart';
import 'package:dhoond/utilities/theme/ktext_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../components/arrow_left_appbar.dart';
import '../../../../utilities/core/kpadding.dart';
import '../../../../utilities/core/kradius.dart';
import '../../../utilities/constant/constant.dart';
import '../../../utilities/custom_image/custom_image.dart';
import '../../users_screens/sos_screen/components/image_select_alert.dart';

class PartnerProfileEditScreen extends StatefulWidget {
  const PartnerProfileEditScreen({super.key});

  @override
  State<PartnerProfileEditScreen> createState() =>
      _PartnerProfileEditScreenState();
}

class _PartnerProfileEditScreenState extends State<PartnerProfileEditScreen> {
  bool status = false;
  File? profile;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const ArrowLeftAppbar(),
        body: SingleChildScrollView(
          child: Padding(
            padding: KPadding.horizontal20,
            child: Column(children: [
              Gap.height(),
              Container(
                padding: KPadding.horizontal(46),
                alignment: Alignment.center,
                child: Text(
                  'Edit Profile',
                  style: KText.r30Comfortaa,
                ),
              ),
              Gap.height(),
              CheckOnlineContainer(
                isOnline: true,
                onlineWidget: ShadowContainer(
                  onTap: () {
                    Get.dialog(ImageSelectAlert(
                      onCameraGalleryTap: (file) {
                        Get.back();
                        setState(() {
                          profile = file;
                        });
                      },
                    ));
                  },
                  padding: KPadding.all5,
                  child: Icon(
                    Icons.edit_outlined,
                    size: 25.h,
                  ),
                ),
                child: CustomImage(
                  img: profile ?? ImagePath.profileAvatar,
                  shape: BoxShape.circle,
                  imageType: profile == null ? ImageType.asset : ImageType.file,
                  height: 128.w,
                  width: 128.w,
                ),
              ),
              Gap.height(40),
              ShadowContainer(
                borderRadius: kBorderRadius10,
                padding: KPadding.only(left: 15, bottom: 15, right: 5),
                child: Column(
                  children: [
                    Gap.height(),
                    CustomTextFeild(
                      controller: TextEditingController(),
                      onTextChange: (val) {},
                      enableBorder: false,
                      style: KText.r14Comfortaa,
                      titleStyle: KText.r14Bold,
                      hintStyle: KText.r14ComfortaaGrey,
                      titlePadding: KPadding.none,
                      title: 'Work Details',
                      textFeildMargin: KPadding.only(left: 25),
                      suffixIcon: Icon(
                        Icons.edit_outlined,
                        size: 25.h,
                      ),
                      contentPadding: KPadding.none,
                      hinttext: 'Plumber',
                    ),
                    CustomTextFeild(
                      controller: TextEditingController(),
                      onTextChange: (val) {},
                      enableBorder: false,
                      style: KText.r14Comfortaa,
                      titleStyle: KText.r14Bold,
                      hintStyle: KText.r14ComfortaaGrey,
                      titlePadding: KPadding.none,
                      title: 'Full Name',
                      textFeildMargin: KPadding.only(left: 25),
                      suffixIcon: Icon(
                        Icons.edit_outlined,
                        size: 25.h,
                      ),
                      contentPadding: KPadding.none,
                      hinttext: 'Chandan Kumar',
                    ),
                    CustomTextFeild(
                      controller: TextEditingController(),
                      onTextChange: (val) {},
                      enableBorder: false,
                      style: KText.r14Comfortaa,
                      titleStyle: KText.r14Bold,
                      hintStyle: KText.r14ComfortaaGrey,
                      titlePadding: KPadding.none,
                      title: 'Team',
                      textFeildMargin: KPadding.only(left: 25),
                      suffixIcon: Icon(
                        Icons.edit_outlined,
                        size: 25.h,
                      ),
                      contentPadding: KPadding.none,
                      hinttext: '4 People',
                    ),
                    CustomTextFeild(
                      controller: TextEditingController(),
                      onTextChange: (val) {},
                      enableBorder: false,
                      style: KText.r14Comfortaa,
                      titleStyle: KText.r14Bold,
                      hintStyle: KText.r14ComfortaaGrey,
                      titlePadding: KPadding.none,
                      title: 'Experience',
                      textFeildMargin: KPadding.only(left: 25),
                      suffixIcon: Icon(
                        Icons.edit_outlined,
                        size: 25.h,
                      ),
                      contentPadding: KPadding.none,
                      hinttext: '2 Years',
                    ),
                    CustomTextFeild(
                      controller: TextEditingController(),
                      onTextChange: (val) {},
                      enableBorder: false,
                      style: KText.r14Comfortaa,
                      titleStyle: KText.r14Bold,
                      hintStyle: KText.r14ComfortaaGrey,
                      titlePadding: KPadding.none,
                      title: 'Age',
                      textFeildMargin: KPadding.only(left: 25),
                      suffixIcon: Icon(
                        Icons.edit_outlined,
                        size: 25.h,
                      ),
                      contentPadding: KPadding.none,
                      hinttext: '30 Years',
                    ),
                    CustomTextFeild(
                      controller: TextEditingController(),
                      onTextChange: (val) {},
                      enableBorder: false,
                      style: KText.r14Comfortaa,
                      titleStyle: KText.r14Bold,
                      hintStyle: KText.r14ComfortaaGrey,
                      titlePadding: KPadding.none,
                      title: 'Gender',
                      textFeildMargin: KPadding.only(left: 25),
                      suffixIcon: Icon(
                        Icons.edit_outlined,
                        size: 25.h,
                      ),
                      contentPadding: KPadding.none,
                      hinttext: 'Male',
                    ),
                    CustomTextFeild(
                      controller: TextEditingController(),
                      onTextChange: (val) {},
                      enableBorder: false,
                      style: KText.r14Comfortaa,
                      titleStyle: KText.r14Bold,
                      hintStyle: KText.r14ComfortaaGrey,
                      titlePadding: KPadding.none,
                      title: 'Skill',
                      textFeildMargin: KPadding.only(left: 25),
                      suffixIcon: Icon(
                        Icons.edit_outlined,
                        size: 25.h,
                      ),
                      contentPadding: KPadding.none,
                      hinttext: 'Plumbing',
                    ),
                    CustomTextFeild(
                      controller: TextEditingController(),
                      onTextChange: (val) {},
                      enableBorder: false,
                      style: KText.r14Comfortaa,
                      titleStyle: KText.r14Bold,
                      hintStyle: KText.r14ComfortaaGrey,
                      titlePadding: KPadding.none,
                      title: 'Charges',
                      textFeildMargin: KPadding.only(left: 25),
                      suffixIcon: Icon(
                        Icons.edit_outlined,
                        size: 25.h,
                      ),
                      contentPadding: KPadding.none,
                      hinttext: '299/Hrs',
                    ),
                    CustomTextFeild(
                      controller: TextEditingController(),
                      onTextChange: (val) {},
                      enableBorder: false,
                      style: KText.r14Comfortaa,
                      titleStyle: KText.r14Bold,
                      hintStyle: KText.r14ComfortaaGrey,
                      titlePadding: KPadding.none,
                      title: 'Recently Work',
                      textFeildMargin: KPadding.only(left: 25),
                      suffixIcon: Icon(
                        Icons.edit_outlined,
                        size: 25.h,
                      ),
                      contentPadding: KPadding.none,
                      hinttext: 'Amec Mobility Private Work',
                    ),
                    CustomTextFeild(
                      controller: TextEditingController(),
                      onTextChange: (val) {},
                      enableBorder: false,
                      style: KText.r14Comfortaa,
                      titleStyle: KText.r14Bold,
                      hintStyle: KText.r14ComfortaaGrey,
                      titlePadding: KPadding.none,
                      title: 'Shift',
                      textFeildMargin: KPadding.only(left: 25),
                      suffixIcon: Icon(
                        Icons.edit_outlined,
                        size: 25.h,
                      ),
                      contentPadding: KPadding.none,
                      hinttext: 'Day Shift',
                    ),
                    CustomTextFeild(
                      controller: TextEditingController(),
                      onTextChange: (val) {},
                      enableBorder: false,
                      style: KText.r14Comfortaa,
                      titleStyle: KText.r14Bold,
                      hintStyle: KText.r14ComfortaaGrey,
                      titlePadding: KPadding.none,
                      title: 'Bio',
                      maxLines: 5,
                      textFeildMargin: KPadding.only(left: 25),
                      suffixIcon: Icon(
                        Icons.edit_outlined,
                        size: 25.h,
                      ),
                      contentPadding: KPadding.none,
                      hinttext: 'Minimmun 20 Words',
                    ),
                  ],
                ),
              ),
              Gap.height(),
              CustomizedButton(
                onTap: () {},
                fontStyle: KText.r14BoldWhite,
                pad: KPadding.vertical5,
                borderRadius: 5,
                backgroundColor: CustomColors.black,
                text: 'Save',
              ),
              Gap.height(),
            ]),
          ),
        ),
      ),
    );
  }
}
