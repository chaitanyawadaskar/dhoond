import 'package:customize_button/customize_button.dart';
import 'package:dhoond/screens/common_screens/add_amount_screen/add_amount_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../utilities/core/kpadding.dart';
import '../../../../../../utilities/core/ksizedbox.dart';
import '../../../../../../utilities/custom_colors/custom_colors.dart';
import '../../../../../../utilities/theme/ktext_theme.dart';

class BookingCancelPay extends StatelessWidget {
  const BookingCancelPay({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: KPadding.only(left: 50, right: 20, top: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomizedButton(
            onTap: () {},
            fontStyle: KText.r14Bold,
            elevation: 0,
            pad: KPadding.horizontal30,
            borderRadius: 5,
            backgroundColor: CustomColors.white,
            enableBorder: true,
            text: 'Cancel',
          ),
          const SizedBoxHeight(),
          CustomizedButton(
            onTap: () {
              Get.to(
                  () => const AddAmountScreen(
                        isFromBooking: true,
                      ),
                  transition: Transition.native);
            },
            fontStyle: KText.r14BoldWhite,
            pad: KPadding.horizontal40,
            borderRadius: 5,
            backgroundColor: CustomColors.black,
            text: 'Pay',
          ),
        ],
      ),
    );
  }
}
