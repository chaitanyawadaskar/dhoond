import 'dart:async';
import 'dart:developer';
import 'dart:io';
import 'package:dhoond/utilities/custom_colors/custom_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../utilities/constant/constant.dart';
import '../local_database/shared_pref.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';

class Functions {
  static String formatDate(String date, {String format = 'dd/MM/yyyy'}) {
    String formattedDate = DateFormat(format).format(DateTime.parse(date));

    return formattedDate;
  }

  static String formatTime(String time) {
    String formattedTime = DateFormat.jm().format(DateTime.parse(time));

    return formattedTime;
  }

  static launchURL(String url) async {
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url), mode: LaunchMode.externalApplication);
    } else {
      throw 'Could not launch $url';
    }
  }

  static Future<File?> pickImage(ImageSource imageType) async {
    final picker = ImagePicker();

    final pickedFile =
        await picker.pickImage(source: imageType, imageQuality: 50);

    if (pickedFile != null) {
      return File(pickedFile.path);
    }
    return null;
  }

  static Future<bool> requestPhonePermission() async {
    var status = await Permission.phone.request();

    return switch (status) {
      PermissionStatus.denied ||
      PermissionStatus.restricted ||
      PermissionStatus.limited ||
      PermissionStatus.permanentlyDenied =>
        false,
      PermissionStatus.provisional || PermissionStatus.granted => true,
    };
  }

  static Future<bool> requestCameraPermission() async {
    var status = await Permission.camera.request();

    return switch (status) {
      PermissionStatus.denied ||
      PermissionStatus.restricted ||
      PermissionStatus.limited ||
      PermissionStatus.permanentlyDenied =>
        false,
      PermissionStatus.provisional || PermissionStatus.granted => true,
    };
  }

  static Future<bool> requestLocationPermission() async {
    var status = await Permission.location.request();

    return switch (status) {
      PermissionStatus.denied ||
      PermissionStatus.restricted ||
      PermissionStatus.limited ||
      PermissionStatus.permanentlyDenied =>
        false,
      PermissionStatus.provisional || PermissionStatus.granted => true,
    };
  }

  static Future<Map<Permission, PermissionStatus>>
      requestAllPermission() async {
    Map<Permission, PermissionStatus> statuses = await [
      Permission.location,
      Permission.phone,
      Permission.camera,
      Permission.microphone,
    ].request();
    return statuses;
  }

  static void listenForPermissions() async {
    final status = await Permission.microphone.status;
    log('status:- $status');
    switch (status) {
      case PermissionStatus.denied:
        requestForPermission();
        break;
      case PermissionStatus.granted:
        break;
      case PermissionStatus.limited:
        break;
      case PermissionStatus.permanentlyDenied:
        break;
      case PermissionStatus.restricted:
        break;
      case PermissionStatus.provisional:
    }
  }

  static Future<void> requestForPermission() async {
    await Permission.microphone.request();
  }

  static makeACall({String number = ''}) async {
    await FlutterPhoneDirectCaller.callNumber(number);
  }

  static Future<Position?> getCurrentPosition() async {
    final hasPermission = await requestLocationPermission();
    if (!hasPermission) return null;
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    return position;
  }

  static Future<List<Placemark>> getAddressFromLatLng(double lat, lng) async {
    List<Placemark> placemark = await placemarkFromCoordinates(lat, lng);
    return placemark;
  }

  static Future<TimeOfDay?> selectTime(BuildContext context) async {
    TimeOfDay? pickedTime = await showTimePicker(
        context: context,
        initialTime: TimeOfDay.now(),
        builder: (context, child) {
          return Theme(
            data: Theme.of(context).copyWith(
              colorScheme: const ColorScheme.light(
                primary: CustomColors.black,
                onPrimary: CustomColors.white,
                onSurface: CustomColors.black,
                background: CustomColors.white,
              ),
              textButtonTheme: TextButtonThemeData(
                style: TextButton.styleFrom(
                  foregroundColor: CustomColors.black,
                ),
              ),
            ),
            child: MediaQuery(
              data:
                  MediaQuery.of(context).copyWith(alwaysUse24HourFormat: false),
              child: child!,
            ),
          );
        });
    if (pickedTime != null) {
      return pickedTime;
    }
    return null;
  }

  static Future<DateTime?> selectDate(BuildContext context,
      {DateTime? initialDate,
      firstDate,
      lastDate,
      bool Function(DateTime)? selectableDayPredicate}) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: initialDate ?? DateTime.now(),
      firstDate: firstDate ?? DateTime(2022),
      lastDate: lastDate ?? DateTime.now().add(const Duration(days: 365)),
      selectableDayPredicate: selectableDayPredicate,
      builder: (context, child) {
        return Theme(
          data: Theme.of(context).copyWith(
            colorScheme: const ColorScheme.light(
              primary: CustomColors.black,
              onPrimary: CustomColors.white,
              onSurface: CustomColors.black,
              background: CustomColors.white,
            ),
            textButtonTheme: TextButtonThemeData(
              style: TextButton.styleFrom(
                foregroundColor: CustomColors.black,
              ),
            ),
          ),
          child: child!,
        );
      },
    );
    if (picked != null) {
      return picked;
    }
    return null;
  }

  static openGateway(String orderId, double amount, Razorpay razorpay) {
    var options = {
      'key': razorpayKey,
      'amount': 100 * amount,
      'name': 'Dhoondh',
      'order_id': orderId,
      'description': 'order description',
      'timeout': 60 * 5,
      'prefill': {
        'contact': '8080156839',
        'email': 'chaitanya@gmail.com',
      },
      'theme': {'color': '#000000'},
    };
    razorpay.open(options);
  }

  static handlePaymentSuccess(PaymentSuccessResponse response) {}

  static handlePaymentError(PaymentFailureResponse response) {
    Get.showSnackbar(GetSnackBar(
      message: response.message ?? '',
      duration: const Duration(seconds: 3),
    ));
  }

  static handleExternalWallet(ExternalWalletResponse response) {
    Get.showSnackbar(GetSnackBar(
      message: response.walletName ?? '',
      duration: const Duration(seconds: 3),
    ));
  }

  static void updateLanguage({Langauge language = Langauge.eng}) {
    var locale = language == Langauge.eng
        ? const Locale('en', 'US')
        : language == Langauge.hin
            ? const Locale('hi', 'IN')
            : const Locale('mr', 'IN');
    Get.updateLocale(locale);
    saveLocalization(language == Langauge.eng
        ? '1'
        : language == Langauge.hin
            ? '2'
            : '3');
  }

  static Future<void> launchGoogleMaps(double lat, lng) async {
    final uri =
        Uri(scheme: "google.navigation", queryParameters: {'q': '$lat, $lng'});
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      debugPrint('An error occurred');
    }
  }

  static cancelCountdown(
    Timer? countTimer,
  ) {
    if (countTimer != null) {
      countTimer.cancel();
      countTimer = null;
    }
  }
}

class CountdownTimer extends Functions {
  Timer? _countTimer;
  int _remainingSeconds;

  CountdownTimer({int initialSeconds = 60})
      : _remainingSeconds = initialSeconds;

  void startCountdown({required Function(int) onTick}) {
    const oneSecond = Duration(seconds: 1);
    _countTimer = Timer.periodic(oneSecond, (Timer timer) {
      if (_remainingSeconds <= 0) {
        timer.cancel();
      } else {
        _remainingSeconds--;
        onTick(_remainingSeconds);
      }
    });
  }

  void cancelCountdown() {
    if (_countTimer != null) {
      _countTimer!.cancel();
      _countTimer = null;
    }
  }
}
