import 'package:dhoond/screens/partners_screens/partner_dashboard_screen/inner_screens/partner_booking_screen/components/partner_booking_card.dart';
import 'package:dhoond/screens/partners_screens/partner_dashboard_screen/inner_screens/partner_booking_screen/components/partner_booking_float_card.dart';
import 'package:dhoond/utilities/constant/constant.dart';
import 'package:dhoond/utilities/core/kpadding.dart';
import 'package:dhoond/utilities/core/ksizedbox.dart';
import 'package:flutter/cupertino.dart';

class BookingFloat extends StatelessWidget {
  const BookingFloat({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView.separated(
      padding: KPadding.vertical10,
      itemBuilder: (context, index) {
        return const PartnerBookingFloatCard();
      },
      separatorBuilder: (context, index) => const SizedBoxHeight(
        height: 10,
      ),
      itemCount: 1,
    ));
  }
}
