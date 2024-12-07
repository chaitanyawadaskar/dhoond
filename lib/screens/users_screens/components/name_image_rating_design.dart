import 'package:dhoond/utilities/core/ksizedbox.dart';
import 'package:dhoond/utilities/gap/gap.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:marquee/marquee.dart';

import '../../../utilities/assets_paths/assets_paths.dart';
import '../../../utilities/constant/constant.dart';
import '../../../utilities/core/kpadding.dart';
import '../../../utilities/core/kradius.dart';
import '../../../utilities/custom_colors/custom_colors.dart';
import '../../../utilities/theme/ktext_theme.dart';
import '../../../components/check_online_container.dart';

class NameImageRatingDesign extends StatelessWidget {
  const NameImageRatingDesign({
    super.key,
    this.type = ServiceProviderType.none,
  });
  final ServiceProviderType type;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CheckOnlineContainer(
          isOnline: true,
          child: Container(
            height: 48.w,
            width: 48.w,
            decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage(
                      ImagePath.electricalMan,
                    ),
                    fit: BoxFit.cover)),
          ),
        ),
        const SizedBoxWidth(
          width: 10,
        ),
        Expanded(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        padding: KPadding.horizontal(5),
                        decoration: BoxDecoration(
                            color: CustomColors.yellow,
                            borderRadius: kBorderRadius6),
                        child: SizedBox(
                          width: 55.w,
                          height: 20.w,
                          child: Marquee(
                            text: ' Electrician',
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
                      const Visibility(
                        // visible: type != ServiceProviderType.customerCoice,
                        child: SizedBoxWidth(
                          width: 5,
                        ),
                      ),
                      Visibility(
                        visible: type == ServiceProviderType.assured,
                        child: Container(
                          padding: KPadding.symmetric(4, 2),
                          decoration: BoxDecoration(
                              border: kBorderAll,
                              borderRadius: kBorderRadius30),
                          child: Row(
                            children: [
                              Image.asset(
                                ImagePath.dhoond,
                                height: 12.h,
                              ),
                              Text(
                                'Assured ',
                                style: KText.r10,
                              ),
                              Image.asset(
                                ImagePath.diamond,
                                height: 14.h,
                              )
                            ],
                          ),
                        ),
                      ),
                      Visibility(
                        visible: type == ServiceProviderType.customerCoice,
                        child: Container(
                          padding: KPadding.horizontal(2),
                          decoration: BoxDecoration(
                              border: kBorderAll,
                              borderRadius: kBorderRadius30),
                          child: Row(
                            children: [
                              Text(
                                'Customer\'s Choice',
                                style: KText.r11,
                              ),
                              Image.asset(
                                ImagePath.thumsUp,
                                height: 15.h,
                              )
                            ],
                          ),
                        ),
                      ),
                      Visibility(
                        visible: type == ServiceProviderType.starPerformer,
                        child: Container(
                          padding: KPadding.horizontal(2),
                          decoration: BoxDecoration(
                              border: kBorderAll,
                              borderRadius: kBorderRadius30),
                          child: Row(
                            children: [
                              Text(
                                'Star Performer',
                                style: KText.r10,
                              ),
                              Image.asset(
                                ImagePath.star,
                                height: 15.h,
                              )
                            ],
                          ),
                        ),
                      ),
                      Visibility(
                        visible: type == ServiceProviderType.topPerformer,
                        child: Container(
                          padding: KPadding.horizontal(2),
                          decoration: BoxDecoration(
                              border: kBorderAll,
                              borderRadius: kBorderRadius30),
                          child: Row(
                            children: [
                              Text(
                                'Top Performer',
                                style: KText.r10,
                              ),
                              Image.asset(
                                ImagePath.medal,
                                height: 15.h,
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const SizedBoxWidth(
                        width: 5,
                      ),
                      Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Container(
                            padding: KPadding.only(
                                left: 28, right: 2, top: 2, bottom: 2),
                            decoration: BoxDecoration(
                              border: kBorderAll,
                              borderRadius: kBorderRadius4,
                            ),
                            child: RatingBar.builder(
                              initialRating: 4.5,
                              minRating: 1,
                              direction: Axis.horizontal,
                              allowHalfRating: true,
                              itemCount: 5,
                              itemSize: 10.w,
                              itemPadding: KPadding.none,
                              itemBuilder: (context, _) => const Icon(
                                Icons.star,
                                color: CustomColors.amber,
                              ),
                              onRatingUpdate: (rating) {},
                            ),
                          ),
                          Positioned(
                              top: -3,
                              left: 5,
                              child: Container(
                                height: 21.w,
                                width: 21.w,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    border: kBorderAll,
                                    color: CupertinoColors.white,
                                    borderRadius: kBorderRadius5),
                                child: Text(
                                  '4.5',
                                  style: KText.r10Bold,
                                ),
                              ))
                        ],
                      )
                    ],
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Chandan Kumar',
                    style: KText.r16ComfortaaW7,
                  ),
                  Text(
                    'Views 4.5k',
                    style: KText.r12Bold,
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text.rich(TextSpan(children: [
                        TextSpan(text: 'Age - ', style: KText.r12w5),
                        TextSpan(text: '29 Yrs', style: KText.r12w4)
                      ])),
                      Row(
                        children: [
                          Text.rich(TextSpan(children: [
                            TextSpan(text: 'Exp. ', style: KText.r12w5),
                            TextSpan(text: '2+ Yrs', style: KText.r12w4)
                          ])),
                          Gap.width(10),
                          Row(
                            children: [
                              Icon(
                                CupertinoIcons.person_2,
                                size: 12.w,
                              ),
                              Gap.width(5),
                              Text(
                                '4+Team',
                                style: KText.r12,
                              )
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  Text.rich(
                    TextSpan(children: [
                      TextSpan(text: '299Rs ', style: KText.r12Bold),
                      TextSpan(text: 'onwards', style: KText.r12)
                    ]),
                  )
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
