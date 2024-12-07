import 'package:dhoond/utilities/assets_paths/assets_paths.dart';
import 'package:dhoond/utilities/core/kpadding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:get/get.dart';
import '../../../../../../utilities/core/kboxshadow.dart';
import '../../../../../../utilities/core/kradius.dart';
import '../../../../../../utilities/custom_colors/custom_colors.dart';
import '../../../../../../utilities/theme/ktext_theme.dart';
import '../../../../book_at_your_price/book_at_your_price_screen/book_at_your_price_screen.dart';

class BookAtYourPriceButton extends StatelessWidget {
  const BookAtYourPriceButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.to(() => const BookAtYourPriceScreen(),
            transition: Transition.native);
      },
      child: Container(
        height: 55.w,
        width: 55.w,
        decoration: BoxDecoration(
            boxShadow: KBoxShadow.greyBorderType,
            borderRadius: kBorderRadius12,
            gradient: const LinearGradient(
                colors: [CustomColors.gradientGrey1, CustomColors.white])),
        child: Wrap(
          children: [
            Padding(
              padding: KPadding.only(top: 5, left: 5, bottom: 5),
              child: Icon(
                Octicons.tag,
                size: 12,
              ),
            ),
            Center(
              child: Text(
                'BOOK at\n YOUR PRICE',
                style: KText.r8KohoW7,
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
