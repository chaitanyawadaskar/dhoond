import 'package:dhoond/data/extensions/extensions.dart';
import 'package:dhoond/utilities/assets_paths/assets_paths.dart';
import 'package:dhoond/utilities/constant/constant.dart';
import 'package:dhoond/utilities/core/kpadding.dart';
import 'package:dhoond/utilities/core/kradius.dart';
import 'package:dhoond/utilities/gap/gap.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../components/animated_dot.dart';
import '../../../../../../utilities/custom_image/custom_image.dart';

class BannerSection extends StatefulWidget {
  const BannerSection({
    super.key,
  });

  @override
  State<BannerSection> createState() => _BannerSectionState();
}

class _BannerSectionState extends State<BannerSection> {
  int activePage = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider.builder(
          itemBuilder: (context, index, realIndex) => CustomImage(
            img: 'https://i.postimg.cc/G28T4bTw/Artboard-4-2-1.png',
            margin: KPadding.all(6),
            borderRadius: kBorderRadius6,
          ),
          itemCount: 3,
          options: CarouselOptions(
            height: 160.h,
            enlargeCenterPage: false,
            autoPlay: false,
            aspectRatio: 16 / 9,
            autoPlayCurve: Curves.fastOutSlowIn,
            onPageChanged: (index, reason) {
              setState(() {
                activePage = index;
              });
            },
            enableInfiniteScroll: false,
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            viewportFraction: 1,
          ),
        ).mSymmetric(15),
        CustomImage(
          img: 'https://i.postimg.cc/6QqNN90L/Artboard-4-2-2.png',
          height: 70.w,
          width: 365.w,
        ).mSymmetric(15, 10),
        // Gap.height(10),
        // Row(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   children: List.generate(
        //     3,
        //     (index) => Padding(
        //       padding: const EdgeInsets.only(right: 6),
        //       child: AnimatedDot(isActive: activePage == index),
        //     ),
        //   ),
        // ),
      ],
    );
  }
}
