import 'package:dhoond/utilities/constant/constant.dart';
import 'package:dhoond/utilities/gap/gap.dart';
import 'package:flutter/material.dart';

import '../../../../../../utilities/core/kpadding.dart';
import '../components/booking_card.dart';

class InProgressSection extends StatelessWidget {
  const InProgressSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView.separated(
      padding: KPadding.all15,
      itemBuilder: (context, index) {
        return IgnorePointer(
          ignoring: index == 3,
          child: BookingCard(
            enableBayp: enaBayp(index),
            isPaid: paidFun(index),
            enableOtp: otpFun(index),
            buttonType: buttontypeFun(index),
            isFaint: faidFun(index),
          ),
        );
      },
      separatorBuilder: (context, index) => Gap.height(20),
      itemCount: 5,
    ));
  }

  bool otpFun(int index) {
    if (index == 0) {
      return true;
    } else {
      return false;
    }
  }

  bool paidFun(int index) {
    if (index == 0) {
      return false;
    } else if (index == 1) {
      return true;
    } else {
      return false;
    }
  }

  BookingCardButtonType buttontypeFun(int index) {
    if (index == 0) {
      return BookingCardButtonType.cancelAndPay;
    } else if (index == 1) {
      return BookingCardButtonType.payMore;
    } else if (index == 2) {
      return BookingCardButtonType.awaiting;
    } else if (index == 3) {
      return BookingCardButtonType.cancelAndPay;
    } else if (index == 4) {
      return BookingCardButtonType.cancelAndPay;
    } else {
      return BookingCardButtonType.bookAgain;
    }
  }

  bool faidFun(int index) {
    if (index == 3) {
      return true;
    } else {
      return false;
    }
  }

  bool enaBayp(int index) {
    if (index == 4) {
      return true;
    } else {
      return false;
    }
  }
}
