import 'dart:io';

import 'package:customize_button/customize_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import '../../../components/arrow_left_appbar.dart';
import '../../../components/shadow_container.dart';
import '../../../data/functions/common_function.dart';
import '../../../utilities/assets_paths/assets_paths.dart';
import '../../../utilities/core/kpadding.dart';
import '../../../utilities/core/kradius.dart';
import '../../../utilities/custom_colors/custom_colors.dart';
import '../../../utilities/custom_textfeild/custom_textfeild.dart';
import '../../../utilities/gap/gap.dart';
import '../../../utilities/theme/ktext_theme.dart';
import '../components/team_card.dart';

class PartnerAddMemberScreen extends StatefulWidget {
  const PartnerAddMemberScreen({super.key});

  @override
  State<PartnerAddMemberScreen> createState() => _PartnerAddMemberScreenState();
}

class _PartnerAddMemberScreenState extends State<PartnerAddMemberScreen> {
  File? image;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: ArrowLeftAppbar(
          suffix: Expanded(
            child: Row(
              children: [
                const Spacer(
                  flex: 2,
                ),
                Text(
                  'My Team',
                  style: KText.r30ComfortaaW7,
                ),
                const Spacer(
                  flex: 3,
                ),
              ],
            ),
          ),
          suffixAsLeading: true,
        ),
        body: Padding(
          padding: KPadding.horizontal20,
          child: Column(
            children: [
              Gap.height(30),
              Text(
                'Enter the team members UID who can collaborate with you and work with you.',
                style: KText.r14,
              ),
              Gap.height(35),
              image != null
                  ? Container(
                      height: 80.w,
                      width: 80.w,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: FileImage(
                                image!,
                              ),
                              fit: BoxFit.cover)),
                    )
                  : Container(
                      height: 80.w,
                      width: 80.w,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage(
                                ImagePath.profileAvatar,
                              ),
                              fit: BoxFit.cover)),
                    ),
              TextButton(
                onPressed: () async {
                  image = await Functions.pickImage(ImageSource.camera);
                  setState(() {});
                },
                style: const ButtonStyle(visualDensity: VisualDensity.compact),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.camera_alt_outlined,
                      size: 25.w,
                      color: CustomColors.black,
                    ),
                    Gap.width(5),
                    Text(
                      'Open Camera',
                      style: KText.r14w5,
                    )
                  ],
                ),
              ),
              // const Spacer(),
              Gap.height(100),
              CustomTextFeild(
                controller: TextEditingController(),
                onTextChange: (val) {},
                hinttext: 'Enter full name',
                hintStyle: KText.r14Grey,
              ),
              Gap.height(),
              CustomTextFeild(
                controller: TextEditingController(),
                onTextChange: (val) {},
                hinttext: 'UID',
                hintStyle: KText.r14Grey,
              ),
              Gap.height(25),
              CustomizedButton(
                onTap: () {},
                pad: KPadding.symmetric(10, 8),
                borderRadius: 5,
                backgroundColor: CustomColors.black,
                text: 'Done',
                fontStyle: KText.r14BoldWhite,
              ),
              Gap.height(50),
              ShadowContainer(
                  padding: KPadding.all10,
                  borderRadius: kBorderRadius10,
                  child: Text(
                    '''Please specify your hourly charges for your work and also include any team members who can collaborate with you. You can share 40% of your work revenue, as DHOOND does not provide extra income. Additionally, user participation depends on you and your team.\"''',
                    style: KText.r14w5,
                  )),
              Gap.height(25),
            ],
          ),
        ),
      ),
    );
  }
}
