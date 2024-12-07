import 'package:dhoond/data/extensions/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../utilities/core/kpadding.dart';
import '../../../../utilities/core/kradius.dart';
import '../../../../utilities/custom_colors/custom_colors.dart';
import '../../../../utilities/custom_textfeild/custom_textfeild.dart';
import '../../../../utilities/gap/gap.dart';
import '../../../../utilities/theme/ktext_theme.dart';

class SuggestedSlider extends StatefulWidget {
  const SuggestedSlider({
    super.key,
    required this.onSliderChange,
  });
  final Function(double rate) onSliderChange;
  @override
  State<SuggestedSlider> createState() => _SuggestedSliderState();
}

class _SuggestedSliderState extends State<SuggestedSlider> {
  double _currentSliderValue = 0;
  double lowRate = 0;
  double suggestRate = 0;
  double highRate = 0;
  final baseSqft = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: CustomTextFeild(
            onTextChange: (val) {
              _currentSliderValue = double.parse(val);
              suggestRate = double.parse(val);
              lowRate = double.parse(val) - 4;
              highRate = double.parse(val) + 4;
              setState(() {});
            },
            controller: baseSqft,
            width: 135.w,
            length: 4,
            style: KText.r25Bold,
            textinputtype: TextInputType.number,
            backgroundColor: CustomColors.faintGrey,
            allTypeBorderColor: CustomColors.mobileNoGrey,
            suffixIcon: Container(
              width: 20,
              alignment: Alignment.centerRight,
              child: Padding(
                padding: KPadding.only(right: 10),
                child: Text(
                  'sq.ft',
                  style: KText.r14Grey,
                ),
              ),
            ),
          ),
        ),
        Gap.height(30),
        Stack(
          children: [
            SliderTheme(
              data: SliderTheme.of(context).copyWith(
                trackHeight: 3,
                activeTrackColor: CustomColors.black,
                inactiveTrackColor: CustomColors.faintGrey,
                thumbShape: const RoundSliderThumbShape(
                    enabledThumbRadius: 6, elevation: 5),
              ),
              child: Slider(
                value: _currentSliderValue,
                thumbColor: CustomColors.black,
                min: lowRate,
                max: highRate,
                onChanged: (value) {
                  setState(() {
                    _currentSliderValue = value;
                    baseSqft.text = _currentSliderValue.toStringAsFixed(0);
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 15.h,
                      width: 6.w,
                      decoration: BoxDecoration(
                          borderRadius: kBorderRadius10,
                          color: CustomColors.black),
                    ),
                    Container(
                      height: 15.h,
                      width: 6.w,
                      decoration: BoxDecoration(
                          borderRadius: kBorderRadius10,
                          color: _currentSliderValue >= suggestRate
                              ? CustomColors.black
                              : CustomColors.faintGrey),
                    ),
                    Container(
                      height: 15.h,
                      width: 6.w,
                      decoration: BoxDecoration(
                          borderRadius: kBorderRadius10,
                          color: _currentSliderValue == highRate
                              ? CustomColors.black
                              : CustomColors.faintGrey),
                    )
                  ],
                ))
          ],
        ),
        Gap.height(5),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Text.rich(TextSpan(children: [
                  TextSpan(text: '$lowRate', style: KText.r15w5),
                  TextSpan(text: ' sq.ft', style: KText.r12Grey),
                ])),
                Text(
                  'Low rate',
                  style: KText.r14w5,
                ),
              ],
            ),
            Column(
              children: [
                Text.rich(TextSpan(children: [
                  TextSpan(text: '$suggestRate', style: KText.r15w5),
                  TextSpan(text: ' sq.ft', style: KText.r12Grey),
                ])),
                Text(
                  'Suggested rate',
                  style: KText.r14w5,
                ),
              ],
            ),
            Column(
              children: [
                Text.rich(TextSpan(children: [
                  TextSpan(text: '$highRate', style: KText.r15w5),
                  TextSpan(text: ' sq.ft', style: KText.r12Grey),
                ])),
                Text(
                  'High rate',
                  style: KText.r14w5,
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
