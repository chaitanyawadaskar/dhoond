import 'package:animate_do/animate_do.dart';
import 'package:dhoond/components/shadow_container.dart';
import 'package:dhoond/data/extensions/extensions.dart';
import 'package:dhoond/utilities/core/kboxshadow.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utilities/core/kradius.dart';
import '../../utilities/core/ksizedbox.dart';
import '../../utilities/custom_colors/custom_colors.dart';
import '../../utilities/theme/ktext_theme.dart';
import '../utilities/core/kpadding.dart';

class BottomItem extends StatelessWidget {
  const BottomItem({
    super.key,
    required this.name,
    this.image = '',
    required this.isSelected,
    required this.onTap,
    this.size,
    this.icon,
    this.fit,
  });
  final String name;
  final String image;
  final bool isSelected;
  final Function onTap;
  final double? size;
  final IconData? icon;
  final BoxFit? fit;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => onTap(),
      icon: SizedBox(
        height: 35.h,
        child: isSelected
            ? ZoomIn(
                child: ShadowContainer(
                  borderRadius: kBorderRadius40,
                  padding: KPadding.symmetric(15, 8),
                  boxShadow: KBoxShadow.buttonShadow2,
                  child: Row(
                    children: [
                      icon == null
                          ? Image.asset(
                              image,
                              height: size ?? 25.w,
                              width: size ?? 25.w,
                              fit: fit ?? BoxFit.cover,
                              color: CustomColors.black,
                            )
                          : Icon(
                              icon,
                              size: size ?? 25.h,
                            ),
                      Text(
                        name,
                        style: KText.r12PoppinsW5,
                      ).mOnly(left: 5),
                    ],
                  ),
                ),
              )
            : Center(
                child: SlideInUp(
                  child: icon == null
                      ? Image.asset(
                          image,
                          height: size ?? 25.w,
                          width: size ?? 25.w,
                          fit: fit ?? BoxFit.cover,
                          color: CustomColors.grey,
                        )
                      : Icon(
                          icon,
                          size: size ?? 25.h,
                          color: CustomColors.grey,
                        ),
                ),
              ),
      ),
    );
  }
}
