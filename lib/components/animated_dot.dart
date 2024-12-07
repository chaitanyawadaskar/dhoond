import 'package:flutter/material.dart';

import '../utilities/core/kradius.dart';
import '../utilities/custom_colors/custom_colors.dart';

class AnimatedDot extends StatelessWidget {
  const AnimatedDot({super.key, required this.isActive, this.width});
  final bool isActive;
  final double? width;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      height: 6,
      width: width ?? 6,
      decoration: BoxDecoration(
        color: isActive
            ? CustomColors.black.withOpacity(0.6)
            : CustomColors.grey.withOpacity(0.85),
        borderRadius: kBorderRadius25,
      ),
    );
  }
}
