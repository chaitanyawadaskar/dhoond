import 'package:dhoond/data/extensions/extensions.dart';
import 'package:flutter/material.dart';

import '../../../../utilities/custom_colors/custom_colors.dart';
import '../../../../utilities/gap/gap.dart';
import '../../../../utilities/theme/ktext_theme.dart';

class WorkComplexitySlider extends StatefulWidget {
  @override
  _WorkComplexitySliderState createState() => _WorkComplexitySliderState();
}

class _WorkComplexitySliderState extends State<WorkComplexitySlider> {
  double _currentSliderValue = 1.0;
  String _currentLabel = 'Medium';

  void _onSliderChanged(double value) {
    setState(() {
      _currentSliderValue = value;
      if (_currentSliderValue == 0.0) {
        _currentLabel = 'Low';
      } else if (_currentSliderValue == 1.0) {
        _currentLabel = 'Medium';
      } else if (_currentSliderValue == 2.0) {
        _currentLabel = 'High';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Work Complexity',
          style: KText.r20w5,
        ),
        Gap.height(2),
        Text(
          'Sq.ft rate is based on current market data',
          style: KText.r14,
        ),
        Gap.height(),
        SliderTheme(
          data: SliderTheme.of(context).copyWith(
            trackHeight: 10,
            trackShape: GradientSliderTrack(),
            thumbShape: const RoundSliderThumbShape(
                enabledThumbRadius: 10, elevation: 5),
            overlayShape: const RoundSliderOverlayShape(
              overlayRadius: 24.0,
            ),
          ),
          child: Slider(
            value: _currentSliderValue,
            thumbColor: CustomColors.gradientGrey1,
            min: 0.0,
            max: 2.0,
            divisions: 2,
            onChanged: _onSliderChanged,
            label: _currentLabel,
          ),
        ).pSymmetric(15),
        Gap.height(5),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Low',
              style: KText.r14w5,
            ),
            Text(
              'Medium',
              style: KText.r14w5,
            ),
            Text(
              'High',
              style: KText.r14w5,
            ),
          ],
        ),
      ],
    );
  }
}

class GradientSliderTrack extends SliderTrackShape {
  @override
  Rect getPreferredRect({
    required RenderBox parentBox,
    Offset offset = Offset.zero,
    required SliderThemeData sliderTheme,
    bool isEnabled = false,
    bool isDiscrete = false,
  }) {
    final double trackHeight = sliderTheme.trackHeight ?? 2.0;
    final double trackLeft = offset.dx;
    final double trackTop =
        offset.dy + (parentBox.size.height - trackHeight) / 2;
    final double trackWidth = parentBox.size.width;
    return Rect.fromLTWH(trackLeft, trackTop, trackWidth, trackHeight);
  }

  @override
  void paint(PaintingContext context, Offset offset,
      {required RenderBox parentBox,
      required SliderThemeData sliderTheme,
      required Animation<double> enableAnimation,
      required Offset thumbCenter,
      Offset? secondaryOffset,
      bool isEnabled = false,
      bool isDiscrete = false,
      required TextDirection textDirection}) {
    final Rect trackRect = getPreferredRect(
      parentBox: parentBox,
      offset: offset,
      sliderTheme: sliderTheme,
    );

    // Create gradient with your specific colors
    final Gradient gradient = const LinearGradient(
      colors: [Color(0xFF85E483), Color(0xFFE5D21F), Color(0xFFFB1414)],
      stops: [0.0, 0.5, 1.0],
    );

    // Paint the gradient
    final Paint paint = Paint()
      ..shader = gradient.createShader(trackRect)
      ..style = PaintingStyle.fill;

    // Draw the gradient track
    context.canvas.drawRRect(
      RRect.fromRectAndCorners(trackRect,
          bottomLeft: const Radius.circular(4),
          bottomRight: const Radius.circular(4),
          topLeft: const Radius.circular(4),
          topRight: const Radius.circular(4)),
      paint,
    );
  }
}
