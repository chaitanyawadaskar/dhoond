import 'package:dhoond/data/functions/common_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FloatController extends GetxController {
  Rx<DateTime?> startDate = Rx<DateTime?>(null);
  Rx<DateTime?> endDate = Rx<DateTime?>(null);
  var price = 0.0.obs;
  var differenceDay = 0.obs;
  var dayWisePrice = 0.0.obs;
  var weekWisePrice = 0.0.obs;
  var monthWisePrice = 0.0.obs;
  var enableWeekDays = 0.obs;
  var enableMonthDays = 0.obs;
  var departTime = '00:00'.obs;
  var arriveTime = '00:00'.obs;

  selectStartDate(BuildContext context) async {
    startDate.value =
        await Functions.selectDate(context, firstDate: DateTime.now());
    endDate.value = null;
  }

  selectEndDate(BuildContext context) async {
    endDate.value = await Functions.selectDate(context,
        firstDate: startDate.value?.add(const Duration(days: 1)),
        initialDate: startDate.value?.add(const Duration(days: 1)));
    calculateDifference();
  }

  selectArriveTime(BuildContext context) async {
    var time = await Functions.selectTime(context);
    if (time != null) {
      arriveTime.value = time.format(context);
    }
  }

  selectDepartTime(BuildContext context) async {
    var time = await Functions.selectTime(context);
    if (time != null) {
      departTime.value = time.format(context);
    }
  }

  void calculateDifference() {
    if (startDate.value != null && endDate.value != null) {
      final difference = endDate.value!.difference(startDate.value!);
      differenceDay.value = difference.inDays;
      resetFloatPlan();
      calculateFloatPlan();
    }
  }

  resetFloatPlan() {
    dayWisePrice.value = 0.0;
    enableWeekDays.value = 0;
    weekWisePrice.value = 0.0;
    enableMonthDays.value = 0;
    monthWisePrice.value = 0.0;
  }

  void calculateFloatPlan() {
    var days = differenceDay.value;
    if (days <= 7) {
      var tempPrice = (price.value / days).roundToDouble();
      dayWisePrice.value = tempPrice;
    } else if (days > 7 && days <= 28) {
      enableWeekDays.value = (days / 7).ceil();
      var tempPrice = (price.value / enableWeekDays.value).roundToDouble();
      weekWisePrice.value = tempPrice;
    } else if (days > 28) {
      enableMonthDays.value = (days / 28).ceil();
      var tempPrice = (price.value / enableMonthDays.value).roundToDouble();
      monthWisePrice.value = tempPrice;
    }
  }
}
