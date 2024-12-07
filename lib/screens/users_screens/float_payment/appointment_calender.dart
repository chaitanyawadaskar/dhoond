import 'package:dhoond/components/shadow_container.dart';
import 'package:dhoond/utilities/core/kradius.dart';
import 'package:flutter/material.dart';
import 'package:flutter_calendar_carousel/classes/event.dart';
import 'package:flutter_calendar_carousel/classes/marked_date.dart';
import 'package:flutter_calendar_carousel/classes/multiple_marked_dates.dart';
import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../utilities/core/kpadding.dart';
import '../../../../utilities/custom_colors/custom_colors.dart';
import 'package:intl/intl.dart';
import '../../../data/functions/common_function.dart';
import '../../../utilities/theme/ktext_theme.dart';

class AppointmentCalender extends StatefulWidget {
  const AppointmentCalender({
    super.key,
    this.enableRedMark = true,
  });
  final bool enableRedMark;

  @override
  State<AppointmentCalender> createState() => _AppointmentCalenderState();
}

class _AppointmentCalenderState extends State<AppointmentCalender> {
  DateTime _currentDate = DateTime.now();
  DateTime _dateTime = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return ShadowContainer(
      alignment: Alignment.center,
      borderRadius: kBorderRadius10,
      child: CalendarCarousel<Event>(
        height: 280.h,
        width: 333.w,
        scrollDirection: Axis.horizontal,
        iconColor: CustomColors.black,
        customGridViewPhysics: const NeverScrollableScrollPhysics(),
        multipleMarkedDates: widget.enableRedMark
            ? MultipleMarkedDates(markedDates: [
                MarkedDate(
                    color: CustomColors.red,
                    textStyle: KText.r14White,
                    date: DateTime(2024, 9, 10)),
                MarkedDate(
                    color: CustomColors.red,
                    textStyle: KText.r14White,
                    date: DateTime(2024, 9, 18)),
                MarkedDate(
                    color: CustomColors.red,
                    textStyle: KText.r14White,
                    date: DateTime(2024, 9, 22)),
              ])
            : null,
        onCalendarChanged: (val) {
          setState(() {
            _dateTime = val;
          });
        },
        pageSnapping: true,
        onDayPressed: (DateTime date, List<Event> events) {
          if (date.isAtSameMomentAs(DateTime.now()) ||
              date.isAfter(DateTime.now())) {
            setState(() => _currentDate = date);
            var calenderDate =
                Functions.formatDate(date.toString(), format: 'yyyy-MM-dd');
            print(calenderDate);
          }
        },
        selectedDayButtonColor: _currentDate.day == DateTime.now().day
            ? CustomColors.black
            : CustomColors.transparent,
        selectedDayBorderColor: _currentDate.day == DateTime.now().day
            ? CustomColors.black
            : CustomColors.black,
        headerMargin: KPadding.all5,
        weekdayTextStyle: KText.r14,
        weekendTextStyle: KText.r14,
        thisMonthDayBorderColor: CustomColors.transparent,
        prevDaysTextStyle: KText.r14Grey,
        // leftButtonIcon: Container(),
        // rightButtonIcon: Container(),
        nextDaysTextStyle: KText.r14Grey,
        todayButtonColor: CustomColors.black,
        todayBorderColor: CustomColors.black,
        onLeftArrowPressed: () {},
        customDayBuilder: (
          bool isSelectable,
          int index,
          bool isSelectedDay,
          bool isToday,
          bool isPrevMonthDay,
          TextStyle textStyle,
          bool isNextMonthDay,
          bool isThisMonthDay,
          DateTime day,
        ) {
          return null;
        },
        pageScrollPhysics: const BouncingScrollPhysics(),
        headerText: DateFormat.yMMMM().format(_dateTime),
        weekFormat: false,
        //markedDatesMap: _markedDateMap,
        // minSelectedDate: ,
        selectedDateTime: _currentDate,
        headerTextStyle: KText.r18,
        daysHaveCircularBorder: true,
        dayButtonColor: CustomColors.transparent,
        childAspectRatio: 2.0 / 1.5,
        dayMainAxisAlignment: MainAxisAlignment.center,
        daysTextStyle: KText.r14,
      ),
    );
  }
}
