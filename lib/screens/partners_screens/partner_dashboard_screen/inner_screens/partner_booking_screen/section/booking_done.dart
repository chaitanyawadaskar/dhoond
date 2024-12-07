import 'package:dhoond/utilities/constant/constant.dart';
import 'package:dhoond/utilities/core/kpadding.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../../../../../../utilities/core/ksizedbox.dart';
import '../components/partner_booking_card.dart';

class BookingDone extends StatelessWidget {
  const BookingDone({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView.separated(
      padding: KPadding.vertical10,
      itemBuilder: (context, index) {
        return const PartnerBookingCard(
          bookingType: PartnerBookingType.workComplte,
        );
      },
      separatorBuilder: (context, index) => const SizedBoxHeight(
        height: 10,
      ),
      itemCount: 1,
    ));
  }
}
