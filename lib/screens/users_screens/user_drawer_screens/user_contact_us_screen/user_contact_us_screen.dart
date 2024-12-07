import 'package:customize_button/customize_button.dart';
import 'package:dhoond/components/shadow_container.dart';
import 'package:dhoond/components/check_online_container.dart';
import 'package:dhoond/utilities/assets_paths/assets_paths.dart';
import 'package:dhoond/utilities/core/ksizedbox.dart';
import 'package:dhoond/utilities/custom_alert/custom_alert_box.dart';
import 'package:dhoond/utilities/custom_colors/custom_colors.dart';
import 'package:dhoond/utilities/custom_textfeild/custom_textfeild.dart';
import 'package:dhoond/utilities/theme/ktext_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../components/arrow_left_appbar.dart';
import '../../../../utilities/core/kpadding.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class UserContactUsScreen extends StatefulWidget {
  const UserContactUsScreen({super.key});

  @override
  State<UserContactUsScreen> createState() => _UserContactUsScreenState();
}

class _UserContactUsScreenState extends State<UserContactUsScreen> {
  bool isCheck = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const ArrowLeftAppbar(),
        body: Padding(
          padding: KPadding.horizontal(46),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBoxHeight(
                height: 37,
              ),
              Image.asset(
                ImagePath.dhoond,
                height: 37.h,
              ),
              const SizedBoxHeight(
                height: 37,
              ),
              Text(
                'Contact Us',
                style: KText.r30Comfortaa,
              ),
              const SizedBoxHeight(
                height: 10,
              ),
              Text(
                'Lets get in touch',
                style: KText.r20Comfortaa,
              ),
              const SizedBoxHeight(
                height: 27,
              ),
              CustomTextFeild(
                controller: TextEditingController(),
                onTextChange: (val) {},
                border: const UnderlineInputBorder(),
                hintStyle: KText.r20Comfortaa,
                hinttext: 'Email',
              ),
              const SizedBoxHeight(),
              CustomTextFeild(
                controller: TextEditingController(),
                onTextChange: (val) {},
                border: const UnderlineInputBorder(),
                hintStyle: KText.r20Comfortaa,
                hinttext: 'Name',
              ),
              const SizedBoxHeight(),
              CustomTextFeild(
                controller: TextEditingController(),
                onTextChange: (val) {},
                border: const UnderlineInputBorder(),
                hintStyle: KText.r20Comfortaa,
                hinttext: 'Content',
                maxLines: 5,
              ),
              const SizedBoxHeight(),
              Row(
                children: [
                  Checkbox.adaptive(
                    value: isCheck,
                    activeColor: CustomColors.black,
                    visualDensity:
                        const VisualDensity(horizontal: -4, vertical: -4),
                    onChanged: (value) {
                      setState(() => isCheck = value!);
                    },
                  ),
                  const SizedBoxWidth(
                    width: 5,
                  ),
                  Text(
                    'I would like to receive the newsletter.',
                    style: KText.r12Comfortaa,
                  )
                ],
              ),
              const SizedBoxHeight(
                height: 27,
              ),
              CustomizedButton(
                onTap: () {},
                fontStyle: KText.r14BoldWhite,
                pad: KPadding.vertical5,
                borderRadius: 5,
                backgroundColor: CustomColors.black,
                text: 'Submit',
              ),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    FontAwesome5Brands.instagram_square,
                    size: 25.h,
                  ),
                  const SizedBoxWidth(
                    width: 5,
                  ),
                  Icon(
                    Ionicons.logo_twitter,
                    size: 25.h,
                  ),
                  const SizedBoxWidth(
                    width: 5,
                  ),
                  Icon(
                    FontAwesome5Brands.facebook,
                    size: 25.h,
                  ),
                  const SizedBoxWidth(
                    width: 5,
                  ),
                  Icon(
                    FontAwesome5Brands.youtube,
                    size: 25.h,
                  ),
                ],
              ),
              const SizedBoxHeight(),
            ],
          ),
        ),
      ),
    );
  }
}
