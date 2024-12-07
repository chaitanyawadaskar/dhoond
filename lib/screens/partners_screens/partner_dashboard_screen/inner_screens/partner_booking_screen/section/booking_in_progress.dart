import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../../../../../../utilities/constant/constant.dart';
import '../../../../../../utilities/core/kpadding.dart';
import '../../../../../../utilities/core/ksizedbox.dart';
import '../components/partner_booking_card.dart';

class BookingInProgress extends StatelessWidget {
  const BookingInProgress({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView.separated(
      padding: KPadding.vertical10,
      itemBuilder: (context, index) {
        return PartnerBookingCard(
          isPending: index == 0,
          bookingType: index == 0
              ? PartnerBookingType.reachedLocation
              : PartnerBookingType.markAsComplete,
        );
      },
      separatorBuilder: (context, index) => const SizedBoxHeight(
        height: 10,
      ),
      itemCount: 2,
    ));
  }
}
