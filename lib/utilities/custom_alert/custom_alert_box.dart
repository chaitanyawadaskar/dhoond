import 'package:customize_button/customize_button.dart';
import 'package:dhoond/utilities/core/kradius.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../core/kpadding.dart';
import '../core/ksizedbox.dart';
import '../custom_colors/custom_colors.dart';
import '../theme/ktext_theme.dart';

class CustomAlertBox extends StatelessWidget {
  final String text;
  final Function onTap;
  const CustomAlertBox({
    super.key,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.transparent,
      contentPadding: EdgeInsets.zero,
      content: Container(
        padding: KPadding.only(bottom: 25),
        decoration: BoxDecoration(
          color: CustomColors.white,
          borderRadius: kBorderRadius15,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: KPadding.only(left: 20, right: 20, top: 30, bottom: 22),
              child: Text(
                text,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: KText.r18Bold,
              ),
            ),
            Padding(
              padding: KPadding.horizontal15,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomizedButton(
                    onTap: () {
                      Get.back();
                    },
                    fontStyle: KText.r14BoldWhite,
                    pad: KPadding.symmetric(35, 5),
                    borderRadius: 5,
                    backgroundColor: CustomColors.black,
                    text: 'Back',
                  ),
                  const SizedBoxHeight(),
                  CustomizedButton(
                    onTap: () {},
                    fontStyle: KText.r14Bold,
                    elevation: 0,
                    pad: KPadding.symmetric(35, 5),
                    borderRadius: 5,
                    borderColor: CustomColors.grey2,
                    backgroundColor: CustomColors.white,
                    enableBorder: true,
                    text: 'Confirm',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
