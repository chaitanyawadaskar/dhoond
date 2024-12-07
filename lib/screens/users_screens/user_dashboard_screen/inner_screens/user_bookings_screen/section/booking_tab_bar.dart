import 'package:dhoond/utilities/custom_colors/custom_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../utilities/constant/constant.dart';
import '../../../../../../utilities/core/kpadding.dart';
import '../../../../../../utilities/core/kradius.dart';
import '../../../../../../utilities/theme/ktext_theme.dart';

class BookingsTabBar extends StatelessWidget {
  const BookingsTabBar({
    super.key,
    required this.bookingType,
    required this.onTap,
  });

  final BookingType bookingType;
  final Function(BookingType) onTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: KPadding.horizontal15,
      decoration: const BoxDecoration(border: kBorderBGrey2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          InkWell(
            onTap: () {
              onTap(BookingType.inProgress);
            },
            child: Column(
              children: [
                Text(
                  'In Progress',
                  style: bookingType == BookingType.inProgress
                      ? KText.r20Bold
                      : KText.r20w5Grey,
                ),
                Container(
                  height: 4,
                  width: 120.w,
                  decoration: BoxDecoration(
                      color: bookingType == BookingType.inProgress
                          ? CustomColors.black
                          : CustomColors.transparent,
                      borderRadius: kBorderRadiusTLR6),
                )
              ],
            ),
          ),
          InkWell(
            onTap: () {
              onTap(BookingType.done);
            },
            child: Column(
              children: [
                Text(
                  'Done',
                  style: bookingType == BookingType.done
                      ? KText.r20Bold
                      : KText.r20w5Grey,
                ),
                Container(
                  height: 4,
                  width: 100.w,
                  decoration: BoxDecoration(
                      color: bookingType == BookingType.done
                          ? CustomColors.black
                          : CustomColors.transparent,
                      borderRadius: kBorderRadiusTLR6),
                )
              ],
            ),
          ),
          InkWell(
            onTap: () {
              onTap(BookingType.float);
            },
            child: Column(
              children: [
                Text(
                  'Float',
                  style: bookingType == BookingType.float
                      ? KText.r20Bold
                      : KText.r20w5Grey,
                ),
                Container(
                  height: 4,
                  width: 80.w,
                  decoration: BoxDecoration(
                      color: bookingType == BookingType.float
                          ? CustomColors.black
                          : CustomColors.transparent,
                      borderRadius: kBorderRadiusTLR6),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
