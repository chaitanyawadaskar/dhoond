import 'package:dhoond/utilities/custom_colors/custom_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../../../utilities/assets_paths/assets_paths.dart';
import '../../../../../../utilities/theme/ktext_theme.dart';
import '../../bayp_services_screen/bayp_services_screen.dart';

class SearchedServiceItems extends StatelessWidget {
  const SearchedServiceItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final List services = [
      'Carpenter',
      'Maid',
      'Electrician',
      'RO Purifier Technician',
      'Baby sitter',
      'Dhoond Assured partners',
      'Worker',
      'Geyser technician',
      'Carpenter',
      'Maid',
      'Electrician',
      'RO Purifier Technician',
      'Baby sitter',
      'Dhoond Assured partners',
    ];
    return SizedBox(
      height: Get.height * 0.55,
      child: ListView.builder(
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () {
              Get.to(
                () => const BAYPServiceScreen(),
                transition: Transition.native,
              );
            },
            visualDensity: VisualDensity.compact,
            leading: Image.asset(
              IconPath.trending,
              height: 17.w,
              color: CustomColors.black,
            ),
            title: Text(
              services[index],
              style: KText.r14,
            ),
          );
        },
        shrinkWrap: true,
        itemCount: services.length,
      ),
    );
  }
}
