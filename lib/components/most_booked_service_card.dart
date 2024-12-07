import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utilities/core/kboxshadow.dart';
import '../utilities/core/kpadding.dart';
import '../utilities/core/kradius.dart';
import '../utilities/core/ksizedbox.dart';
import '../utilities/custom_colors/custom_colors.dart';
import '../utilities/theme/ktext_theme.dart';

class MostBookedServiceCard extends StatelessWidget {
  const MostBookedServiceCard({
    super.key,
    required this.image,
    required this.title,
    required this.rating,
    required this.noOfVote,
  });
  final String image;
  final String title;
  final String rating;
  final String noOfVote;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: KPadding.all(3),
          decoration: BoxDecoration(
            color: CustomColors.white,
            borderRadius: kBorderRadius6,
            boxShadow: KBoxShadow.grey,
          ),
          child: Container(
            width: 190.w,
            height: 112.h,
            decoration: BoxDecoration(
                borderRadius: kBorderRadius6,
                image: DecorationImage(
                    fit: BoxFit.cover, image: AssetImage(image))),
          ),
        ),
        const SizedBoxHeight(
          height: 10,
        ),
        Text(
          title,
          style: KText.r15Bold,
        ),
        const SizedBoxHeight(
          height: 10,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.star_rounded,
              color: CustomColors.black,
              size: 25.w,
            ),
            Text(
              '$rating ($noOfVote)',
              style: KText.r10Comfortaa,
            )
          ],
        )
      ],
    );
  }
}
