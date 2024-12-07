import 'package:customize_button/customize_button.dart';
import 'package:dhoond/data/extensions/extensions.dart';
import 'package:dhoond/utilities/custom_image/custom_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:get/get.dart';
import '../../../../../components/shadow_container.dart';
import '../../../../../data/controller/price_controller/price_controller.dart';
import '../../../../../utilities/core/kpadding.dart';
import '../../../../../utilities/core/kradius.dart';
import '../../../../../utilities/custom_colors/custom_colors.dart';
import '../../../../../utilities/gap/gap.dart';
import '../../../../../utilities/theme/ktext_theme.dart';
import 'cancel_service_bottom_sheet.dart';

class FindingPartnerBottomSheet extends StatefulWidget {
  const FindingPartnerBottomSheet({
    super.key,
    required this.onRaiseFair,
  });
  final VoidCallback onRaiseFair;
  @override
  State<FindingPartnerBottomSheet> createState() =>
      _FindingPartnerBottomSheetState();
}

class _FindingPartnerBottomSheetState extends State<FindingPartnerBottomSheet> {
  bool status = false;
  final priceController = Get.find<PriceController>();

  final DraggableScrollableController sheetController =
      DraggableScrollableController();

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.40,
      maxChildSize: 0.64,
      minChildSize: 0.40,
      controller: sheetController,
      builder: (BuildContext context, scrollController) {
        return Container(
          clipBehavior: Clip.hardEdge,
          decoration: const BoxDecoration(
            color: CustomColors.fontGrey,
          ),
          child: CustomScrollView(
            controller: scrollController,
            shrinkWrap: true,
            slivers: [
              SliverToBoxAdapter(
                child: Container(
                  decoration: const BoxDecoration(color: CustomColors.fontGrey),
                  padding: KPadding.symmetric(15, 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 200.w,
                        child: Text(
                          '4 partners are viewing your request',
                          style: KText.r12w5,
                        ),
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 98.w,
                            child: Stack(
                              children: [
                                CustomImage(
                                  img:
                                      'https://i.postimg.cc/yd6nL7M2/Ellipse-21542.png',
                                  height: 30.w,
                                  width: 30.w,
                                ),
                                Positioned(
                                  left: 20,
                                  child: CustomImage(
                                    img:
                                        'https://i.postimg.cc/rsrxsZ0F/Ellipse-21543.png',
                                    height: 30.w,
                                    width: 30.w,
                                  ),
                                ),
                                Positioned(
                                  left: 40,
                                  child: CustomImage(
                                    img:
                                        'https://i.postimg.cc/P5bdQbs3/Ellipse-21545.png',
                                    height: 30.w,
                                    width: 30.w,
                                  ),
                                ),
                                Positioned(
                                  left: 60,
                                  child: CustomImage(
                                    img:
                                        'https://i.postimg.cc/wBfMD5DK/Ellipse-21546.png',
                                    height: 30.w,
                                    width: 30.w,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Container(
                  decoration: BoxDecoration(
                      color: CustomColors.white,
                      borderRadius: kBorderRadiusTLR15),
                  child: Center(
                    child: Container(
                        decoration: BoxDecoration(
                          color: Theme.of(context).hintColor,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                        ),
                        height: 4,
                        width: 40,
                        margin: KPadding.only(top: 20)),
                  ),
                ),
              ),
              SliverList.list(
                children: [
                  Container(
                    padding: KPadding.all15,
                    color: CustomColors.white,
                    child: Column(
                      children: [
                        Text(
                          'Finding partners..',
                          style: KText.r16w5,
                        ),
                        Gap.height(30),
                        Padding(
                          padding: KPadding.horizontal15,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  priceController.priceUpdater(
                                      increament: false);
                                },
                                child: Container(
                                  height: 44.h,
                                  width: 86.h,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      borderRadius: kBorderRadius10,
                                      color: CustomColors.gradientGrey),
                                  child: Text(
                                    '-10',
                                    style: KText.r16,
                                  ),
                                ),
                              ),
                              Obx(() {
                                return Text(
                                  'Rs.${priceController.price.value}',
                                  style: KText.r24Bold,
                                );
                              }),
                              GestureDetector(
                                onTap: () {
                                  priceController.priceUpdater();
                                },
                                child: Container(
                                  height: 44.h,
                                  width: 86.h,
                                  decoration: BoxDecoration(
                                      borderRadius: kBorderRadius10,
                                      border: kBorderAll,
                                      color: CustomColors.gradientGrey),
                                  alignment: Alignment.center,
                                  child: Text(
                                    '+10',
                                    style: KText.r16,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Gap.height(),
                        ShadowContainer(
                            padding: KPadding.all18,
                            borderRadius: kBorderRadius10,
                            disableShadow: true,
                            backgroundColor: CustomColors.faintBlue,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'EST. Total amount',
                                      style: KText.r15Bold,
                                    ),
                                    Text(
                                      'Travel time: 38 min.',
                                      style: KText.r12,
                                    )
                                  ],
                                ),
                                Obx(() {
                                  return Text(
                                    '${priceController.price.value}'.rupee,
                                    style: KText.r24Bold,
                                  );
                                })
                              ],
                            )),
                        Gap.height(),
                        CustomizedButton(
                          onTap: widget.onRaiseFair,
                          text: 'Raise price',
                          fontStyle: KText.r18w5White,
                          backgroundColor: CustomColors.black,
                        ),
                        Gap.height(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: Get.width * 0.6,
                              child: Text(
                                'Automatically accept the nearest partner for Rs. 1,400',
                                style: KText.r15Bold,
                              ),
                            ),
                            FlutterSwitch(
                              value: status,
                              height: 25.w,
                              padding: 1,
                              width: 55.w,
                              toggleColor: CustomColors.black,
                              switchBorder: kBorderAllGrey,
                              activeColor: CustomColors.black,
                              activeToggleColor: CustomColors.white,
                              inactiveColor: CustomColors.white,
                              onToggle: (val) {
                                setState(() {
                                  status = val;
                                });
                              },
                            ),
                          ],
                        ),
                        Gap.height(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Payment',
                              style: KText.r15Grey,
                            ),
                          ],
                        ),
                        Gap.height(5),
                        Row(
                          children: [
                            const Icon(
                              MaterialCommunityIcons.cash,
                              size: 27,
                            ),
                            Text(
                              '  Rs. 1400',
                              style: KText.r18Bold,
                            ),
                            Gap.width(5),
                            Text(
                              'Online/Cash',
                              style: KText.r18GreyW5,
                            )
                          ],
                        ),
                        Gap.height(),
                        CustomizedButton(
                          onTap: () {
                            Get.bottomSheet(
                              const CancelServiceBottomSheet(),
                              barrierColor: CustomColors.transparent,
                              isScrollControlled: true,
                            );
                          },
                          text: 'Cancel request',
                          enableBorder: true,
                          fontStyle: KText.r18w5,
                          backgroundColor: CustomColors.transparent,
                          elevation: 0,
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        );
      },
    );
  }
}
