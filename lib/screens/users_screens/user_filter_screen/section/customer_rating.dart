import 'package:dhoond/components/shadow_container.dart';
import 'package:dhoond/utilities/core/kpadding.dart';
import 'package:dhoond/utilities/core/kradius.dart';
import 'package:dhoond/utilities/core/ksizedbox.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../utilities/custom_colors/custom_colors.dart';
import '../../../../utilities/theme/ktext_theme.dart';

class CustomerRating extends StatelessWidget {
  const CustomerRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: KPadding.all15,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBoxHeight(
            height: 10,
          ),
          Text(
            'Customer Rating',
            style: KText.r12Bold,
          ),
          const SizedBoxHeight(
            height: 25,
          ),
          ShadowContainer(
            disableShadow: true,
            backgroundColor: CustomColors.grey2.withOpacity(0.2),
            padding: KPadding.symmetric(15, 6),
            borderRadius: kBorderRadius5,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                RatingBar.builder(
                  initialRating: 4,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 4,
                  itemSize: 20.w,
                  itemPadding: KPadding.none,
                  itemBuilder: (context, _) => const Icon(
                    Icons.star,
                    color: CustomColors.amber,
                  ),
                  onRatingUpdate: (rating) {
                    print(rating);
                  },
                ),
                Text(
                  ' &Up',
                  style: KText.r12,
                )
              ],
            ),
          ),
          const SizedBoxHeight(),
          Row(
            children: [
              ShadowContainer(
                disableShadow: true,
                backgroundColor: CustomColors.grey2.withOpacity(0.2),
                padding: KPadding.symmetric(15, 6),
                borderRadius: kBorderRadius5,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    RatingBar.builder(
                      initialRating: 3,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 3,
                      itemSize: 20.w,
                      itemPadding: KPadding.none,
                      itemBuilder: (context, _) => const Icon(
                        Icons.star,
                        color: CustomColors.amber,
                      ),
                      onRatingUpdate: (rating) {
                        print(rating);
                      },
                    ),
                    Text(
                      ' &Up',
                      style: KText.r12,
                    )
                  ],
                ),
              ),
              const SizedBoxWidth(
                width: 10,
              ),
              ShadowContainer(
                disableShadow: true,
                backgroundColor: CustomColors.grey2.withOpacity(0.2),
                padding: KPadding.symmetric(15, 6),
                borderRadius: kBorderRadius5,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    RatingBar.builder(
                      initialRating: 2,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 2,
                      itemSize: 20.w,
                      itemPadding: KPadding.none,
                      itemBuilder: (context, _) => const Icon(
                        Icons.star,
                        color: CustomColors.amber,
                      ),
                      onRatingUpdate: (rating) {
                        print(rating);
                      },
                    ),
                    Text(
                      ' &Up',
                      style: KText.r12,
                    )
                  ],
                ),
              ),
            ],
          ),
          const SizedBoxHeight(),
          ShadowContainer(
            disableShadow: true,
            backgroundColor: CustomColors.grey2.withOpacity(0.2),
            padding: KPadding.symmetric(15, 6),
            borderRadius: kBorderRadius5,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                RatingBar.builder(
                  initialRating: 1,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 1,
                  itemSize: 20.w,
                  itemPadding: KPadding.none,
                  itemBuilder: (context, _) => const Icon(
                    Icons.star,
                    color: CustomColors.amber,
                  ),
                  onRatingUpdate: (rating) {
                    print(rating);
                  },
                ),
                Text(
                  ' &Up',
                  style: KText.r12,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
