import 'package:customize_button/customize_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../components/shadow_container.dart';
import '../../../../../../utilities/assets_paths/assets_paths.dart';
import '../../../../../../utilities/core/kpadding.dart';
import '../../../../../../utilities/core/kradius.dart';
import '../../../../../../utilities/core/ksizedbox.dart';
import '../../../../../../utilities/custom_colors/custom_colors.dart';
import '../../../../../../utilities/theme/ktext_theme.dart';

class DoneCard extends StatelessWidget {
  const DoneCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ShadowContainer(
        borderRadius: kBorderRadius10,
        padding: KPadding.all15,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 43.w,
              width: 43.w,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage(
                        ImagePath.electricalMan,
                      ),
                      fit: BoxFit.cover)),
            ),
            const SizedBoxWidth(),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Shanti Shende',
                        style: KText.r15ComfortaaW5,
                      ),
                      Container(
                        padding: KPadding.horizontal(5),
                        decoration: BoxDecoration(
                            color: CustomColors.yellow,
                            borderRadius: kBorderRadius6),
                        child: Text(
                          'Plumber',
                          style: KText.r12Bold,
                        ),
                      ),
                    ],
                  ),
                  Text.rich(TextSpan(children: [
                    TextSpan(
                        text: 'Work complete on monday ',
                        style: KText.r12Comfortaa),
                    TextSpan(text: '3:45 pm', style: KText.r12ComfortaaW7)
                  ])),
                  Text.rich(TextSpan(children: [
                    TextSpan(text: 'Payment Done ', style: KText.r12Comfortaa),
                    TextSpan(text: '586 Rs.', style: KText.r12ComfortaaW7)
                  ])),
                  const SizedBoxHeight(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      CustomizedButton(
                        onTap: () {},
                        fontStyle: KText.r14Bold,
                        elevation: 0,
                        pad: KPadding.horizontal30,
                        borderRadius: 5,
                        borderColor: CustomColors.grey,
                        backgroundColor: CustomColors.white,
                        enableBorder: true,
                        text: 'Book Again',
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
