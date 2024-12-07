import 'package:get/get.dart';

class PriceController extends GetxController {
  var price = 1400.obs;
  var acceptPrice = 0.obs;

  priceUpdater({bool increament = true}) {
    if (price.value > 0) {
      if (increament) {
        price.value += 10;
      } else {
        price.value -= 10;
      }
    }
  }
}
