import 'package:dhoond/data/extensions/extensions.dart';
import 'package:dhoond/utilities/core/kradius.dart';
import 'package:dhoond/utilities/theme/ktext_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

import '../../../../../../utilities/custom_colors/custom_colors.dart';

class TargetSlider extends StatefulWidget {
  const TargetSlider({
    super.key, required this.onSliderChange,
  });
    final Function(double target) onSliderChange;


  @override
  State<TargetSlider> createState() => _TargetSliderState();
}

class _TargetSliderState extends State<TargetSlider> {
  double _currentSliderValue = 30000;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              'Monthly ',
              style: KText.r12w5,
            ),
            Icon(
              Ionicons.ios_caret_down,
              size: 15.h,
            ),
            const Spacer(),
            Text(
              '₹${_currentSliderValue.toStringAsFixed(0).commaDenote}',
              style: KText.r18w7,
            )
          ],
        ).mSymmetric(25),
        Stack(
          children: [
            SliderTheme(
              data: SliderTheme.of(context).copyWith(
                trackHeight: 2,
                activeTrackColor: CustomColors.black,
                inactiveTrackColor: CustomColors.faintGrey,
                thumbShape: const RoundSliderThumbShape(
                    enabledThumbRadius: 5, elevation: 0),
              ),
              child: Slider(
                value: _currentSliderValue,
                thumbColor: CustomColors.black,
                min: 30000,
                max: 100000,
                onChanged: (value) {
                  setState(() {
                    _currentSliderValue = value;
                  });
                   widget.onSliderChange(_currentSliderValue);
                },
              ),
            ),
            Positioned(
                left: 22,
                right: 22,
                bottom: 0,
                top: 0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 10.h,
                      width: 6.w,
                      decoration: BoxDecoration(
                          borderRadius: kBorderRadius10,
                          color: CustomColors.black),
                    ),
                  ],
                )),
            Positioned(
              left: 22,
              right: 22,
              bottom: 0,
              child: Row(
                children: [
                  Text(
                    '₹30,000 ',
                    style: KText.r12GreyW5,
                  ),
                  const Spacer(),
                  Text(
                    '₹1,00,000',
                    style: KText.r12GreyW5,
                  ),
                ],
              ),
            )
          ],
        ),
      ],
    );
  }
}
