import 'package:customize_button/customize_button.dart';
import 'package:dhoond/components/arrow_left_appbar.dart';
import 'package:dhoond/components/shadow_container.dart';
import 'package:dhoond/data/extensions/extensions.dart';
import 'package:dhoond/utilities/assets_paths/assets_paths.dart';
import 'package:dhoond/utilities/core/kpadding.dart';
import 'package:dhoond/utilities/custom_colors/custom_colors.dart';
import 'package:dhoond/utilities/gap/gap.dart';
import 'package:dhoond/utilities/theme/ktext_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:get/get.dart';
import '../../../utilities/core/kradius.dart';
import '../components/price_and_charges_card.dart';
import '../user_main_payment_screen/user_main_payment_screen.dart';

class UserOrderDetailScreen extends StatefulWidget {
  const UserOrderDetailScreen(
      {super.key,
      this.price = '0',
      this.isQrVisible = false,
      this.floatEnable,
      this.isShowPayable = false,
      this.isFromWallet = false});
  final String price;
  final bool isQrVisible;
  final int? floatEnable;
  final bool isShowPayable;
  final bool isFromWallet;
  @override
  State<UserOrderDetailScreen> createState() => _UserOrderDetailScreenState();
}

class _UserOrderDetailScreenState extends State<UserOrderDetailScreen> {
  bool isCheck = false;
  bool isExpand = false;
  double gst = 0.0;
  double gatewayCharges = 0.0;
  double grandTotal = 0.0;
  double calPrice = 0.0;

  void _calculateCosts() {
    setState(() {
      // double calPrice = double.parse(widget.price);
      // gst = calPrice * 0.05;
      // gatewayCharges = calPrice * 0.03;
      // grandTotal = calPrice + gst + gatewayCharges;

      calPrice = double.parse(widget.price);
      gst = calPrice * 0.05;
      gatewayCharges = calPrice * 0.03;
      grandTotal = calPrice - gst - gatewayCharges;
    });
  }

  @override
  void initState() {
    super.initState();
    _calculateCosts();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: KPadding.horizontal15,
          child: Column(
            children: [
              Gap.height(),
              Row(
                children: [
                  const ArrowLeftAppbar(
                    padding: KPadding.none,
                  ),
                  const Spacer(),
                  Text(
                    'Order Details',
                    style: KText.r30ComfortaaW7,
                  ),
                  const Spacer(),
                  const SizedBox()
                ],
              ),
              Gap.height(12),
              PriceAndChargesCard(
                  price: grandTotal.toStringAsFixed(2),
                  gst: gst.toStringAsFixed(2),
                  gatewayCharges: gatewayCharges.toStringAsFixed(2),
                  //grandTotal: grandTotal.toStringAsFixed(2)),
                  grandTotal: calPrice.toStringAsFixed(2)),
              Gap.height(),
              ShadowContainer(
                  borderRadius: kBorderRadius8,
                  border: kBorderAllGrey2,
                  child: Column(
                    children: [
                      Padding(
                        padding: KPadding.only(
                          left: 15,
                          top: 15,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Physically Disabled donation',
                                  style: KText.r14,
                                ),
                                Gap.height(5),
                                Text(
                                  'An initiative by dhoond',
                                  style: KText.r12Grey,
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Image.asset(
                                  ImagePath.lady,
                                  height: 77.h,
                                ),
                                Padding(
                                  padding: KPadding.only(right: 15, bottom: 15),
                                  child: Column(
                                    children: [
                                      Checkbox.adaptive(
                                        value: isCheck,
                                        activeColor: CustomColors.black,
                                        visualDensity: const VisualDensity(
                                            horizontal: -4, vertical: -4),
                                        onChanged: (value) {
                                          setState(() {
                                            isCheck = value!;
                                            isCheck
                                                ? calPrice += 10
                                                : calPrice -= 10;
                                          });
                                        },
                                      ),
                                      Text(
                                        '₹10',
                                        style: KText.r14w5,
                                      )
                                    ],
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      Container(
                        padding: KPadding.symmetric(15, 15),
                        decoration: const BoxDecoration(
                          color: CustomColors.mobileNoGrey,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Learn more',
                                  style: KText.r14,
                                ),
                                Icon(
                                  Icons.chevron_right,
                                  size: 16.h,
                                ),
                              ],
                            ),
                            // TextButton(
                            //     onPressed: () {},
                            //     style: const ButtonStyle(
                            //         visualDensity: VisualDensity.compact),
                            //     child: Text(
                            //       'Donate Now',
                            //       style: KText.r14,
                            //     ))
                          ],
                        ),
                      )
                    ],
                  )),
              Gap.height(10),
              const Spacer(),
              Container(
                padding: KPadding.symmetric(15, 15),
                decoration: BoxDecoration(
                  borderRadius: kBorderRadius5,
                  color: CustomColors.mobileNoGrey,
                ),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Instant Booking protection fee',
                          style: KText.r12w4,
                        ),
                        Text(
                          '(No wait, only Dhoonding)',
                          style: KText.r11w5,
                        ),
                        Row(
                          children: [
                            Text(
                              '₹250',
                              style: KText.r14lineThrough,
                            ),
                            Gap.width(5),
                            Text(
                              'FREE',
                              style: KText.r14GreenW5,
                            )
                          ],
                        ),
                      ],
                    ),
                    const Spacer(),
                    const Icon(
                      Entypo.shield,
                      size: 35,
                    )
                  ],
                ),
              ),
              Gap.height(29),
              CustomizedButton(
                onTap: () {
                  Get.to(
                    () => UserMainPaymentScreen(
                      grandTotal: grandTotal,
                      floatEnable: widget.floatEnable,
                      isFromWallet: widget.isFromWallet,
                      isQrVisible: widget.isQrVisible,
                      isShowPayable: widget.isShowPayable,
                    ),
                    transition: Transition.native,
                  );
                },
                text: ' Pay'.rupee,
                fontStyle: KText.r20w5White,
                backgroundColor: CustomColors.black,
              ),
              Gap.height(35),
            ],
          ),
        ),
      ),
    );
  }
}
