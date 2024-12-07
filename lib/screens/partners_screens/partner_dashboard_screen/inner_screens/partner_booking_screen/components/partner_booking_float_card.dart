import 'package:customize_button/customize_button.dart';
import 'package:dhoond/screens/common_screens/qr_code_scanner.dart';
import 'package:dhoond/screens/partners_screens/partner_float_details/partner_float_detail_screen.dart';
import 'package:dhoond/utilities/constant/constant.dart';
import 'package:dhoond/utilities/custom_image/custom_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:get/get.dart';
import 'package:slide_to_act/slide_to_act.dart';
import '../../../../../../components/shadow_container.dart';
import '../../../../../../utilities/assets_paths/assets_paths.dart';
import '../../../../../../utilities/core/kpadding.dart';
import '../../../../../../utilities/core/kradius.dart';
import '../../../../../../utilities/custom_colors/custom_colors.dart';
import '../../../../../../utilities/gap/gap.dart';
import '../../../../../../utilities/theme/ktext_theme.dart';

class PartnerBookingFloatCard extends StatefulWidget {
  const PartnerBookingFloatCard({
    super.key,
  });
  @override
  State<PartnerBookingFloatCard> createState() =>
      _PartnerBookingFloatCardState();
}

class _PartnerBookingFloatCardState extends State<PartnerBookingFloatCard> {
  bool status = false;
  @override
  Widget build(BuildContext context) {
    return ShadowContainer(
      margin: KPadding.horizontal15,
      padding: KPadding.symmetric(16, 12),
      borderRadius: kBorderRadius10,
      border: kBorderAllGrey2,
      child: Column(
        children: [
          Row(
            children: [
              Text(
                'Prathamesh Dolaskar',
                style: KText.r16w6,
              ),
              const Spacer(),
              FlutterSwitch(
                value: status,
                height: 26.w,
                padding: 1,
                width: 50.w,
                toggleSize: 20,
                toggleColor: CustomColors.black,
                switchBorder: kBorderAllGrey,
                activeColor: CustomColors.white,
                activeToggleColor: CustomColors.black,
                inactiveColor: CustomColors.white,
                onToggle: (val) {
                  // setState(() {
                  //   status = val;
                  // });
                  Get.to(() => const QRCodeScanner());
                },
              ),
            ],
          ),
          Gap.height(5),
          const Divider(
            color: CustomColors.gradientGrey1,
          ),
          Gap.height(10),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const CustomImage(
                          img: ImagePath.location,
                          imageType: ImageType.asset,
                          height: 17,
                          width: 17,
                        ),
                        Gap.width(5),
                        Text(
                          'MIDC, Nagpur',
                          style: KText.r14,
                        )
                      ],
                    ),
                    Gap.height(8),
                    Row(
                      children: [
                        const CustomImage(
                          img: ImagePath.bag,
                          imageType: ImageType.asset,
                          height: 15,
                          width: 15,
                        ),
                        Gap.width(5),
                        Text(
                          'Work started on September 08, 2024',
                          style: KText.r14,
                        ),
                      ],
                    ),
                    Gap.height(8),
                    Row(
                      children: [
                        const Icon(
                          Fontisto.stopwatch,
                          size: 18,
                          color: CustomColors.black,
                        ),
                        Gap.width(5),
                        Text.rich(TextSpan(children: [
                          TextSpan(
                              text: 'Pending Payment ', style: KText.r14w5),
                        ]))
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                height: 69.w,
                width: 69.w,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: NetworkImage(
                          'https://i.postimg.cc/yW4F24XS/Ellipse.png',
                        ),
                        fit: BoxFit.cover)),
              ),
            ],
          ),
          Gap.height(),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomizedButton(
                onTap: () {
                  Get.to(() => const PartnerFloatDetailScreen());
                },
                text: 'View FLOAT',
                width: Get.width * 0.4,
                fontStyle: KText.r14w5,
                borderColor: CustomColors.black,
                elevation: 0,
                enableBorder: true,
                backgroundColor: CustomColors.white,
              ),
              const Spacer(),
              Row(
                children: [
                  Image.asset(
                    ImagePath.pencil,
                    height: 17,
                    width: 17,
                  ),
                  Gap.width(5),
                  Text(
                    'Daily Status',
                    style: KText.r12UnderlineW5,
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
