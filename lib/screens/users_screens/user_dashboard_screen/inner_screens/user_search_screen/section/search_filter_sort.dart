import 'package:dhoond/utilities/core/ksizedbox.dart';
import 'package:dhoond/utilities/custom_colors/custom_colors.dart';
import 'package:dhoond/utilities/gap/gap.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../../../../../../components/shadow_container.dart';
import '../../../../../../utilities/assets_paths/assets_paths.dart';
import '../../../../../../utilities/core/kpadding.dart';
import '../../../../../../utilities/core/kradius.dart';
import '../../../../../../utilities/theme/ktext_theme.dart';
import '../../../../components/sort_by_bottom_sheet.dart';
import '../../../../user_filter_screen/user_filter_screen.dart';
import '../../user_home_screen/components/search_text_feild.dart';

class SearchFilterSort extends StatelessWidget {
  const SearchFilterSort({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: CustomColors.white,
      padding: KPadding.symmetric(20, 10),
      child: IntrinsicHeight(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: SearchTextFeild(
                hintStyle: KText.r12Grey,
                hintText: 'Search for “Electrician”',
              ),
            ),
            Gap.width(),
            // ShadowContainer(
            //   onTap: () {
            //     Get.bottomSheet(const SortByBottomSheet(),
            //         backgroundColor: CustomColors.white,
            //         shape: RoundedRectangleBorder(borderRadius: kBorderRadius10));
            //   },
            //   padding: KPadding.only(left: 5, top: 5, bottom: 5),
            //   borderRadius: kBorderRadius6,
            //   child: Row(
            //     children: [
            //       Text(
            //         'Sort By',
            //         style: KText.r12Comfortaa,
            //       ),
            //       Icon(
            //         Icons.keyboard_arrow_down,
            //         size: 20.w,
            //       )
            //     ],
            //   ),
            // ),
            // const Spacer(),
            // ShadowContainer(
            //   padding: KPadding.symmetric(6, 4),
            //   borderRadius: kBorderRadius12,
            //   child: Image.asset(
            //     IconPath.clock,
            //     height: 35.w,
            //   ),
            // ),
            // const Spacer(),
            ShadowContainer(
                padding: KPadding.all(14),
                onTap: () {
                  Get.to(
                    () => const UserFilterScreen(),
                    transition: Transition.native,
                  );
                },
                borderRadius: kBorderRadius10,
                child: SvgPicture.asset(
                  SvgPath.filter,
                  height: 20.h,
                )),
          ],
        ),
      ),
    );
  }
}
