import 'package:dhoond/utilities/custom_colors/custom_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:get/get.dart';

class LeftArrowButton extends StatelessWidget {
  const LeftArrowButton({
    super.key,
    this.suffix,
    this.suffixAsLeading = false,
  });
  final Widget? suffix;
  final bool suffixAsLeading;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: suffixAsLeading
          ? MainAxisAlignment.start
          : MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () {
            Get.back();
          },
          visualDensity: const VisualDensity(horizontal: -4, vertical: -4),
          icon: const Icon(
            AntDesign.arrowleft,
            color: CustomColors.black,
            size: 25,
          ),
        ),
        suffix ?? Container()
      ],
    );
  }
}
