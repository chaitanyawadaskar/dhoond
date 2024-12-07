import 'package:customize_button/customize_button.dart';
import 'package:dhoond/screens/partners_screens/partner_main_payment_screen/partner_main_payment_screen.dart';
import 'package:dhoond/screens/users_screens/user_main_payment_screen/user_main_payment_screen.dart';
import 'package:dhoond/screens/users_screens/user_order_detail_screen/user_order_detail_screen.dart';
import 'package:dhoond/utilities/assets_paths/assets_paths.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import '../../../components/arrow_left_appbar.dart';
import '../../../utilities/core/kpadding.dart';
import '../../../utilities/custom_colors/custom_colors.dart';
import '../../../utilities/gap/gap.dart';
import '../../../utilities/theme/ktext_theme.dart';

class AddAmountScreen extends StatefulWidget {
  const AddAmountScreen(
      {super.key, this.isFromBooking = false, this.isFromPartner = false});
  final bool isFromBooking;
  final bool isFromPartner;
  @override
  State<AddAmountScreen> createState() => _AddAmountScreenState();
}

class _AddAmountScreenState extends State<AddAmountScreen> {
  bool isCheck = true;

  final price = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: KPadding.horizontal15,
          child: Column(
            children: [
              Gap.height(20),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const ArrowLeftAppbar(
                    padding: KPadding.none,
                  ),
                  Gap.width(10),
                  Text(
                    'Enter Total Amount',
                    style: KText.r30ComfortaaW7,
                  )
                ],
              ),
              Gap.height(25),
              Padding(
                padding: KPadding.horizontal10,
                child: Row(
                  children: [
                    Text(
                      'To :',
                      style: KText.r30Comfortaa,
                    ),
                    Gap.width(15),
                    Container(
                      height: 50.w,
                      width: 50.w,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage(
                                ImagePath.carpenter1,
                              ),
                              fit: BoxFit.cover)),
                    ),
                    Gap.width(15),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '+91 9876543210',
                          style: KText.r14Comfortaa,
                        ),
                        Text(
                          'Chandan Kumar',
                          style: KText.r14Comfortaa,
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Gap.height(60),
              SizedBox(
                width: 165.w,
                child: TextFormField(
                  style: KText.r36w5,
                  keyboardType: TextInputType.number,
                  controller: price,
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(8),
                    FilteringTextInputFormatter.digitsOnly,
                    FilteringTextInputFormatter.allow(
                        RegExp(r'^[0-9]+(\.[0-9]{0,2})?$')),
                    ThousandsFormatter(),
                  ],
                  decoration: InputDecoration(
                      hintStyle: KText.r36Grey,
                      prefix: Text(
                        '₹ ',
                        style: KText.r30,
                      ),
                      hintText: '0.00',
                      border: InputBorder.none),
                ),
              ),
              const Spacer(),
              CustomizedButton(
                onTap: () {
                  FocusScope.of(context).unfocus();
                  Get.to(
                      () => widget.isFromPartner
                          ? ParnterMainPaymentScreen(
                              totalPayable:
                                  double.parse(price.text.replaceAll(',', '')))
                          : widget.isFromBooking
                              ? UserOrderDetailScreen(
                                  price: price.text.replaceAll(',', ''),
                                  floatEnable: 1,
                                  isQrVisible: true,
                                )
                              : UserMainPaymentScreen(
                                  grandTotal: double.parse(
                                      price.text.replaceAll(',', '')),
                                  isShowPayable: true,
                                  isFromWallet: true,
                                  // floatEnable: 1,
                                ),
                      transition: Transition.native);
                },
                fontStyle: KText.r20w5White,
                borderRadius: 5,
                elevation: 0,
                backgroundColor: CustomColors.black,
                text: 'Continue',
              ),
              Gap.height(35),
            ],
          ),
        ),
      ),
    );
  }
}

class ThousandsFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    final newText = newValue.text;
    if (newText.isEmpty) {
      return newValue;
    }
    int selectionIndex = newValue.selection.end;
    final String newTextFormatted = NumberFormat("#,##,##,###")
        .format(double.tryParse(newText.replaceAll(",", "")));
    if (newText == newTextFormatted) {
      return newValue;
    }
    selectionIndex += -(newText.length - newTextFormatted.length);
    return TextEditingValue(
      text: newTextFormatted,
      selection: TextSelection.collapsed(offset: selectionIndex),
    );
  }
}
