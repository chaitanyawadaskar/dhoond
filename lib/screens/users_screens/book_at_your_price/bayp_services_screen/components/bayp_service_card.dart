import 'package:dhoond/data/extensions/extensions.dart';
import 'package:dhoond/screens/users_screens/book_at_your_price/bayp_service_info/bayp_service_info.dart';
import 'package:dhoond/utilities/custom_image/custom_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:get/get.dart';

import '../../../../../components/dash_dot_line.dart';
import '../../../../../utilities/core/kpadding.dart';
import '../../../../../utilities/core/kradius.dart';
import '../../../../../utilities/custom_colors/custom_colors.dart';
import '../../../../../utilities/gap/gap.dart';
import '../../../../../utilities/theme/ktext_theme.dart';

class BaypServiceCard extends StatefulWidget {
  const BaypServiceCard({
    super.key,
    required this.title,
    required this.img,
    this.disableDotLine = false,
  });
  final String title;
  final String img;
  final bool disableDotLine;
  @override
  State<BaypServiceCard> createState() => _BaypServiceCardState();
}

class _BaypServiceCardState extends State<BaypServiceCard> {
  int quantity = 0;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.to(() => const BaypServiceInfoScreen());
      },
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.title,
                    style: KText.r15Bold,
                  ),
                  Row(
                    children: [
                      Text(
                        '4/5',
                        style: KText.r11Bold,
                      ).mOnly(top: 7),
                      Gap.width(5),
                      Icon(
                        Fontisto.star,
                        color: CustomColors.black,
                        size: 12.h,
                      ),
                      Gap.width(5),
                      Text(
                        '(3.4k reviewa)',
                        style: KText.r12,
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'EST. ₹129 onwards ',
                        style: KText.r14Bold,
                      ),
                      Container(
                        margin: KPadding.horizontal10,
                        padding: KPadding.all(2),
                        decoration: const BoxDecoration(
                          color: CustomColors.black,
                        ),
                      ),
                      Text(
                        '30 mins',
                        style: KText.r12,
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        margin: KPadding.only(right: 10),
                        padding: KPadding.all(2),
                        decoration: const BoxDecoration(
                          color: CustomColors.black,
                        ),
                      ),
                      Text(
                        'Installation only',
                        style: KText.r12,
                      )
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 140.h,
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      height: 121.h,
                      width: 121.h,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: CustomColors.gradientGrey,
                          borderRadius: kBorderRadius10),
                      child: CustomImage(
                        img: widget.img,
                        color: CustomColors.gradientGrey,
                        height: 60.w,
                        width: 80.w,
                      ),
                    ),
                    Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  border: kBorderAll,
                                  color: CustomColors.white,
                                  borderRadius: kBorderRadius6),
                              child: Row(
                                children: [
                                  IconButton(
                                      onPressed: () {
                                        if (quantity > 0) {
                                          setState(() {
                                            quantity--;
                                          });
                                        }
                                      },
                                      visualDensity: const VisualDensity(
                                          horizontal: -4, vertical: -4),
                                      icon: const Icon(
                                        AntDesign.minus,
                                        size: 15,
                                      )),
                                  Text(
                                    '$quantity',
                                    style: KText.r12,
                                  ),
                                  IconButton(
                                      visualDensity: const VisualDensity(
                                          horizontal: -4, vertical: -4),
                                      onPressed: () {
                                        setState(() {
                                          quantity++;
                                        });
                                      },
                                      icon: const Icon(
                                        Icons.add,
                                        size: 15,
                                      )),
                                ],
                              ),
                            ),
                          ],
                        ))
                  ],
                ),
              )
            ],
          ),
          Gap.height(25),
          Visibility(
            visible: !widget.disableDotLine,
            child: const DashDotLine(
              dashWidth: 4,
            ),
          )
        ],
      ),
    );
  }
}
