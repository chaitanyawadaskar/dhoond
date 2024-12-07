import 'package:customize_button/customize_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../utilities/assets_paths/assets_paths.dart';
import '../../../../utilities/core/kpadding.dart';
import '../../../../utilities/custom_colors/custom_colors.dart';
import '../../../../utilities/gap/gap.dart';
import '../../../../utilities/theme/ktext_theme.dart';
import '../user_cancel_booking_screen.dart';

class CancelServiceBottomSheet extends StatelessWidget {
  const CancelServiceBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: KPadding.vertical15,
          child: Text(
            'Cancel service?',
            style: KText.r20w5,
          ),
        ),
        Divider(
          color: CustomColors.grey.withOpacity(0.5),
        ),
        Gap.height(20),
        Padding(
          padding: KPadding.horizontal16,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  children: [
                    Text(
                      'Cancel your service with Chandan Kumar?',
                      style: KText.r18w5,
                    ),
                    Gap.height(7),
                    Text(
                      'Instead, we can find you another Carpenter for your service.',
                      style: KText.r16Black,
                    )
                  ],
                ),
              ),
              Container(
                height: 70.w,
                width: 70.w,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage(
                          ImagePath.carpenter,
                        ),
                        fit: BoxFit.cover)),
              ),
            ],
          ),
        ),
        Divider(
          color: CustomColors.grey.withOpacity(0.5),
        ),
        Gap.height(30),
        Padding(
          padding: KPadding.horizontal16,
          child: Column(
            children: [
              CustomizedButton(
                onTap: () {
                  Get.to(() => const UserCancelBookingScreen());
                },
                fontStyle: KText.r16FontRed,
                pad: KPadding.vertical5,
                borderRadius: 5,
                backgroundColor: CustomColors.gradientGrey,
                text: 'YES, CANCEL',
              ),
              Gap.height(),
              CustomizedButton(
                onTap: () {},
                fontStyle: KText.r16White,
                pad: KPadding.vertical5,
                borderRadius: 5,
                backgroundColor: CustomColors.black,
                text: 'Find another carpenter',
              ),
              Gap.height(),
              InkWell(
                onTap: () {
                  Get.back();
                },
                child: Text(
                  'NO',
                  style: KText.r16w5,
                ),
              ),
              Gap.height(),
            ],
          ),
        )
      ],
    );
  }
}
