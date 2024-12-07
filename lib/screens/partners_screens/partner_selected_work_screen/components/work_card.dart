import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:get/get.dart';

import '../../../../components/shadow_container.dart';
import '../../../../utilities/core/kpadding.dart';
import '../../../../utilities/core/kradius.dart';
import '../../../../utilities/custom_colors/custom_colors.dart';
import '../../../../utilities/gap/gap.dart';
import '../../../../utilities/theme/ktext_theme.dart';

class WorkCard extends StatelessWidget {
  const WorkCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            ShadowContainer(
              borderRadius: kBorderRadius30,
              border: kBorderAll,
              padding: KPadding.all5,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Gap.width(5),
                  SizedBox(
                    width: Get.width * 0.57,
                    child: Text(
                      'Carpenter',
                      style: KText.r14,
                    ),
                  ),
                  Gap.width(),
                  ShadowContainer(
                    border: kBorderAll,
                    padding: KPadding.symmetric(15, 0),
                    borderRadius: kBorderRadius30,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(
                          width: 15,
                          child: TextFormField(
                            decoration: InputDecoration(
                                hintText: '1',
                                isDense: true,
                                contentPadding: KPadding.only(bottom: 5),
                                hintStyle: KText.r16w5,
                                border: InputBorder.none,
                                enabledBorder: InputBorder.none,
                                focusedBorder: InputBorder.none),
                          ),
                        ),
                        Text(
                          ' Year',
                          style: KText.r14Grey,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
                top: -6,
                right: 25,
                child: Container(
                  color: CustomColors.white,
                  padding: KPadding.horizontal5,
                  child: Text(
                    'Exp',
                    style: KText.r16,
                  ),
                ))
          ],
        ),
        Icon(
          Octicons.x_circle,
          size: 25.h,
        )
      ],
    );
  }
}
