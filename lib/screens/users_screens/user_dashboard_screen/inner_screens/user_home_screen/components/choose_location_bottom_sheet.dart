import 'package:customize_button/customize_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../utilities/core/kpadding.dart';
import '../../../../../../utilities/core/ksizedbox.dart';
import '../../../../../../utilities/custom_colors/custom_colors.dart';
import '../../../../../../utilities/theme/ktext_theme.dart';
import 'location_textfeild.dart';

class ChooseLocationBottomSheet extends StatelessWidget {
  const ChooseLocationBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: CustomColors.white,
      padding: KPadding.horizontal15,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBoxHeight(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Choose your location',
                style: KText.r30ComfortaaW5,
              ),
              const SizedBoxWidth(
                width: 10,
              ),
              Icon(
                Icons.keyboard_arrow_up,
                size: 25.h,
                color: CustomColors.black,
              )
            ],
          ),
          Text(
            'Select a location to see near work',
            style: KText.r20Comfortaa,
          ),
          SizedBoxHeight(),
          CustomizedButton(
            onTap: () {},
            fontStyle: KText.r14BoldWhite,
            pad: KPadding.H15V10,
            borderRadius: 5,
            backgroundColor: CustomColors.black,
            widget: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.my_location_rounded,
                  color: CustomColors.white,
                  size: 20.h,
                ),
                SizedBoxWidth(),
                Text(
                  'Use my current location',
                  style: KText.r14White,
                )
              ],
            ),
          ),
          SizedBoxHeight(),
          LocationTextFeild(),
          SizedBoxHeight(),
          SizedBox(
            child: ListView.separated(
              shrinkWrap: true,
              padding: KPadding.horizontal15,
              itemBuilder: (context, index) => Container(
                margin: KPadding.H10V10,
                child: Row(
                  children: [
                    Container(
                      padding: KPadding.all5,
                      decoration: BoxDecoration(
                          color: CustomColors.grey.withOpacity(0.2),
                          shape: BoxShape.circle),
                      child: Icon(
                        Icons.access_time_rounded,
                        color: CustomColors.black,
                        size: 20,
                      ),
                    ),
                    SizedBoxWidth(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Tilak patakar bhavan',
                          style: KText.r12w5,
                        ),
                        Text(
                          'Dhantoli, Nagpur, Maharastra',
                          style: KText.r12,
                        )
                      ],
                    ),
                  ],
                ),
              ),
              itemCount: 5,
              separatorBuilder: (context, index) => Container(
                padding: KPadding.vertical(1),
                decoration:
                    BoxDecoration(color: CustomColors.grey.withOpacity(0.5)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
