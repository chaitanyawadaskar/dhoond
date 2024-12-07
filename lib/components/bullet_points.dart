import 'package:dhoond/data/extensions/extensions.dart';
import 'package:dhoond/utilities/core/kpadding.dart';
import 'package:dhoond/utilities/core/ksizedbox.dart';
import 'package:flutter/material.dart';

import '../utilities/constant/constant.dart';

class BulletPoints extends StatelessWidget {
  final List<dynamic> items;
  final BulletStyle style;
  final double? spacing;
  final TextStyle? textStyle;
  final double? iconSize;
  final Color? iconColor;
  final CrossAxisAlignment? crossAxisAlignment;
  final double? runSpacing;
  const BulletPoints({
    super.key,
    required this.items,
    this.style = BulletStyle.dot,
    this.spacing,
    this.textStyle,
    this.iconSize,
    this.iconColor,
    this.crossAxisAlignment,
    this.runSpacing,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ...List.generate(items.length, (index) {
          return Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              resolveBulletType(index),
              SizedBoxWidth(
                width: spacing ?? 15,
              ),
              Flexible(
                child: items[index] is String
                    ? Text(
                        items[index],
                        style: textStyle,
                      )
                    : items[index] is Widget
                        ? items[index]
                        : const SizedBox.shrink(),
              ),
            ],
          ).mOnly(bottom: runSpacing ?? 0);
        })
      ],
    );
  }

  Widget resolveBulletType(int index) {
    switch (style) {
      case BulletStyle.none:
        return const SizedBox.shrink();
      case BulletStyle.dot:
        return Padding(
          padding: KPadding.only(top: 8),
          child: Icon(Icons.circle, size: iconSize ?? 10.0, color: iconColor),
        );
      case BulletStyle.dash:
        return Text('-', style: textStyle);
      case BulletStyle.numeric:
        return Text('${index + 1}.', style: textStyle);
      default:
        return const SizedBox.shrink();
    }
  }
}
