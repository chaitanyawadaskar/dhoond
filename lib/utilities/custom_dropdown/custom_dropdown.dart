import 'package:customized_dropdown/customized_dropdown.dart';
import 'package:dhoond/utilities/core/kradius.dart';
import 'package:dhoond/utilities/theme/ktext_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../core/kpadding.dart';
import '../custom_colors/custom_colors.dart';

class CustomDropdown extends StatelessWidget {
  const CustomDropdown({
    super.key,
    required this.values,
    this.list,
    required this.onChange,
    this.title = '',
  });

  final String? values;
  final String title;
  final List<DropdownMenuItem<String>>? list;
  final dynamic Function(Object?) onChange;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (title.isNotEmpty)
          Padding(
            padding: KPadding.only(bottom: 10),
            child: Text(
              title,
              style: KText.r14w5,
            ),
          ),
        CustomizedDropdown(
          hintText: '--Select--',
          hintStyle: KText.r12,
          maxHeight: 180.h,
          contentPadding: KPadding.H10V10,
          offset: const Offset(0, -15),
          decoration: BoxDecoration(
              border: kBorderAllGrey, borderRadius: kBorderRadius12),
          dropdownIcon: const Icon(
            CupertinoIcons.chevron_down,
            color: CustomColors.black,
            size: 15,
          ),
          list: list,
          selectedValue: values,
          elevation: 0,
          onChange: onChange,
        ),
      ],
    );
  }
}
