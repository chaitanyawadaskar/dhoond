import 'package:dhoond/data/extensions/extensions.dart';
import 'package:dhoond/screens/partners_screens/work_place_live_location/work_place_live_location.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:get/get.dart';

import '../../../../../../components/animated_button.dart';
import '../../../../../../components/shadow_container.dart';
import '../../../../../../utilities/assets_paths/assets_paths.dart';
import '../../../../../../utilities/core/kboxshadow.dart';
import '../../../../../../utilities/core/kpadding.dart';
import '../../../../../../utilities/core/kradius.dart';
import '../../../../../../utilities/custom_colors/custom_colors.dart';
import '../../../../../../utilities/custom_image/custom_image.dart';
import '../../../../../../utilities/gap/gap.dart';
import '../../../../../../utilities/theme/ktext_theme.dart';
import '../../../../partner_work_confimation_screen/partner_work_confimation_screen.dart';

class LeadTopSheet extends StatefulWidget {
  const LeadTopSheet({
    super.key,
  });

  @override
  State<LeadTopSheet> createState() => _LeadTopSheetState();
}

class _LeadTopSheetState extends State<LeadTopSheet> {
  bool isExpanded = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          decoration: BoxDecoration(
              color: CustomColors.bgGrey2, borderRadius: kBorderRadius15),
          padding: KPadding.symmetric(15, 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 200.w,
                child: Text(
                  '2+ inquiries awaiting confirmation',
                  style: KText.r12w5,
                ),
              ),
              Row(
                children: [
                  SizedBox(
                    width: 50.w,
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
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        ShadowContainer(
            backgroundColor: CustomColors.white,
            boxShadow: KBoxShadow.faintGrey,
            borderRadius: kBorderRadius15,
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    Get.back(closeOverlays: true);
                  },
                  child: Container(
                    alignment: Alignment.topRight,
                    padding: KPadding.only(top: 15, right: 15),
                    child: Icon(
                      CupertinoIcons.multiply,
                      size: 30.w,
                    ),
                  ),
                ),
                Padding(
                  padding: KPadding.horizontal10,
                  child: Column(
                    children: [
                      Padding(
                        padding: KPadding.horizontal30,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Prathamesh Dolaskar',
                                  style: KText.r18w5,
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Icon(
                                      Icons.location_pin,
                                      size: 15,
                                      color: CustomColors.grey,
                                    ),
                                    Text(
                                      'Nagpur Mahajanwadi hingn',
                                      style: KText.r14Grey,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Container(
                              height: 70.w,
                              width: 70.w,
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                      image: AssetImage(
                                        ImagePath.profileAvatar,
                                      ),
                                      fit: BoxFit.cover)),
                            ),
                          ],
                        ),
                      ),
                      if (isExpanded)
                        ListView.builder(
                            shrinkWrap: true,
                            itemBuilder: (context, index) {
                              return ShadowContainer(
                                margin: KPadding.vertical5,
                                // boxShadow: KBoxShadow.cardShadow,
                                disableShadow: true,
                                border: kBorderAllGrey2,
                                padding: KPadding.only(
                                    top: 10, bottom: 10, left: 10),
                                borderRadius: kBorderRadius8,
                                child: Row(
                                  children: [
                                    Container(
                                      height: 80.w,
                                      width: 80.w,
                                      decoration: BoxDecoration(
                                          color: CustomColors.gradientGrey,
                                          borderRadius: kBorderRadius10),
                                      child: Center(
                                        child: CustomImage(
                                          img:
                                              'https://i.postimg.cc/Sx3cg4G5/images-1.jpg',
                                          color: CustomColors.gradientGrey,
                                          height: 55.w,
                                          width: 55.w,
                                        ),
                                      ),
                                    ),
                                    Gap.width(),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            SizedBox(
                                              width: 150.w,
                                              child: Text(
                                                'Switch & Socket installation',
                                                style: KText.r14w5,
                                              ),
                                            ),
                                            Row(
                                              children: [
                                                Text(
                                                  '₹129',
                                                  style: KText.r14Bold,
                                                ),
                                                Container(
                                                  margin: KPadding.horizontal10,
                                                  padding: KPadding.all(2),
                                                  decoration:
                                                      const BoxDecoration(
                                                    color: CustomColors.black,
                                                  ),
                                                ),
                                                Text(
                                                  '30 mins',
                                                  style: KText.r12,
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                        Container(
                                          height: 44.h,
                                          width: 86.h,
                                          decoration: BoxDecoration(
                                              borderRadius: kBorderRadius10,
                                              border: kBorderAll
                                              // color: CustomColors.gradientGrey,
                                              ),
                                          alignment: Alignment.center,
                                          child: Text(
                                            'Qty: 05',
                                            style: KText.r12w5,
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              );
                            },
                            itemCount: 3),
                      Column(
                        children: [
                          Text(
                            'Offered Price',
                            style: KText.r14w5,
                          ),
                          Padding(
                            padding: KPadding.horizontal15,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: 44.h,
                                  width: 86.h,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      borderRadius: kBorderRadius10,
                                      color: CustomColors.gradientGrey),
                                  child: Text(
                                    '-10',
                                    style: KText.r16Comfortaa,
                                  ),
                                ),
                                Text(
                                  '1,380'.rs,
                                  style: KText.r24w6,
                                ),
                                Container(
                                  height: 44.h,
                                  width: 86.h,
                                  decoration: BoxDecoration(
                                    borderRadius: kBorderRadius10,
                                    color: CustomColors.gradientGrey,
                                  ),
                                  alignment: Alignment.center,
                                  child: Text(
                                    '+10',
                                    style: KText.r16Comfortaa,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Gap.height(),
                          AnimatedButton(
                            onTap: () {
                              Get.back();
                              Get.to(
                                () => const WorkPlaceLiveLocation(),
                                transition: Transition.native,
                              );
                            },
                          ),
                          // Gap.height(10),
                          IconButton(
                              onPressed: () {
                                setState(() {
                                  isExpanded = !isExpanded;
                                });
                              },
                              icon: Icon(
                                isExpanded
                                    ? Icons.keyboard_arrow_up
                                    : Icons.keyboard_arrow_down,
                                size: 25,
                              ))
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ))
      ],
    );
  }
}
