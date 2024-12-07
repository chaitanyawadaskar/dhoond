import 'package:dhoond/utilities/core/kboxshadow.dart';
import 'package:dhoond/utilities/core/kradius.dart';
import 'package:dhoond/utilities/theme/ktext_theme.dart';
import 'package:flutter/material.dart';

class LanguageTile extends StatelessWidget {
  final String language;
  final Color color;
  final Function() onTap;
  final bool enableBorder;
  const LanguageTile(
      {super.key,
      required this.language,
      required this.color,
      required this.onTap,
      this.enableBorder = false});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            color: color,
            // boxShadow: !enableBorder ? KBoxShadow.neumorphismEffect : null,
            borderRadius: kBorderRadius8,
            border: enableBorder ? kBorderAllFaintGrey : null),
        child: Center(
          child: Text(
            language,
            style: KText.r15w5,
          ),
        ),
      ),
    );
  }
}
