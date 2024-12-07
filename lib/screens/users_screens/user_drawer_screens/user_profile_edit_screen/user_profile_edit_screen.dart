import 'package:customize_button/customize_button.dart';
import 'package:dhoond/components/shadow_container.dart';
import 'package:dhoond/components/check_online_container.dart';
import 'package:dhoond/screens/starting_screens/welcome_screen/welcome_screen.dart';
import 'package:dhoond/utilities/assets_paths/assets_paths.dart';
import 'package:dhoond/utilities/core/ksizedbox.dart';
import 'package:dhoond/utilities/custom_alert/custom_alert_box.dart';
import 'package:dhoond/utilities/custom_colors/custom_colors.dart';
import 'package:dhoond/utilities/custom_textfeild/custom_textfeild.dart';
import 'package:dhoond/utilities/gap/gap.dart';
import 'package:dhoond/utilities/theme/ktext_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:get/get.dart';

import '../../../../components/arrow_left_appbar.dart';
import '../../../../utilities/core/kpadding.dart';
import '../../../../utilities/core/kradius.dart';

class UserProfileEditScreen extends StatefulWidget {
  const UserProfileEditScreen({super.key});

  @override
  State<UserProfileEditScreen> createState() => _UserProfileEditScreenState();
}

class _UserProfileEditScreenState extends State<UserProfileEditScreen> {
  bool status = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBoxHeight(
                height: 20,
              ),
              Row(
                children: [
                  ArrowLeftAppbar(
                    padding: KPadding.horizontal15,
                  ),
                  Gap.width(90),
                  Text(
                    'Profile',
                    style: KText.r30ComfortaaW7,
                  ),
                ],
              ),
              const SizedBoxHeight(
                height: 50,
              ),
              CheckOnlineContainer(
                isOnline: true,
                bottom: -2,
                onlineWidget: Container(
                  child: Icon(
                    Icons.edit_outlined,
                    size: 35.h,
                  ),
                ),
                child: Container(
                  height: 128.w,
                  width: 128.w,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage(
                            ImagePath.carpenter,
                          ),
                          fit: BoxFit.cover)),
                ),
              ),
              const SizedBoxHeight(
                height: 25,
              ),
              Padding(
                padding: KPadding.horizontal(16),
                child: Column(
                  children: [
                    CustomTextFeild(
                      controller: TextEditingController(),
                      title: 'First Name',
                      hinttext: 'Prathamesh',
                      allTypeBorderColor: CustomColors.black,
                      suffixIcon: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text("Edit"),
                        ],
                      ),
                      hintStyle: KText.r14Grey,
                      titleStyle: KText.r14Bold,
                      onTextChange: (String val) {},
                    ),
                    Gap.height(10),
                    CustomTextFeild(
                      controller: TextEditingController(),
                      title: 'Last Name',
                      hinttext: 'Dolskar',
                      allTypeBorderColor: CustomColors.black,
                      suffixIcon: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text("Edit"),
                        ],
                      ),
                      hintStyle: KText.r14Grey,
                      titleStyle: KText.r14Bold,
                      onTextChange: (String val) {},
                    ),
                    Gap.height(10),
                    CustomTextFeild(
                      controller: TextEditingController(),
                      title: 'Phone Number',
                      hinttext: '9876543210',
                      allTypeBorderColor: CustomColors.black,
                      suffixIcon: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Change"),
                          ),
                        ],
                      ),
                      hintStyle: KText.r14Grey,
                      titleStyle: KText.r14Bold,
                      onTextChange: (String val) {},
                    ),
                    Gap.height(10),
                    CustomTextFeild(
                      controller: TextEditingController(),
                      title: 'Saved Address',
                      hinttext: 'Nagpur, Maharashtra',
                      allTypeBorderColor: CustomColors.black,
                      suffixIcon: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text("Edit"),
                        ],
                      ),
                      hintStyle: KText.r14Grey,
                      titleStyle: KText.r14Bold,
                      onTextChange: (String val) {},
                    ),
                    Gap.height(40),
                    // InkWell(
                    //   onTap: () {
                    //     Get.to(() => const WelcomeScreen());
                    //   },
                    //   child: Text(
                    //     'Logout',
                    //     style: KText.r15w5,
                    //   ),
                    // ),
                    Gap.height(),
                    Text(
                      'Delete your account',
                      style: KText.r15Grey,
                    ),
                    Gap.height(50),
                    CustomizedButton(
                      onTap: () {},
                      text: 'Save',
                      fontStyle: KText.r20w5White,
                      backgroundColor: CustomColors.black,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
