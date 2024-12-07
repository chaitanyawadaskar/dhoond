import 'package:customize_button/customize_button.dart';
import 'package:dhoond/components/shadow_container.dart';
import 'package:dhoond/data/controller/price_controller/price_controller.dart';
import 'package:dhoond/data/extensions/extensions.dart';
import 'package:dhoond/utilities/core/kboxshadow.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:get/get.dart';

import '../../../../components/arrow_left_appbar.dart';
import '../../../../utilities/core/kpadding.dart';
import '../../../../utilities/core/kradius.dart';
import '../../../../utilities/custom_colors/custom_colors.dart';
import '../../../../utilities/gap/gap.dart';
import '../../../../utilities/theme/ktext_theme.dart';
import '../find_partner_screen/find_partner_screen.dart';
import 'components/bayp_summary_card.dart';

class BAYPSummaryScreen extends StatefulWidget {
  const BAYPSummaryScreen({super.key});

  @override
  State<BAYPSummaryScreen> createState() => _BAYPSummaryScreenState();
}

class _BAYPSummaryScreenState extends State<BAYPSummaryScreen> {
  final priceController = Get.find<PriceController>();
  var list = [
    {
      'url': 'https://i.postimg.cc/T14z1D4P/image-97-1.png',
      'name': 'Switch & Socket installation'
    },
    {
      'url': 'https://i.postimg.cc/LXnKpDxW/image-119.png',
      'name': 'AC switchbox installation'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: ArrowLeftAppbar(
          padding: KPadding.only(left: 18, top: 17),
          size: 70,
        ),
        body: Column(
          children: [
            Gap.height(),
            Padding(
                padding: KPadding.horizontal20,
                child: Column(
                  children: [
                    ListView.separated(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) => BAYPSummaryCard(
                              title: '${list[index]['name']}',
                              price: '129',
                              img: '${list[index]['url']}',
                            ),
                        separatorBuilder: (context, index) => Gap.height(),
                        itemCount: 2),
                    Gap.height(25),
                    ShadowContainer(
                        padding: KPadding.all18,
                        borderRadius: kBorderRadius10,
                        disableShadow: true,
                        backgroundColor: CustomColors.grey1,
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
                            Text(
                              '1400'.rupee,
                              style: KText.r24Bold,
                            )
                          ],
                        )),
                    Gap.height(50),
                  ],
                )),
            const Spacer(),
            Container(
              padding: KPadding.all20,
              decoration: BoxDecoration(
                  color: CustomColors.white,
                  boxShadow: KBoxShadow.faintGrey,
                  borderRadius: kBorderRadius15),
              child: Column(
                children: [
                  Text(
                    'Offer your price',
                    style: KText.r18w5,
                  ),
                  Gap.height(),
                  Padding(
                    padding: KPadding.horizontal15,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            priceController.priceUpdater(increament: false);
                          },
                          child: Container(
                            height: 44.h,
                            width: 86.h,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                borderRadius: kBorderRadius10,
                                color: CustomColors.gradientGrey1),
                            child: Text(
                              '-10',
                              style: KText.r16Comfortaa,
                            ),
                          ),
                        ),
                        Obx(() {
                          return Text(
                            'Rs. ${priceController.price.value}',
                            style: KText.r24Bold,
                          );
                        }),
                        InkWell(
                          onTap: () {
                            priceController.priceUpdater();
                          },
                          child: Container(
                            height: 44.h,
                            width: 86.h,
                            decoration: BoxDecoration(
                                border: kBorderAll,
                                borderRadius: kBorderRadius10,
                                color: CustomColors.gradientGrey),
                            alignment: Alignment.center,
                            child: Text(
                              '+10',
                              style: KText.r16Comfortaa,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Gap.height(),
                  CustomizedButton(
                    onTap: () {
                      Get.to(() => const FindPartnerScreen(),
                          transition: Transition.native);
                    },
                    text: 'Find a partner',
                    fontStyle: KText.r18w5White,
                    backgroundColor: CustomColors.black,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
