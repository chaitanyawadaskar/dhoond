import 'package:customize_button/customize_button.dart';
import 'package:dhoond/components/arrow_left_appbar.dart';
import 'package:dhoond/utilities/core/kpadding.dart';
import 'package:dhoond/utilities/gap/gap.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import '../../../utilities/assets_paths/assets_paths.dart';
import '../../../utilities/custom_colors/custom_colors.dart';
import '../../../utilities/theme/ktext_theme.dart';

class QrScreen extends StatelessWidget {
  const QrScreen({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const ArrowLeftAppbar(),
        body: Container(
          width: Get.width,
          padding: KPadding.horizontal20,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Gap.height(),
              Text(
                'Chandan Kumar',
                style: KText.r30ComfortaaW7,
              ),
              Text(
                'Download this QR code so that partners can\n scan it to make attendance',
                style: KText.r12,
                textAlign: TextAlign.center,
              ),
              Gap.height(20),
              Image.asset(
                ImagePath.qr,
                height: 200.h,
              ),
              Gap.height(),
              CustomizedButton(
                onTap: () {
                  Fluttertoast.showToast(msg: 'Downloaded Succesfully');
                },
                widget: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Download QR',
                      style: KText.r14w5White,
                    ),
                    Gap.width(),
                    const Icon(
                      AntDesign.download,
                      size: 20,
                      color: CustomColors.white,
                    )
                  ],
                ),
                width: 120.w,
                pad: KPadding.symmetric(25, 10),
                borderRadius: 5,
                backgroundColor: CustomColors.black,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
