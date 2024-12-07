import 'package:customize_button/customize_button.dart';
import 'package:dhoond/components/arrow_left_appbar.dart';
import 'package:dhoond/components/shadow_container.dart';
import 'package:dhoond/data/functions/common_function.dart';
import 'package:dhoond/utilities/assets_paths/assets_paths.dart';
import 'package:dhoond/utilities/core/kboxshadow.dart';
import 'package:dhoond/utilities/core/kpadding.dart';
import 'package:dhoond/utilities/core/kradius.dart';
import 'package:dhoond/utilities/theme/ktext_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:get/get.dart';
import '../../../utilities/custom_colors/custom_colors.dart';
import '../../../utilities/gap/gap.dart';
import 'components/image_select_alert.dart';

class SosScreen extends StatefulWidget {
  const SosScreen({super.key});

  @override
  State<SosScreen> createState() => _SosScreenState();
}

class _SosScreenState extends State<SosScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const ArrowLeftAppbar(),
        body: Padding(
          padding: KPadding.horizontal20,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Gap.height(50),
              Text(
                'Are you facing any problem?',
                style: KText.r24ComfortaaW7,
              ),
              Gap.height(10),
              Text(
                'just hold the button to call',
                style: KText.r14ComfortaaGrey,
              ),
              Gap.height(40),
              Image.asset(
                ImagePath.sos2,
                height: 154.w,
              ),
              Gap.height(60),
              Text(
                'Not sure what to do ?',
                style: KText.r20Bold,
              ),
              Gap.height(5),
              Text(
                'pick the subject to chat',
                style: KText.r14Grey,
              ),
              Gap.height(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ShadowContainer(
                      onTap: () {
                        Functions.launchURL('tel://100');
                      },
                      boxShadow: KBoxShadow.greyBorderType,
                      padding: KPadding.symmetric(15, 20),
                      borderRadius: kBorderRadius5,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Feather.phone,
                                size: 20.w,
                              ),
                              Gap.width(5),
                              Text(
                                'Call 100',
                                style: KText.r14Bold,
                              )
                            ],
                          ),
                          SizedBox(
                            width: 128.w,
                            child: Text(
                              'if you are facing any Emergency ',
                              style: KText.r12Grey,
                            ),
                          )
                        ],
                      )),
                  ShadowContainer(
                      onTap: () {
                        Functions.launchURL('tel://102');
                      },
                      boxShadow: KBoxShadow.greyBorderType,
                      padding: KPadding.symmetric(15, 20),
                      borderRadius: kBorderRadius5,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Fontisto.ambulance,
                                size: 20.w,
                              ),
                              Gap.width(15),
                              Text(
                                'Safety support',
                                style: KText.r14Bold,
                              )
                            ],
                          ),
                          SizedBox(
                            width: 128.w,
                            child: Text(
                              'if you are facing any physical Emergency',
                              style: KText.r12Grey,
                            ),
                          )
                        ],
                      )),
                ],
              ),
              Gap.height(25),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ShadowContainer(
                      boxShadow: KBoxShadow.greyBorderType,
                      padding: KPadding.symmetric(15, 20),
                      borderRadius: kBorderRadius5,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.mic_off_outlined,
                                size: 20.w,
                              ),
                              Gap.width(5),
                              Text(
                                'Record audio',
                                style: KText.r14Bold,
                              )
                            ],
                          ),
                          SizedBox(
                            width: 128.w,
                            child: Text(
                              'Send recorded \n audio',
                              style: KText.r12Grey,
                            ),
                          )
                        ],
                      )),
                  ShadowContainer(
                      onTap: () {
                        Get.dialog(ImageSelectAlert(
                          onCameraGalleryTap: (file) {},
                        ));
                      },
                      boxShadow: KBoxShadow.greyBorderType,
                      padding: KPadding.symmetric(15, 20),
                      borderRadius: kBorderRadius5,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(
                                AntDesign.picture,
                                size: 20.w,
                              ),
                              Gap.width(5),
                              Text(
                                'Send a picture',
                                style: KText.r14Bold,
                              )
                            ],
                          ),
                          SizedBox(
                            width: 128.w,
                            child: Text(
                              'Send a picture to dhoond team',
                              style: KText.r12Grey,
                            ),
                          )
                        ],
                      )),
                ],
              ),
              Gap.height(20),
              CustomizedButton(
                onTap: () {},
                fontStyle: KText.r14BoldWhite,
                pad: KPadding.symmetric(35, 10),
                borderRadius: 5,
                backgroundColor: CustomColors.black,
                widget: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.headphones_outlined,
                      color: CustomColors.white,
                      size: 25.w,
                    ),
                    Gap.width(),
                    Text(
                      'Customer support',
                      style: KText.r14WhiteBold,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
