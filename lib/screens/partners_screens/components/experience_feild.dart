import 'package:dhoond/utilities/core/kpadding.dart';
import 'package:dhoond/utilities/custom_colors/custom_colors.dart';
import 'package:flutter/material.dart';
import '../../../utilities/core/kradius.dart';
import '../../../utilities/custom_textfeild/custom_textfeild.dart';
import '../../../utilities/theme/ktext_theme.dart';

class ExpericenceFeild extends StatelessWidget {
  const ExpericenceFeild({
    super.key,
    this.controller,
  });
  final TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 2,
      child: CustomTextFeild(
        controller: controller,
        onTextChange: (val) {},
        maxLines: 1,
        height: 40,
        allTypeBorderColor: CustomColors.black,
        length: 1,
        contentPadding: KPadding.only(left: 20),
        style: KText.r14,
        textinputtype: TextInputType.number,
        borderRadius: kBorderRadius25,
        enableLabelFloat: true,
        hinttext: '0',
        suffixIcon: Container(
          margin: KPadding.only(right: 20),
          alignment: Alignment.centerRight,
          child: Text(
            'Year',
            style: KText.r14Grey,
          ),
        ),
        label: 'Exp',
        hintStyle: KText.r14Grey,
      ),
    );
  }
}
