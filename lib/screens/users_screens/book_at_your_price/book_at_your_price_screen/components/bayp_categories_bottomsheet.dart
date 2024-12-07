import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../../utilities/core/kboxshadow.dart';
import '../../../../../utilities/core/kpadding.dart';
import '../../../../../utilities/core/kradius.dart';
import '../../../../../utilities/core/ksizedbox.dart';
import '../../../../../utilities/custom_colors/custom_colors.dart';
import '../../../../../utilities/gap/gap.dart';
import '../../../../../utilities/theme/ktext_theme.dart';
import '../../bayp_services_screen/bayp_services_screen.dart';

class BaypCategoriesBottomSheet extends StatelessWidget {
  const BaypCategoriesBottomSheet({
    super.key,
    required this.household,
  });

  final List<Map<String, String>> household;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: KPadding.all20,
      margin: KPadding.all(16),
      decoration: BoxDecoration(
        borderRadius: kBorderRadius15,
        boxShadow: KBoxShadow.greyBorderType,
        color: CustomColors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Construction\n Works',
            style: KText.r18w5,
          ),
          Gap.height(20),
          SizedBox(
            height: 300.h,
            child: GridView.builder(
              shrinkWrap: true,
              // physics: const NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  mainAxisExtent: 115.h),
              itemCount: household.length,
              itemBuilder: (ctx, i) => IconButton(
                visualDensity:
                    const VisualDensity(horizontal: -4, vertical: -4),
                onPressed: () {
                  Get.to(
                    () => const BAYPServiceScreen(),
                    transition: Transition.native,
                  );
                },
                icon: GridTile(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        '${household[i]['icon']}',
                        fit: BoxFit.cover,
                        height: 55.w,
                        width: 55.w,
                      ),
                      // SvgPicture.asset(
                      //   '${household[i]['icon']}',
                      //   height: 60.w,
                      //   width: 60.w,
                      // ),
                      const SizedBox(height: 10),
                      SizedBox(
                        height: 40.h,
                        child: Text('${household[i]['label']}',
                            style: KText.r10Comfortaa,
                            maxLines: 3,
                            textAlign: TextAlign.center),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          const SizedBoxHeight(),
          // const MostBookedService()
        ],
      ),
    );
  }
}
