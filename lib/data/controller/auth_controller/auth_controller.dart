import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import '../../../utilities/loader/custom_loader/custom_loader.dart';
import '../../api/repository.dart';
import '../../local_database/shared_pref.dart';
import '../../models/login_model/login_model.dart';

class AuthController extends GetxController {
  var repository = Repository();
  final pass = TextEditingController();
  final rePass = TextEditingController();
  final email = TextEditingController();
  final mobile = TextEditingController();
  final referralCode = TextEditingController();
  resetAllFeild() {
    email.clear();
    mobile.clear();
    pass.clear();
    rePass.clear();
    referralCode.clear();
  }

  Future<LoginModel?> login({bool withEmail = false}) async {
    CustomLoader.openCustomLoader();
    var map = <String, String>{};
    withEmail
        ? map['email'] = email.text
        : map['mobile_number'] = mobile.text.toString();
    map['password'] = pass.text.toString();
    try {
      var data = await repository.login(map, isFromMobile: !withEmail);

      CustomLoader.closeCustomLoader();
      if (data.success == true) {
        saveUserToken('${data.data?.token}');
        // Get.offAll(() => const HomeScreen());
      } else {
        Fluttertoast.showToast(msg: '${data.message}');
      }
      return data;
    } catch (e) {
      CustomLoader.closeCustomLoader();

      var errorData = jsonDecode(e.toString());
      Fluttertoast.showToast(msg: '${errorData['data']}');

      // if ((errorData['data']["mobile_number"] != null ||
      //         errorData['data']["email"] != null) &&
      //     errorData['data']["password"] != null) {
      //   Fluttertoast.showToast(
      //       msg:
      //           '${errorData['data']["email"] != null ? errorData['data']["email"][0] : errorData['data']["mobile_number"][0]} && ${errorData['data']["password"][0]}');
      // } else if (errorData['data']["mobile_number"] != null) {
      //   Fluttertoast.showToast(msg: '${errorData['data']["mobile_number"][0]}');
      // } else if (errorData['data']["password"] != null) {
      //   Fluttertoast.showToast(msg: '${errorData['data']["password"][0]}');
      // }

      return null;
    }
  }
}
