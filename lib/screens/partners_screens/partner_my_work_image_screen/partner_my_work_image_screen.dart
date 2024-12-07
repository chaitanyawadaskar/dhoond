import 'package:customize_button/customize_button.dart';
import 'package:dhoond/components/arrow_left_appbar.dart';
import 'package:dhoond/components/shadow_container.dart';
import 'package:dhoond/screens/partners_screens/partner_my_work_image_screen/components/partner_work_images.dart';
import 'package:dhoond/utilities/assets_paths/assets_paths.dart';
import 'package:dhoond/utilities/core/kpadding.dart';
import 'package:dhoond/utilities/gap/gap.dart';
import 'package:dhoond/utilities/theme/ktext_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:get/get.dart';

import '../../../utilities/core/kradius.dart';
import '../../../utilities/custom_colors/custom_colors.dart';
import '../../users_screens/sos_screen/components/image_select_alert.dart';
import '../../users_screens/user_partner_detail_screen/inner_screens/partner_work_image_screen/partner_work_image_screen.dart';

class PartnerMyWorkImageScreen extends StatefulWidget {
  const PartnerMyWorkImageScreen({super.key});

  @override
  State<PartnerMyWorkImageScreen> createState() =>
      _PartnerMyWorkImageScreenState();
}

class _PartnerMyWorkImageScreenState extends State<PartnerMyWorkImageScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: ShadowContainer(
          padding: KPadding.only(bottom: 35, top: 15, left: 16, right: 16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomizedButton(
                onTap: () {
                  Get.dialog(ImageSelectAlert(
                    onCameraGalleryTap: (file) {
                      Get.back();
                      // setState(() {
                      //   profile = file;
                      // });
                    },
                  ));
                },
                fontStyle: KText.r18BoldWhite,
                borderRadius: 5,
                backgroundColor: CustomColors.black,
                elevation: 0,
                text: 'Add More',
              ),
            ],
          ),
        ),
        body: Padding(
          padding: KPadding.horizontal20,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Gap.height(20),
                Row(
                  children: [
                    ArrowLeftAppbar(
                      padding: KPadding.none,
                    ),
                    Gap.width(20.w),
                    Text(
                      'Upload Images',
                      style: KText.r30ComfortaaW7,
                    ),
                  ],
                ),
                Gap.height(20.h),
                PartnerWorkImages(),
                Gap.height(10.h),
                PartnerWorkImages(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
