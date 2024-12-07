import 'package:flutter/material.dart';

import '../utilities/core/kpadding.dart';
import '../utilities/custom_colors/custom_colors.dart';

class CheckOnlineContainer extends StatelessWidget {
  const CheckOnlineContainer({
    super.key,
    required this.child,
    required this.isOnline,
    this.onlineWidget,
    this.top,
    this.bottom,
    this.left,
    this.right,
  });
  final Widget child;
  final Widget? onlineWidget;
  final bool isOnline;
  final double? top;
  final double? bottom;
  final double? left;
  final double? right;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        child,
        Visibility(
          visible: isOnline,
          child: Positioned(
              top: top,
              left: left,
              bottom: bottom ?? 0,
              right: right ?? 5,
              child: onlineWidget ??
                  Container(
                    padding: KPadding.all(5),
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: CustomColors.lightGreen),
                  )),
        )
      ],
    );
  }
}
