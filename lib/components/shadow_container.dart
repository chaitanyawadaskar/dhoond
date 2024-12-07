import 'package:flutter/material.dart';

import '../utilities/core/kboxshadow.dart';
import '../utilities/custom_colors/custom_colors.dart';

class ShadowContainer extends StatelessWidget {
  const ShadowContainer({
    super.key,
    this.padding,
    this.boxShadow,
    required this.child,
    this.borderRadius,
    this.onTap,
    this.border,
    this.disableShadow = false,
    this.backgroundColor,
    this.margin,
    this.alignment,
    this.height,
    this.width,
  });
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final List<BoxShadow>? boxShadow;
  final Widget child;
  final BorderRadiusGeometry? borderRadius;
  final BoxBorder? border;
  final bool disableShadow;
  final Color? backgroundColor;
  final Function()? onTap;
  final AlignmentGeometry? alignment;
  final double? height;
  final double? width;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
          height: height,
          width: width,
          padding: padding,
          margin: margin,
          alignment: alignment,
          decoration: BoxDecoration(
              boxShadow: disableShadow
                  ? null
                  : border == null
                      ? boxShadow ?? KBoxShadow.greyBorderType
                      : null,
              border: border,
              color: backgroundColor ?? CustomColors.white,
              borderRadius: borderRadius),
          child: child),
    );
  }
}
