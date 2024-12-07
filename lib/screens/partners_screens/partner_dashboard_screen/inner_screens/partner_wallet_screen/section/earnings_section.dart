import 'dart:async';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:dhoond/components/map_view.dart';
import 'package:dhoond/components/shadow_container.dart';
import 'package:dhoond/data/extensions/extensions.dart';
import 'package:dhoond/screens/partners_screens/partner_dashboard_screen/inner_screens/partner_wallet_screen/inner_screen/reward_screen/reward_screen.dart';
import 'package:dhoond/utilities/assets_paths/assets_paths.dart';
import 'package:dhoond/utilities/core/kboxshadow.dart';
import 'package:dhoond/utilities/core/kpadding.dart';
import 'package:dhoond/utilities/core/kradius.dart';
import 'package:dhoond/utilities/custom_image/custom_image.dart';
import 'package:dhoond/utilities/gap/gap.dart';
import 'package:dhoond/utilities/theme/ktext_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../../../../utilities/constant/constant.dart';
import '../../../../../../utilities/custom_colors/custom_colors.dart';
import '../components/target_slider.dart';

class EarningsSection extends StatefulWidget {
  const EarningsSection({
    super.key,
  });

  @override
  State<EarningsSection> createState() => _EarningsSectionState();
}

class _EarningsSectionState extends State<EarningsSection> {
  bool isDropShow = false;
  double targetedValue = 0;

  // Add a method to handle slider changes
  void _onSliderChange(double value) {
    setState(() {
      targetedValue = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    final Completer<GoogleMapController> controller =
        Completer<GoogleMapController>();
    const CameraPosition kGooglePlex = CameraPosition(
      target: LatLng(21.1280447, 79.0079838),
      zoom: 14.4746,
    );
    return Column(
      children: [
        // SizedBox(
        //   height: 85.h,
        //   child: ListView.separated(
        //       scrollDirection: Axis.horizontal,
        //       reverse: true,
        //       padding: KPadding.symmetric(15, 0),
        //       itemBuilder: (context, index) => Container(
        //             padding:
        //                 KPadding.only(left: 30, top: 15, bottom: 15, right: 15),
        //             decoration: BoxDecoration(
        //                 color: index == 1
        //                     ? CustomColors.blueIncome
        //                     : CustomColors.yellowIncome,
        //                 borderRadius: kBorderRadius10),
        //             child: Column(
        //               mainAxisAlignment: MainAxisAlignment.center,
        //               children: [
        //                 Text(
        //                   index == 1 ? '₹1,20,000' : '₹1,76,000',
        //                   style: KText.r20w7,
        //                 ),
        //                 Text(
        //                   index == 1 ? 'Your Net Income' : 'Your Gross Income',
        //                   style: KText.r14w6,
        //                 ),
        //               ],
        //             ),
        //           ),
        //       separatorBuilder: (context, index) => Gap.width(),
        //       itemCount: 2),
        // ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 65.h,
              padding: KPadding.only(left: 30, right: 15),
              decoration: BoxDecoration(
                  color: CustomColors.blueIncome, borderRadius: kBorderRadius5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '₹1,20,000',
                    style: KText.r20w7,
                  ),
                  Text(
                    'Your Net Income',
                    style: KText.r14w6,
                  ),
                ],
              ),
            ),
            Gap.width(),
            Container(
              height: 65.h,
              padding: KPadding.only(left: 30, right: 15),
              decoration: BoxDecoration(
                  color: CustomColors.yellowIncome,
                  borderRadius: kBorderRadius5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '₹1,76,000',
                    style: KText.r20w7,
                  ),
                  Text(
                    'Your Gross Income',
                    style: KText.r14w6,
                  ),
                ],
              ),
            ),
          ],
        ),
        Gap.height(10),
        const Divider(
          color: CustomColors.dividerGrey,
        ),
        Gap.height(10),
        ShadowContainer(
            borderRadius: kBorderRadius8,
            padding: KPadding.vertical20,
            margin: KPadding.horizontal15,
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      'Set Your Target',
                      style: KText.r18w5,
                    ).mOnly(right: 5),
                    Image.asset(
                      IconPath.target,
                      height: 25.h,
                    )
                  ],
                ).mOnly(bottom: 15, left: 25, right: 25),
                TargetSlider(onSliderChange: _onSliderChange),
              ],
            )),
        Gap.height(),
        ShadowContainer(
            margin: KPadding.horizontal15,
            borderRadius: kBorderRadius5,
            disableShadow: true,
            backgroundColor: CustomColors.gradientGrey1,
            padding: KPadding.symmetric(25, 35),
            child: Row(
              children: [
                Text(
                  'Target Amount',
                  style: KText.r18w5,
                ),
                const Spacer(),
                Text(
                  '₹${targetedValue.toStringAsFixed(0).commaDenote}',
                  style: KText.r30w7,
                )
              ],
            )),
        Gap.height(18),
        Row(
          children: [
            Text(
              'What rewards you will get?',
              style: KText.r18w5,
            ),
            const Spacer(),
            InkWell(
              onTap: () {
                setState(() {
                  isDropShow = !isDropShow;
                });
              },
              child: Icon(
                isDropShow
                    ? Icons.keyboard_arrow_up
                    : Icons.keyboard_arrow_down,
                size: 28.h,
              ),
            )
          ],
        ).mSymmetric(15),
        Gap.height(10),
        if (isDropShow)
          ShadowContainer(
              padding: KPadding.all15,
              margin: KPadding.horizontal15,
              borderRadius: kBorderRadius10,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Targeted Amount',
                        style: KText.r14w5,
                      ),
                      Text(
                        '₹${targetedValue.toStringAsFixed(0).commaDenote}',
                        style: KText.r14w5,
                      ),
                    ],
                  ).mOnly(bottom: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Projected revenue',
                        style: KText.r14w5,
                      ),
                      Text(
                        '₹73,800',
                        style: KText.r14w5,
                      ),
                    ],
                  ).mOnly(bottom: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Jobs Per Day',
                        style: KText.r14w5,
                      ),
                      Text(
                        '7 jobs',
                        style: KText.r14w5,
                      ),
                    ],
                  ).mOnly(bottom: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Average Order Value',
                        style: KText.r14w5,
                      ),
                      Text(
                        '₹1,500',
                        style: KText.r14w5,
                      ),
                    ],
                  ).mOnly(bottom: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Required hours',
                        style: KText.r14w5,
                      ),
                      Text(
                        '240+ hrs',
                        style: KText.r14w5,
                      ),
                    ],
                  )
                ],
              )),
        Gap.height(),
        CarouselSlider.builder(
          itemBuilder: (context, index, realIndex) => CustomImage(
            img: 'https://i.postimg.cc/zBz8gdqr/download-4.png',
            margin: KPadding.all(6),
            borderRadius: kBorderRadius6,
          ),
          itemCount: 3,
          options: CarouselOptions(
            height: 150.0,
            enlargeCenterPage: false,
            autoPlay: true,
            enlargeFactor: 0.2,
            aspectRatio: 16 / 9,
            autoPlayCurve: Curves.fastOutSlowIn,
            onPageChanged: (index, reason) {},
            enableInfiniteScroll: true,
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            viewportFraction: 0.85,
          ),
        ),
        Gap.height(8),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            InkWell(
              onTap: () {
                Get.to(() => const RewardScreen());
              },
              child: Text(
                'Explore Rewards ',
                style: KText.r14w5,
              ),
            ),
            Icon(
              MaterialCommunityIcons.arrow_right_circle,
              size: 25.h,
            )
          ],
        ).mSymmetric(15),
        Gap.height(10),
        const Divider(
          color: CustomColors.dividerGrey,
        ),
        Gap.height(10),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              SimpleLineIcons.location_pin,
              size: 25.h,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Location to focus (Suggestions)',
                  style: KText.r18w5,
                ),
                Text(
                  'Near by range 7Km to 10Km',
                  style: KText.r14,
                ),
              ],
            ).mOnly(left: 10),
          ],
        ).mSymmetric(15),
        Gap.height(),
        MapView(kGooglePlex: kGooglePlex, controller: controller),
        Gap.height(),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              SimpleLineIcons.location_pin,
              size: 15.h,
            ),
            Gap.width(25),
            Expanded(
              child: Text.rich(
                TextSpan(children: [
                  TextSpan(text: 'Nagpur ', style: KText.r12w5),
                  TextSpan(
                      text: 'International Airport Sonegaon, Nagpur',
                      style: KText.r12w4)
                ]),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Gap.width(25),
            Text(
              '32+ Works',
              style: KText.r15BoldGreen,
            ),
          ],
        ).mSymmetric(15, 5),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              SimpleLineIcons.location_pin,
              size: 15.h,
            ),
            Gap.width(25),
            Expanded(
              child: Text.rich(
                TextSpan(children: [
                  TextSpan(text: 'Nagpur ', style: KText.r12w5),
                  TextSpan(
                      text: 'International Airport Sonegaon, Nagpur',
                      style: KText.r12w4)
                ]),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Gap.width(25),
            Text(
              '32+ Works',
              style: KText.r15BoldGreen,
            ),
          ],
        ).mSymmetric(15, 5),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              SimpleLineIcons.location_pin,
              size: 15.h,
            ),
            Gap.width(25),
            Expanded(
              child: Text.rich(
                TextSpan(children: [
                  TextSpan(text: 'Nagpur ', style: KText.r12w5),
                  TextSpan(
                      text: 'International Airport Sonegaon, Nagpur',
                      style: KText.r12w4)
                ]),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Gap.width(25),
            Text(
              '32+ Works',
              style: KText.r15BoldGreen,
            ),
          ],
        ).mSymmetric(15, 5),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              SimpleLineIcons.location_pin,
              size: 15.h,
            ),
            Gap.width(25),
            Expanded(
              child: Text.rich(
                TextSpan(children: [
                  TextSpan(text: 'Nagpur ', style: KText.r12w5),
                  TextSpan(
                      text: 'International Airport Sonegaon, Nagpur',
                      style: KText.r12w4)
                ]),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Gap.width(25),
            Text(
              '32+ Works',
              style: KText.r15BoldGreen,
            ),
          ],
        ).mSymmetric(15, 5),
        Gap.height(),
        const Divider(
          color: CustomColors.dividerGrey,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Customer Feedback',
              style: KText.r18w5,
            ),
            const Icon(
              MaterialCommunityIcons.message_reply_text_outline,
              size: 25,
            )
          ],
        ).mSymmetric(15, 15),
        CarouselSlider.builder(
          itemBuilder: (context, index, realIndex) => ShadowContainer(
              margin: KPadding.horizontal5,
              borderRadius: kBorderRadius5,
              disableShadow: true,
              backgroundColor: CustomColors.gradientGrey1,
              padding: KPadding.all18,
              child: Column(
                children: [
                  Row(
                    children: [
                      CustomImage(
                        img: ImagePath.profileAvatar,
                        height: 45.h,
                        width: 45.w,
                        imageType: ImageType.asset,
                        shape: BoxShape.circle,
                      ),
                      Gap.width(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Meraj Alam',
                            style: KText.r14w6,
                          ),
                          Row(
                            children: [
                              RatingBar.builder(
                                initialRating: 4.5,
                                minRating: 1,
                                direction: Axis.horizontal,
                                allowHalfRating: true,
                                itemCount: 5,
                                itemSize: 10.w,
                                itemPadding: KPadding.none,
                                unratedColor: CustomColors.white,
                                itemBuilder: (context, _) => const Icon(
                                  Icons.star,
                                  color: CustomColors.grey,
                                ),
                                onRatingUpdate: (rating) {},
                              ),
                              Text(
                                '2023-09-15',
                                style: KText.r12Grey,
                              )
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  Gap.height(),
                  Text(
                    'Great service, very satisfied with the quality and quick service.',
                    style: KText.r18,
                  ),
                  Gap.height(),
                  Row(
                    children: [
                      Icon(
                        Feather.thumbs_up,
                        size: 25.h,
                        color: CustomColors.grey,
                      ),
                      Gap.width(),
                      Icon(
                        Feather.thumbs_down,
                        size: 25.h,
                        color: CustomColors.grey,
                      ),
                    ],
                  )
                ],
              )),
          itemCount: 3,
          options: CarouselOptions(
            height: 200.h,
            enlargeCenterPage: false,
            autoPlay: false,
            enlargeFactor: 0.2,
            aspectRatio: 16 / 9,
            autoPlayCurve: Curves.fastOutSlowIn,
            onPageChanged: (index, reason) {},
            enableInfiniteScroll: true,
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            viewportFraction: 0.9,
          ),
        ),
        Gap.height(),
        const Divider(
          color: CustomColors.dividerGrey,
        ),
        Gap.height(),
        Gap.height(120),
      ],
    );
  }
}
