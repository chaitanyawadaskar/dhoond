import 'package:dhoond/screens/users_screens/user_booking_info_screen/user_done_booking_info_screen.dart';
import 'package:dhoond/utilities/constant/constant.dart';
import 'package:dhoond/utilities/core/kpadding.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../../../../../utilities/core/ksizedbox.dart';
import '../../../../../../utilities/gap/gap.dart';
import '../components/booking_card.dart';
import '../components/done_card.dart';

class DoneSection extends StatelessWidget {
  const DoneSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView.separated(
      padding: KPadding.all15,
      itemBuilder: (context, index) {
        return BookingCard(
          onTap: () {
            Get.to(() => const UserDoneBookingInfoScreen());
          },
          enableOtp: false,
          isPaid: true,
          enableBayp: enaBayp(index),
          buttonType: buttontypeFun(index),
        );
      },
      separatorBuilder: (context, index) => Gap.height(20),
      itemCount: 3,
    ));
  }

  BookingCardButtonType buttontypeFun(int index) {
    if (index == 0) {
      return BookingCardButtonType.bookAgain;
    } else if (index == 1) {
      return BookingCardButtonType.cancelled;
    } else if (index == 2) {
      return BookingCardButtonType.bookAgain;
    } else {
      return BookingCardButtonType.bookAgain;
    }
  }

  bool enaBayp(int index) {
    if (index == 2) {
      return true;
    } else {
      return false;
    }
  }
}
