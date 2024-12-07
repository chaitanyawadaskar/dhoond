import '../models/login_model/login_model.dart';
import '../models/payment_detail_model/payment_detail_model.dart';
import 'api_provider.dart';

class Repository {
  final ApiProvider _provider = ApiProvider();

  Future<LoginModel> login(Map<String, String> map,
      {bool isFromMobile = true}) async {
    final response = await _provider.post(
      url: isFromMobile ? "mobileLogin" : "emailLogin",
      map: map,
    );
    return LoginModel.fromJson(response);
  }

  Future<PaymentDetailModel> createOrderRes(Map<String, dynamic> map) async {
    final response = await _provider.createOrder(map);
    return PaymentDetailModel.fromJson(response);
  }
}
