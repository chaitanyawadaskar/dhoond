import 'package:customize_button/customize_button.dart';
import 'package:dhoond/screens/users_screens/float_payment/float_payment_plan_screen/float_payment_plan_screen.dart';
import 'package:dhoond/screens/users_screens/user_why_cancel_screen/user_why_cancel_screen.dart';
import 'package:dhoond/utilities/custom_image/custom_image.dart';
import 'package:dhoond/utilities/gap/gap.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:marquee/marquee.dart';
import '../../../../../../components/check_online_container.dart';
import '../../../../../../components/shadow_container.dart';
import '../../../../../../utilities/assets_paths/assets_paths.dart';
import '../../../../../../utilities/constant/constant.dart';
import '../../../../../../utilities/core/kpadding.dart';
import '../../../../../../utilities/core/kradius.dart';
import '../../../../../../utilities/custom_colors/custom_colors.dart';
import '../../../../../../utilities/theme/ktext_theme.dart';

class FloatCard extends StatelessWidget {
  const FloatCard({
    super.key,
    this.buttonType = BookingCardButtonType.cancelAndPay,
  });
  final BookingCardButtonType buttonType;
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        ShadowContainer(
            padding: KPadding.all(16),
            borderRadius: kBorderRadius12,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      'Chandan Kumar',
                      style: KText.r14Bold,
                    ),
                    Container(
                      margin: KPadding.only(left: 10),
                      padding: KPadding.horizontal(5),
                      decoration: BoxDecoration(
                          color: CustomColors.yellow,
                          borderRadius: kBorderRadius6),
                      child: SizedBox(
                        width: 55.w,
                        height: 20.w,
                        child: Marquee(
                          text: ' Carpenter',
                          startPadding: 10.0,
                          blankSpace: 35,
                          accelerationDuration: const Duration(seconds: 1),
                          accelerationCurve: Curves.linear,
                          decelerationDuration:
                              const Duration(milliseconds: 500),
                          decelerationCurve: Curves.linear,
                          style: KText.r12Bold,
                          velocity: 25,
                        ),
                      ),
                    ),
                    const Spacer(),
                  ],
                ),
                Gap.height(5),
                const Divider(
                  color: CustomColors.gradientGrey1,
                ),
                Text(
                  buttonType == BookingCardButtonType.awaiting
                      ? 'Order Id : R00000000001'
                      : 'Order Id : D00000000001',
                  style: KText.r10Grey,
                ),
                Gap.height(5),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              const Icon(
                                Icons.star_rate_rounded,
                                size: 20,
                                color: CustomColors.black,
                              ),
                              Gap.width(5),
                              Text(
                                '4.5',
                                style: KText.r14Bold,
                              ),
                              Gap.width(5),
                              Text(
                                '(12k Views)',
                                style: KText.r14Grey,
                              )
                            ],
                          ),
                          Gap.height(8),
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
                                'Nagpur',
                                style: KText.r14,
                              )
                            ],
                          ),
                          Gap.height(8),
                          Wrap(
                            crossAxisAlignment: WrapCrossAlignment.start,
                            children: [
                              const CustomImage(
                                img: ImagePath.bag,
                                imageType: ImageType.asset,
                                height: 14,
                                width: 14,
                              ),
                              Gap.width(5),
                              Text(
                                'Recently worked at - A7, Wardha Rd',
                                style: KText.r14,
                              ),
                              const Icon(
                                Icons.keyboard_arrow_down,
                                size: 20,
                                color: CustomColors.black,
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    CheckOnlineContainer(
                      isOnline: true,
                      bottom: 5,
                      child: Container(
                        height: 69.w,
                        width: 69.w,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: AssetImage(
                                  ImagePath.carpenter1,
                                ),
                                fit: BoxFit.cover)),
                      ),
                    ),
                  ],
                ),
                Gap.height(10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 37,
                      child: CustomizedButton(
                        onTap: () {
                          Get.to(() => const UserWhyCancelScreen());
                        },
                        text: 'Cancel',
                        width: Get.width * 0.4,
                        fontStyle: KText.r12w5,
                        borderColor: CustomColors.black,
                        elevation: 0,
                        enableBorder: true,
                        backgroundColor: CustomColors.white,
                      ),
                    ),
                    SizedBox(
                      height: 37,
                      child: CustomizedButton(
                        onTap: () {
                          Get.to(() => const FloatPaymentPlanScreen());
                        },
                        text: 'Float Detail',
                        width: Get.width * 0.4,
                        fontStyle: KText.r12w5White,
                        elevation: 0,
                        backgroundColor: CustomColors.black,
                      ),
                    )
                  ],
                ),
              ],
            )),
      ],
    );
  }
}
