import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../../custom_colors/custom_colors.dart';

class ShimmerLoader extends StatelessWidget {
  final Widget child;
  final Color? baseColor;
  final Color? highlightColor;

  const ShimmerLoader({
    super.key,
    required this.child,
    this.baseColor,
    this.highlightColor,
  });

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
        baseColor: baseColor ?? CustomColors.shadeGrey300,
        highlightColor: highlightColor ?? CustomColors.shadeGrey100,
        child: child);
  }
}
