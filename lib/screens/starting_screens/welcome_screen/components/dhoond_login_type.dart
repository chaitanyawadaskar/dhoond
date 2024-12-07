import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../utilities/assets_paths/assets_paths.dart';
import '../../../../utilities/core/kpadding.dart';
import '../../../../utilities/core/kradius.dart';
import '../../../../utilities/custom_colors/custom_colors.dart';
import '../../../../utilities/theme/ktext_theme.dart';

class DhoondLoginType extends StatelessWidget {
  const DhoondLoginType({
    super.key,
    this.isSelected = false,
    required this.onTap,
    required this.title,
  });
  final bool isSelected;
  final Function() onTap;
  final String title;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
          padding: KPadding.symmetric(20, 15),
          decoration: BoxDecoration(
              color: isSelected ? CustomColors.black : null,
              borderRadius: kBorderRadius8,
              border: kBorderAll),
          child: Column(
            children: [
              isSelected
                  ? Image.asset(
                      ImagePath.whiteLogo,
                      height: 30.h,
                      width: 100.w,
                    )
                  : Image.asset(
                      ImagePath.dhoond,
                      height: 30.h,
                      width: 100.w,
                    ),
              Text(
                title,
                style: isSelected ? KText.r15BoldWhite : KText.r15Bold,
              )
            ],
          )),
    );
  }
}
