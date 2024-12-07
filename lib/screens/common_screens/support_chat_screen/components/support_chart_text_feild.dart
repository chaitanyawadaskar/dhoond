import 'package:dhoond/utilities/assets_paths/assets_paths.dart';
import 'package:dhoond/utilities/custom_colors/custom_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

import '../../../../components/shadow_container.dart';
import '../../../../utilities/core/kpadding.dart';
import '../../../../utilities/core/kradius.dart';
import '../../../../utilities/gap/gap.dart';
import '../../../../utilities/theme/ktext_theme.dart';

class SupportChartTextFeild extends StatelessWidget {
  const SupportChartTextFeild({
    super.key,
    required this.onSend,
  });
  final Function(String) onSend;
  @override
  Widget build(BuildContext context) {
    var message = TextEditingController();

    return Row(
      children: [
        Expanded(
          child: ShadowContainer(
            padding: KPadding.only(left: 30, right: 15),
            border: kBorderAll,
            borderRadius: kBorderRadius30,
            child: TextFormField(
              style: KText.r14,
              controller: message,
              decoration: InputDecoration(
                  hintStyle: KText.r14Grey,
                  contentPadding: KPadding.vertical15,
                  suffixIcon: Icon(
                    Entypo.attachment,
                    size: 20.h,
                  ),
                  hintText: 'Type your message',
                  border: InputBorder.none),
            ),
          ),
        ),
        Gap.width(),
        InkWell(
          onTap: () => onSend(message.text.toLowerCase()),
          child: Container(
            height: 55.w,
            width: 55.w,
            alignment: Alignment.center,
            decoration: const BoxDecoration(
                shape: BoxShape.circle, color: CustomColors.black),
            child: Image.asset(
              ImagePath.rightArrow,
              height: 25.h,
            ),
          ),
        )
      ],
    );
  }
}
