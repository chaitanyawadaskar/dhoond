import 'package:dhoond/screens/users_screens/user_service_partner_screen/user_service_partner_screen.dart';
import 'package:dhoond/utilities/core/kpadding.dart';
import 'package:dhoond/utilities/custom_colors/custom_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:get/get.dart';

import '../../../../../../utilities/assets_paths/assets_paths.dart';
import '../../../../../../utilities/theme/ktext_theme.dart';
import '../../../../utilities/gap/gap.dart';

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
    final List<Map<String, String>> contruction = [
      {'icon': ImagePath.carpenterIcon, 'label': 'Carpenter'},
      {'icon': ImagePath.plumber, 'label': 'Plumber'},
      {'icon': ImagePath.eletrician, 'label': 'Electrician'},
      {'icon': ImagePath.welder, 'label': 'Welder'},
      {'icon': ImagePath.mason, 'label': 'Mason'},
      {'icon': ImagePath.tile, 'label': 'Tile installer'},
      {'icon': ImagePath.bric, 'label': 'Bricklayer'},
      {'icon': ImagePath.painter, 'label': 'Painter'},
      {'icon': ImagePath.ironere, 'label': 'Ironworker'},
      {'icon': ImagePath.glass, 'label': 'Glass installer'},
      {'icon': ImagePath.bric, 'label': 'Roofing technician'},
      {'icon': ImagePath.drywaler, 'label': 'Drywaller'},
      {'icon': ImagePath.ironere, 'label': 'HVAC Technician'},
      {'icon': ImagePath.surveyor, 'label': 'Surveyor'},
      {'icon': ImagePath.washing, 'label': 'Washing machine technician'},
      {'icon': ImagePath.surveyor, 'label': 'Geyser technician'},
      {
        'icon': ImagePath.contructure,
        'label': 'Construction equipment operator'
      },
    ];
    return SingleChildScrollView(
      child: Padding(
        padding: KPadding.horizontal(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Last search',
              style: KText.r16,
            ),
            Gap.height(),
            ListView.builder(
              padding: KPadding.none,
              itemBuilder: (context, index) {
                return ListTile(
                  onTap: () {
                    Get.to(
                        () => UserServicePartnerScreen(title: services[index]));
                  },
                  contentPadding: KPadding.only(left: 5),
                  visualDensity:
                      const VisualDensity(horizontal: -4, vertical: -4),
                  leading: Image.asset(
                    IconPath.trending,
                    height: 18.w,
                    color: CustomColors.black,
                  ),
                  title: Text(
                    services[index],
                    style: KText.r16,
                  ),
                  trailing: const Icon(
                    CupertinoIcons.multiply,
                    color: CustomColors.grey,
                  ),
                );
              },
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: services.length,
            ),
          ],
        ),
      ),
    );
  }
}
