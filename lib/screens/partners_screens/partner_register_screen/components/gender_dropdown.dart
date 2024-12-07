import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../utilities/custom_colors/custom_colors.dart';
import '../../../../utilities/custom_textfeild/custom_textfeild.dart';
import '../../../../utilities/theme/ktext_theme.dart';

class GederDropdown extends StatelessWidget {
  const GederDropdown({
    super.key,
    required this.controller,
  });
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 6,
      child: PopupMenuButton<int>(
        iconSize: 35.h,
        constraints: BoxConstraints(
          minWidth: 180.w,
        ),
        shape: const RoundedRectangleBorder(
            side: BorderSide(color: CustomColors.grey2)),
        itemBuilder: (context) => [
          // popupmenu item 1
          PopupMenuItem(
            value: 1,
            onTap: () {
              controller.text = 'Male';
            },
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  "Male",
                  style: KText.r14,
                ),
              ],
            ),
          ),
          // popupmenu item 2
          PopupMenuItem(
            value: 2,
            onTap: () {
              controller.text = 'Female';
            },
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  'Female',
                  style: KText.r14,
                ),
              ],
            ),
          ),
          PopupMenuItem(
              value: 3,
              onTap: () {
                controller.text = 'Other';
              },
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    "Other",
                    style: KText.r14,
                  ),
                ],
              )),
        ],
        offset: const Offset(0, 60),
        color: CustomColors.white,
        elevation: 0,
        child: CustomTextFeild(
          controller: controller,
          title: 'Gender',
          titleStyle: KText.r14Bold,
          onTextChange: (val) {},
          hinttext: '--Select your gender--',
          hintStyle: KText.r14Grey,
          enabled: false,
          suffixIcon: Icon(
            Icons.keyboard_arrow_down,
            size: 24.h,
          ),
        ),
      ),
    );
  }
}
