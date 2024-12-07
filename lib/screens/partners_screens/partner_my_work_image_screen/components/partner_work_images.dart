import 'package:dhoond/utilities/assets_paths/assets_paths.dart';
import 'package:dhoond/utilities/custom_colors/custom_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import '../../../../utilities/core/kradius.dart';

class PartnerWorkImages extends StatelessWidget {
  const PartnerWorkImages({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return StaggeredGrid.count(
      crossAxisCount: 6,
      mainAxisSpacing: 20.w,
      crossAxisSpacing: 20.w,
      children: [
        StaggeredGridTile.count(
          crossAxisCellCount: 6,
          mainAxisCellCount: 3,
          child: InkWell(
            onTap: () {},
            child: Container(
              decoration: BoxDecoration(
                  color: CustomColors.grey2.withOpacity(0.2),
                  borderRadius: kBorderRadius4),
              alignment: Alignment.center,
              child: Image.asset(
                IconPath.placeholder,
                height: 25.h,
              ),
            ),
          ),
        ),
        StaggeredGridTile.count(
          crossAxisCellCount: 2,
          mainAxisCellCount: 2,
          child: Container(
            decoration: BoxDecoration(
                color: CustomColors.grey2.withOpacity(0.2),
                borderRadius: kBorderRadius4),
            alignment: Alignment.center,
            child: Image.asset(
              IconPath.placeholder,
              height: 25.h,
            ),
          ),
        ),
        StaggeredGridTile.count(
          crossAxisCellCount: 2,
          mainAxisCellCount: 2,
          child: Container(
            decoration: BoxDecoration(
                color: CustomColors.grey2.withOpacity(0.2),
                borderRadius: kBorderRadius4),
            alignment: Alignment.center,
            child: Image.asset(
              IconPath.placeholder,
              height: 25.h,
            ),
          ),
        ),
        StaggeredGridTile.count(
          crossAxisCellCount: 2,
          mainAxisCellCount: 2,
          child: Container(
            decoration: BoxDecoration(
                color: CustomColors.grey2.withOpacity(0.2),
                borderRadius: kBorderRadius4),
            alignment: Alignment.center,
            child: Image.asset(
              IconPath.placeholder,
              height: 25.h,
            ),
          ),
        ),
      ],
    );
  }
}
