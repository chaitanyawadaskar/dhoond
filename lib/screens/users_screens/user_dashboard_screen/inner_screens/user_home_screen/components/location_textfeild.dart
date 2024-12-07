import 'package:dhoond/utilities/core/kboxshadow.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../../../utilities/core/kpadding.dart';
import '../../../../../../utilities/core/kradius.dart';
import '../../../../../../utilities/core/ksizedbox.dart';
import '../../../../../../utilities/custom_colors/custom_colors.dart';
import '../../../../../../utilities/theme/ktext_theme.dart';

class LocationTextFeild extends StatefulWidget {
  const LocationTextFeild({
    super.key,
  });
  @override
  State<LocationTextFeild> createState() => LocationTextFeildState();
}

class LocationTextFeildState extends State<LocationTextFeild> {
  bool isListening = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: KPadding.horizontal10,
      decoration: BoxDecoration(
          color: CustomColors.white,
          border: kBorderAllFaintGrey,
          borderRadius: kBorderRadius50),
      child: Row(
        children: [
          InkWell(
            onTap: () {
              Get.back();
            },
            child: Icon(
              CupertinoIcons.arrow_left,
              color: CustomColors.grey,
              size: 25.w,
            ),
          ),
          const SizedBoxWidth(),
          Expanded(
            child: TextFormField(
              decoration: InputDecoration(
                  hintText: 'Enter your location',
                  isDense: true,
                  hintStyle: KText.r14Grey,
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none),
            ),
          ),
          IconButton(
            onPressed: () {},
            visualDensity: VisualDensity.compact,
            icon: isListening
                ? const Icon(
                    Icons.mic_outlined,
                    color: CustomColors.darkRed,
                  )
                : const Icon(Icons.mic_off_outlined, color: CustomColors.black),
          ),
        ],
      ),
    );
  }
}
