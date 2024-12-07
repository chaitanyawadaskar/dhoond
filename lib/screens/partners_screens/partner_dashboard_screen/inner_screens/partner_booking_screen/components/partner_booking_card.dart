import 'package:customize_button/customize_button.dart';
import 'package:dhoond/data/extensions/extensions.dart';
import 'package:dhoond/utilities/custom_image/custom_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:get/get.dart';
import 'package:slide_to_act/slide_to_act.dart';
import '../../../../../../components/shadow_container.dart';
import '../../../../../../utilities/assets_paths/assets_paths.dart';
import '../../../../../../utilities/constant/constant.dart';
import '../../../../../../utilities/core/kpadding.dart';
import '../../../../../../utilities/core/kradius.dart';
import '../../../../../../utilities/custom_colors/custom_colors.dart';
import '../../../../../../utilities/gap/gap.dart';
import '../../../../../../utilities/theme/ktext_theme.dart';
import '../../../../partner_work_otp_verification_screen/partner_work_otp_verification_screen.dart';
import 'otp_feild_bottom_sheet.dart';

class PartnerBookingCard extends StatelessWidget {
  const PartnerBookingCard({
    super.key,
    this.isPaid = false,
    this.bookingType = PartnerBookingType.reachedLocation,
    this.isPending = false,
  });
  final bool isPending;
  final bool isPaid;
  final PartnerBookingType bookingType;
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
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: KPadding.all(4),
                    margin: KPadding.only(right: 4, top: 2),
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: CustomColors.lightGreen),
                  ),
                  Text(
                    'Inventories\nEligible',
                    style: KText.r10ComfortaaW7,
                    textAlign: TextAlign.right,
                  ),
                  Gap.width(5),
                  Image.asset(
                    ImagePath.inventory,
                    height: 24,
                  )
                ],
              )
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
                        Icon(
                          isPending
                              ? Fontisto.stopwatch
                              : Octicons.check_circle_fill,
                          size: 18,
                          color: isPending
                              ? CustomColors.black
                              : CustomColors.alertGreen,
                        ),
                        Gap.width(5),
                        Text.rich(TextSpan(children: [
                          TextSpan(
                              text: isPending ? 'Pending Payment' : 'Paid ',
                              style: KText.r14w5),
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
          if (bookingType == PartnerBookingType.markAsComplete)
            SlideAction(
              onSubmit: () {
                Get.to(() => const PartnerWorkOTPVerificationScreen());
                return null;
              },
              borderRadius: 50,
              sliderButtonIcon: const Icon(
                Icons.chevron_right,
                size: 35,
                color: CustomColors.buttonGreen2,
              ),
              text: '  Slide to Mark as Completed',
              textStyle: KText.r15ComfortaaWhite,
              reversed: false,
              elevation: 0,
              height: 48,
              sliderButtonIconPadding: 2,
              sliderButtonYOffset: BorderSide.strokeAlignCenter,
              sliderRotate: true,
              outerColor: CustomColors.buttonGreen2,
              innerColor: CustomColors.white,
            )
          else if (bookingType == PartnerBookingType.reachedLocation)
            SlideAction(
              onSubmit: () {
                Get.to(() => const PartnerWorkOTPVerificationScreen());

                // Get.bottomSheet(const OTPFeildBottomSheet());
                return null;
              },
              borderRadius: 50,
              sliderButtonIcon: const Icon(
                Icons.chevron_right,
                size: 35,
                color: CustomColors.buttonGreen2,
              ),
              text: 'Reached Location',
              textStyle: KText.r15ComfortaaWhite,
              reversed: false,
              elevation: 0,
              height: 48,
              sliderButtonIconPadding: 2,
              sliderButtonYOffset: BorderSide.strokeAlignCenter,
              sliderRotate: true,
              outerColor: CustomColors.buttonGreen2,
              innerColor: CustomColors.white,
            )
          else
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CustomizedButton(
                  onTap: () {},
                  text: 'Work Completed',
                  width: Get.width * 0.4,
                  fontStyle: KText.r14w5,
                  borderColor: CustomColors.black,
                  elevation: 0,
                  enableBorder: true,
                  backgroundColor: CustomColors.white,
                ),
              ],
            ),
        ],
      ),
    );
  }
}
