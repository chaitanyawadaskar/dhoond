import 'package:animate_do/animate_do.dart';
import 'package:dhoond/data/extensions/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../components/animated_button.dart';
import '../../../../../utilities/assets_paths/assets_paths.dart';
import '../../../../../utilities/core/kpadding.dart';
import '../../../../../utilities/core/kradius.dart';
import '../../../../../utilities/custom_colors/custom_colors.dart';
import '../../../../../utilities/gap/gap.dart';
import '../../../../../utilities/theme/ktext_theme.dart';

class PartnerFareCard extends StatelessWidget {
  const PartnerFareCard({
    super.key,
    required this.onAccept,
    required this.price,
  });
  final VoidCallback onAccept;
  final String price;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          margin: KPadding.horizontal10,
          decoration: BoxDecoration(
              color: CustomColors.white, borderRadius: kBorderRadius10),
          child: Column(
            children: [
              Gap.height(5),
              Padding(
                padding: KPadding.horizontal10,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 50.w,
                          width: 50.w,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: AssetImage(
                                    ImagePath.profileAvatar,
                                  ),
                                  fit: BoxFit.cover)),
                        ),
                        Gap.width(20),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Shubham raut',
                                  style: KText.r20w5,
                                ),
                                Gap.width(),
                                Icon(
                                  Icons.star,
                                  color: CustomColors.amber,
                                  size: 20.h,
                                ),
                                Text(
                                  '4/5',
                                  style: KText.r16Bold,
                                )
                              ],
                            ),
                            Text(
                              'sent you his working price',
                              style: KText.r14Grey,
                            ),
                          ],
                        )
                      ],
                    ),
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
                                price.rupee,
                                style: KText.r24Comfortaa,
                              ),
                              Container(
                                height: 44.h,
                                width: 86.h,
                                decoration: BoxDecoration(
                                  borderRadius: kBorderRadius10,
                                  border: kBorderAll,
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
                          onTap: onAccept,
                        ),
                        Gap.height(10),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
