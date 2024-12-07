import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../utilities/custom_colors/custom_colors.dart';
import '../../../../utilities/custom_textfeild/custom_textfeild.dart';
import '../../../../utilities/theme/ktext_theme.dart';

class AccountDropdown extends StatelessWidget {
  const AccountDropdown({
    super.key,
    this.controller,
  });
  final TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<int>(
      iconSize: 35.h,
      constraints: BoxConstraints(minWidth: Get.width * 0.85),
      shape: const RoundedRectangleBorder(
          side: BorderSide(color: CustomColors.grey2)),
      itemBuilder: (context) => [
        // popupmenu item 1
        PopupMenuItem(
          value: 1,
          onTap: () {
            controller?.text = 'Saving';
          },
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Text(
                "Saving",
                style: KText.r14,
              ),
            ],
          ),
        ),
        // popupmenu item 2
        PopupMenuItem(
          value: 2,
          onTap: () {
            controller?.text = 'Current';
          },
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Text(
                'Current',
                style: KText.r14,
              ),
            ],
          ),
        ),
        PopupMenuItem(
            value: 3,
            onTap: () {
              controller?.text = 'Other';
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
      offset: const Offset(0, 65),
      color: CustomColors.white,
      elevation: 0,
      child: CustomTextFeild(
        controller: controller,
        title: 'Account Type',
        titleStyle: KText.r14Bold,
        onTextChange: (val) {},
        hinttext: '--Enter Account type--',
        hintStyle: KText.r14Grey,
        enabled: false,
        suffixIcon: Icon(
          Icons.keyboard_arrow_down,
          size: 24.h,
        ),
      ),
    );
  }
}
