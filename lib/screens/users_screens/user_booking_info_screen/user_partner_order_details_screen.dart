import 'package:dhoond/components/shadow_container.dart';
import 'package:dhoond/data/extensions/extensions.dart';
import 'package:dhoond/screens/users_screens/components/price_and_charges_card.dart';
import 'package:dhoond/utilities/assets_paths/assets_paths.dart';
import 'package:dhoond/utilities/constant/constant.dart';
import 'package:dhoond/utilities/core/kpadding.dart';
import 'package:dhoond/utilities/core/kradius.dart';
import 'package:dhoond/utilities/custom_colors/custom_colors.dart';
import 'package:dhoond/utilities/custom_image/custom_image.dart';
import 'package:dhoond/utilities/gap/gap.dart';
import 'package:dhoond/utilities/theme/ktext_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class UserPartnerOrderDetails extends StatefulWidget {
  const UserPartnerOrderDetails({super.key});

  @override
  State<UserPartnerOrderDetails> createState() =>
      _UserPartnerOrderDetailsState();
}

class _UserPartnerOrderDetailsState extends State<UserPartnerOrderDetails> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Gap.height(15),
            Padding(
              padding: KPadding.symmetric(16, 10),
              child: Row(
                children: [
                  const Spacer(
                    flex: 4,
                  ),
                  Text(
                    'Order Details',
                    style: KText.r15Bold,
                  ),
                  const Spacer(
                    flex: 3,
                  ),
                  InkWell(
                    onTap: () {
                      Get.back();
                    },
                    child: const Icon(
                      CupertinoIcons.multiply,
                      size: 25,
                    ),
                  )
                ],
              ),
            ),
            const Divider(
              color: CustomColors.gradientGrey1,
            ),
            Padding(
              padding: KPadding.horizontal16,
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Service Details',
                      style: KText.r15w5,
                    ),
                  ).mOnly(left: 2, top: 25, bottom: 12),
                  ShadowContainer(
                      borderRadius: kBorderRadius8,
                      border: kBorderAllGrey2,
                      padding: KPadding.only(left: 20, right: 25, top: 25),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              const CustomImage(
                                img: ImagePath.carpenter1,
                                height: 35,
                                width: 35,
                                shape: BoxShape.circle,
                                imageType: ImageType.asset,
                              ),
                              Gap.width(20),
                              Text(
                                'Chandan Kumar',
                                style: KText.r14w5,
                              ),
                              const Spacer()
                            ],
                          ),
                          Gap.height(15),
                          const Divider(
                            color: CustomColors.gradientGrey1,
                          ),
                          Gap.height(10),
                          Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Date',
                                    style: KText.r12Grey,
                                  ),
                                  Gap.height(3),
                                  Text(
                                    'Sat, September 08',
                                    style: KText.r13,
                                  )
                                ],
                              ),
                              const Spacer(),
                              Container(
                                height: 40,
                                width: 1,
                                color: CustomColors.gradientGrey1,
                              ),
                              const Spacer(),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Address',
                                    style: KText.r12Grey,
                                  ),
                                  Gap.height(3),
                                  Text(
                                    'MIDC, Nagpur',
                                    style: KText.r13,
                                  )
                                ],
                              ),
                              const Spacer(),
                            ],
                          ),
                          Gap.height(7),
                          const Divider(
                            color: CustomColors.gradientGrey1,
                          ),
                          Gap.height(10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Service type',
                                style: KText.r12Grey,
                              ),
                              Gap.height(3),
                              Text(
                                'Carpenter',
                                style: KText.r13,
                              )
                            ],
                          ),
                          Gap.height(7),
                          const Divider(
                            color: CustomColors.gradientGrey1,
                          ),
                          Gap.height(12)
                        ],
                      )),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Order Summary',
                      style: KText.r15w5,
                    ),
                  ).mOnly(left: 2, bottom: 12, top: 25),
                  const PriceAndChargesCard(
                      price: '420',
                      gst: '29.55',
                      gatewayCharges: '19.55',
                      grandTotal: '499.56'),
                  Gap.height(20)
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
