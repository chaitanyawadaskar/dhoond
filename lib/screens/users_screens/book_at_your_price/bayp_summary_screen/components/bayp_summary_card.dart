import 'package:dhoond/data/extensions/extensions.dart';
import 'package:dhoond/utilities/custom_image/custom_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

import '../../../../../utilities/core/kpadding.dart';
import '../../../../../utilities/core/kradius.dart';
import '../../../../../utilities/custom_colors/custom_colors.dart';
import '../../../../../utilities/gap/gap.dart';
import '../../../../../utilities/theme/ktext_theme.dart';

class BAYPSummaryCard extends StatefulWidget {
  const BAYPSummaryCard({
    super.key,
    required this.title,
    required this.price,
    required this.img,
  });
  final String title;
  final String img;
  final String price;

  @override
  State<BAYPSummaryCard> createState() => _BAYPSummaryCardState();
}

class _BAYPSummaryCardState extends State<BAYPSummaryCard> {
  int quantity = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 90.h,
          width: 90.h,
          padding: KPadding.all15,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: CustomColors.gradientGrey, borderRadius: kBorderRadius10),
          child: CustomImage(
            img: widget.img,
          ),
        ),
        Gap.width(),
        Expanded(
          flex: 2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.title,
                style: KText.r15Bold,
              ),
              Row(
                children: [
                  Text(
                    widget.price.rupee,
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
            ],
          ),
        ),
        Gap.width(),
        Row(
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
                      visualDensity:
                          const VisualDensity(horizontal: -4, vertical: -4),
                      icon: const Icon(
                        AntDesign.minus,
                        size: 15,
                      )),
                  Text(
                    '$quantity',
                    style: KText.r12,
                  ),
                  IconButton(
                      visualDensity:
                          const VisualDensity(horizontal: -4, vertical: -4),
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
        )
      ],
    );
  }
}
