import 'package:animate_do/animate_do.dart';
import 'package:customize_button/customize_button.dart';
import 'package:dhoond/screens/users_screens/user_dashboard_screen/user_dashboard_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:get/get.dart';
import '../../../../../components/shadow_container.dart';
import '../../../../../data/controller/price_controller/price_controller.dart';
import '../../../../../utilities/assets_paths/assets_paths.dart';
import '../../../../../utilities/core/kboxshadow.dart';
import '../../../../../utilities/core/kpadding.dart';
import '../../../../../utilities/core/kradius.dart';
import '../../../../../utilities/custom_colors/custom_colors.dart';
import '../../../../../utilities/gap/gap.dart';
import '../../../../../utilities/theme/ktext_theme.dart';
import 'cancel_service_bottom_sheet.dart';

class PartnerAcceptBottomSheet extends StatefulWidget {
  const PartnerAcceptBottomSheet({
    super.key,
  });

  @override
  State<PartnerAcceptBottomSheet> createState() =>
      _PartnerAcceptBottomSheetState();
}

class _PartnerAcceptBottomSheetState extends State<PartnerAcceptBottomSheet> {
  final DraggableScrollableController sheetController =
      DraggableScrollableController();
  final priceController = Get.find<PriceController>();

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.44,
      maxChildSize: 0.60,
      minChildSize: 0.44,
      controller: sheetController,
      builder: (BuildContext context, scrollController) {
        return SlideInUp(
          child: Container(
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
              color: CustomColors.white,
              borderRadius: kBorderRadiusTopLR12,
            ),
            child: CustomScrollView(
              controller: scrollController,
              shrinkWrap: true,
              slivers: [
                SliverToBoxAdapter(
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
                SliverList.list(
                  children: [
                    Gap.height(),
                    Padding(
                      padding: KPadding.horizontal20,
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              'Shubham accepted your request for switchbox installation., will arrive in 15 min.',
                              style: KText.r16w5,
                            ),
                          ),
                          ShadowContainer(
                              borderRadius: kBorderRadius5,
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 100,
                                    child: Stack(
                                      children: [
                                        Padding(
                                          padding: KPadding.all15,
                                          child: Image.network(
                                            'https://i.postimg.cc/DzVR7yPY/image-97.png',
                                            height: 25,
                                          ),
                                        ),
                                        Positioned(
                                          left: 25,
                                          child: ShadowContainer(
                                            padding: KPadding.all15,
                                            borderRadius: kBorderRadius5,
                                            child: Image.network(
                                              'https://i.postimg.cc/DzVR7yPY/image-97.png',
                                              height: 25,
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          right: 0,
                                          child: ShadowContainer(
                                              padding: KPadding.all15,
                                              borderRadius: kBorderRadius5,
                                              child: const Icon(
                                                Icons.add,
                                                size: 25,
                                                color: CustomColors.grey,
                                              )),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ))
                        ],
                      ),
                    ),
                    Gap.height(),
                    const Divider(
                      thickness: 1,
                      color: CustomColors.gradientGrey2,
                    ),
                    Gap.height(),
                    Padding(
                      padding: KPadding.horizontal25,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 65,
                                child: Stack(
                                  clipBehavior: Clip.none,
                                  children: [
                                    Column(
                                      children: [
                                        Container(
                                          height: 50.w,
                                          width: 50.w,
                                          decoration: const BoxDecoration(
                                              shape: BoxShape.circle,
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                    ImagePath.electricalMan,
                                                  ),
                                                  fit: BoxFit.cover)),
                                        ),
                                        Gap.height(),
                                        Text(
                                          'Shubham',
                                          style: KText.r14w5,
                                        )
                                      ],
                                    ),
                                    Positioned(
                                        right: -28,
                                        top: -10,
                                        child: ShadowContainer(
                                          disableShadow: true,
                                          borderRadius: kBorderRadius10,
                                          padding: KPadding.horizontal5,
                                          backgroundColor:
                                              CustomColors.gradientGrey,
                                          child: Row(
                                            children: [
                                              Icon(
                                                Icons.star,
                                                color: CustomColors.amber,
                                                size: 18.h,
                                              ),
                                              Text(
                                                '4/5',
                                                style: KText.r14Bold,
                                              )
                                            ],
                                          ),
                                        ))
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                height: 50.w,
                                width: 50.w,
                                decoration: const BoxDecoration(
                                  color: CustomColors.black,
                                  shape: BoxShape.circle,
                                ),
                                child: const Icon(
                                  Icons.call,
                                  color: CustomColors.white,
                                ),
                              ),
                              Gap.height(),
                              Text(
                                'Contact partner',
                                style: KText.r14w5,
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                height: 50.w,
                                width: 50.w,
                                decoration: const BoxDecoration(
                                  color: CustomColors.black,
                                  shape: BoxShape.circle,
                                ),
                                alignment: Alignment.center,
                                child: Image.network(
                                  'https://i.postimg.cc/GprGHmry/Group.png',
                                  height: 25,
                                ),
                              ),
                              Gap.height(),
                              Text(
                                'Safety',
                                style: KText.r14w5,
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    Gap.height(),
                    ShadowContainer(
                        margin: KPadding.horizontal20,
                        padding: KPadding.all18,
                        borderRadius: kBorderRadius10,
                        disableShadow: true,
                        backgroundColor: CustomColors.faintBlue,
                        child: Row(
                          children: [
                            const Icon(
                              MaterialCommunityIcons.message_text_outline,
                              size: 20,
                            ),
                            Gap.width(),
                            Text(
                              'Any instructions for Partners?',
                              style: KText.r15w5,
                            )
                          ],
                        )),
                    Gap.height(),
                    Padding(
                      padding: KPadding.horizontal20,
                      child: Column(
                        children: [
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
                              Obx(() {
                                return Text(
                                  '  Rs. ${priceController.acceptPrice.value}',
                                  style: KText.r18Bold,
                                );
                              }),
                              Text(
                                '  Online/Cash',
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
                          Gap.height(8),
                          CustomizedButton(
                            onTap: () {
                              Get.to(() => const UserDashboardScreen(
                                    currentIndex: 3,
                                  ));
                            },
                            text: 'Go to My bookings',
                            fontStyle: KText.r18w5White,
                            backgroundColor: CustomColors.black,
                          ),
                          Gap.height(15)
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
