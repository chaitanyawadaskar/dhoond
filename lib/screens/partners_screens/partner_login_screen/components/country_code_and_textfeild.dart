import 'package:country_picker/country_picker.dart';
import 'package:dhoond/data/services/validation_service/validation_service.dart';
import 'package:dhoond/utilities/core/kpadding.dart';
import 'package:dhoond/utilities/core/kradius.dart';
import 'package:dhoond/utilities/gap/gap.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../utilities/custom_colors/custom_colors.dart';
import '../../../../utilities/custom_textfeild/custom_textfeild.dart';
import '../../../../utilities/theme/ktext_theme.dart';

class CountryCodeAndTextFeild extends StatelessWidget {
  const CountryCodeAndTextFeild({
    super.key,
    required this.countryCode,
    required this.onSelect,
    required this.number,
    this.onTextChange,
  });

  final String countryCode;
  final Function(String) onSelect;
  final TextEditingController number;
  final VoidCallback? onTextChange;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        IconButton(
          padding: KPadding.only(left: 15, top: 12, bottom: 12),
          style: ButtonStyle(
              shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                  side: const BorderSide(color: CustomColors.grey, width: 1),
                  borderRadius: kBorderRadius6))),
          onPressed: () {
            showCountryPicker(
              context: context,
              showPhoneCode: true,
              onSelect: (Country country) {
                onSelect(country.phoneCode);
              },
            );
          },
          icon: Row(
            children: [
              Text(
                countryCode,
                style: KText.r20Bold,
              ),
              Icon(
                Icons.arrow_drop_down,
                size: 30.w,
                color: CustomColors.black,
              )
            ],
          ),
        ),
        Gap.width(),
        Expanded(
            child: CustomTextFeild(
                controller: number,
                hinttext: 'Enter mobile number',
                length: 10,
                hintStyle: KText.r14Grey,
                textinputtype: TextInputType.number,
                validator: (value) => ValidationService.validateNumber(value),
                onTextChange: (val) {
                  onTextChange!();
                }))
      ],
    );
  }
}
