import 'package:customize_button/customize_button.dart';
import 'package:dhoond/data/extensions/extensions.dart';
import 'package:dhoond/screens/common_screens/add_amount_screen/add_amount_screen.dart';
import 'package:dhoond/screens/users_screens/user_booking_info_screen/user_bayp_booking_info_screen.dart';
import 'package:dhoond/screens/users_screens/user_booking_info_screen/user_booking_info_screen.dart';
import 'package:dhoond/screens/users_screens/user_booking_info_screen/user_done_booking_info_screen.dart';
import 'package:dhoond/screens/users_screens/user_partner_rating_screen/user_partner_rating_Screen.dart';
import 'package:dhoond/screens/users_screens/user_why_cancel_screen/user_why_cancel_screen.dart';
import 'package:dhoond/utilities/core/ksizedbox.dart';
import 'package:dhoond/utilities/custom_image/custom_image.dart';
import 'package:dhoond/utilities/gap/gap.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:marquee/marquee.dart';
import '../../../../../../components/check_online_container.dart';
import '../../../../../../components/shadow_container.dart';
import '../../../../../../utilities/assets_paths/assets_paths.dart';
import '../../../../../../utilities/constant/constant.dart';
import '../../../../../../utilities/core/kpadding.dart';
import '../../../../../../utilities/core/kradius.dart';
import '../../../../../../utilities/custom_colors/custom_colors.dart';
import '../../../../../../utilities/theme/ktext_theme.dart';

class BookingCard extends StatelessWidget {
  const BookingCard({
    super.key,
    this.enableOtp = true,
    this.buttonType = BookingCardButtonType.cancelAndPay,
    this.isPaid = false,
    this.isOnlineCash = false,
    this.enableBayp = false,
    this.showOrderId = true,
    this.isFaint = false,
    this.onTap,
  });
  final bool enableOtp;
  final bool showOrderId;
  final bool enableBayp;
  final bool isOnlineCash;
  final bool isPaid;
  final BookingCardButtonType buttonType;
  final bool isFaint;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: isFaint ? 0.5 : 1,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          ShadowContainer(
              onTap: onTap ??
                  () {
                    if (enableBayp) {
                      Get.to(() => const UserBAYPBookingInfoScreen());
                    } else {
                      Get.to(() => const UserBookingInfoScreen());
                    }
                  },
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
                      if (enableOtp &&
                          buttonType != BookingCardButtonType.awaiting)
                        Text(
                          'OTP - #5186',
                          style: KText.r16Bold,
                        ),
                      if (buttonType == BookingCardButtonType.awaiting)
                        Text(
                          'Replacement',
                          style: KText.r16Bold,
                        ),
                    ],
                  ),
                  Gap.height(5),
                  const Divider(
                    color: CustomColors.gradientGrey1,
                  ),
                  Visibility(
                    visible: showOrderId,
                    child: Text(
                      buttonType == BookingCardButtonType.awaiting
                          ? 'Order Id : R00000000001'
                          : 'Order Id : D00000000001',
                      style: KText.r10Grey,
                    ),
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
                            if (isOnlineCash) ...[
                              Gap.height(5),
                              Row(
                                children: [
                                  const Icon(
                                    MaterialCommunityIcons.cash,
                                    size: 19,
                                  ),
                                  Gap.width(5),
                                  Text(
                                    'Rs. 1,400',
                                    style: KText.r14Bold,
                                  ),
                                  Text(
                                    '  Online/Cash',
                                    style: KText.r12GreyW5,
                                  )
                                ],
                              ),
                            ],
                            if (isPaid) ...[
                              Gap.height(8),
                              Row(
                                children: [
                                  const Icon(
                                    Octicons.check_circle_fill,
                                    size: 12,
                                    color: CustomColors.alertGreen,
                                  ),
                                  Gap.width(5),
                                  Text.rich(TextSpan(children: [
                                    TextSpan(
                                        text: 'Paid . ', style: KText.r14w5),
                                    TextSpan(
                                        text: 'September 10, 2024',
                                        style: KText.r14w3),
                                  ]))
                                ],
                              ),
                            ]
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
                  if (buttonType == BookingCardButtonType.payMore)
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CustomizedButton(
                          onTap: () {},
                          text: 'Pay more',
                          width: Get.width * 0.4,
                          fontStyle: KText.r12w5,
                          borderColor: CustomColors.black,
                          elevation: 0,
                          enableBorder: true,
                          backgroundColor: CustomColors.white,
                        ),
                      ],
                    ),
                  if (buttonType == BookingCardButtonType.bookAgain)
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CustomizedButton(
                          onTap: () {
                            Get.to(() => const UserPartnerRatingScreen());
                          },
                          text: 'Book again',
                          width: Get.width * 0.4,
                          fontStyle: KText.r12w5,
                          borderColor: CustomColors.black,
                          elevation: 0,
                          enableBorder: true,
                          backgroundColor: CustomColors.white,
                        ),
                      ],
                    ),
                  if (buttonType == BookingCardButtonType.cancelled)
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CustomizedButton(
                          onTap: () {},
                          text: 'Cancelled',
                          width: Get.width * 0.4,
                          fontStyle: KText.r12w5,
                          borderColor: CustomColors.black,
                          elevation: 0,
                          enableBorder: true,
                          backgroundColor: CustomColors.white,
                        ),
                      ],
                    ),
                  if (buttonType == BookingCardButtonType.awaiting)
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CustomizedButton(
                          onTap: () {},
                          text: 'Awaiting for confirmation',
                          width: Get.width * 0.4,
                          fontStyle: KText.r12w5,
                          borderColor: CustomColors.black,
                          elevation: 0,
                          enableBorder: true,
                          backgroundColor: CustomColors.white,
                        ),
                      ],
                    ),
                  if (buttonType == BookingCardButtonType.cancelAndPay)
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
                              Get.to(() => const AddAmountScreen(
                                    isFromBooking: true,
                                  ));
                            },
                            text: 'Pay now',
                            width: Get.width * 0.4,
                            fontStyle: KText.r12w5White,
                            elevation: 0,
                            backgroundColor: CustomColors.black,
                          ),
                        )
                      ],
                    ),
                  if (enableBayp &&
                      buttonType == BookingCardButtonType.cancelAndPay) ...[
                    Gap.height(10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              padding: KPadding.all(5),
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: CustomColors.lightGreen),
                            ),
                            Gap.width(10),
                            Text.rich(TextSpan(children: [
                              TextSpan(text: 'ARRIVING IN', style: KText.r15),
                              TextSpan(text: ' 20 MIN', style: KText.r15Bold)
                            ])),
                            const SizedBoxWidth(
                              width: 5,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ]
                ],
              )),
          if (enableBayp)
            Positioned(
              top: -10,
              left: 0,
              child: ShadowContainer(
                  disableShadow: true,
                  backgroundColor: CustomColors.skyBlue1,
                  borderRadius: kBorderRadiusTopRBottomR200,
                  padding: KPadding.only(left: 8, top: 4, right: 24, bottom: 4),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'BOOK at YOUR PRICE',
                        style: KText.r10w5,
                      ),
                      Gap.width(5),
                      const CustomImage(
                        imageType: ImageType.asset,
                        img: ImagePath.tag,
                        height: 16,
                        width: 16,
                      ),
                    ],
                  )),
            )
        ],
      ),
    );
  }
}
