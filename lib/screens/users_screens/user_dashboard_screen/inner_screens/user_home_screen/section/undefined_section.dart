import 'package:dhoond/data/extensions/extensions.dart';
import 'package:dhoond/utilities/assets_paths/assets_paths.dart';
import 'package:dhoond/utilities/constant/constant.dart';
import 'package:dhoond/utilities/core/kboxshadow.dart';
import 'package:dhoond/utilities/core/kpadding.dart';
import 'package:dhoond/utilities/core/kradius.dart';
import 'package:dhoond/utilities/custom_colors/custom_colors.dart';
import 'package:dhoond/utilities/custom_image/custom_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../../../utilities/gap/gap.dart';
import '../../../../../../utilities/theme/ktext_theme.dart';
import 'service_grid_section.dart';

class UndefinedSection extends StatefulWidget {
  const UndefinedSection({super.key});

  @override
  State<UndefinedSection> createState() => _UndefinedSectionState();
}

class _UndefinedSectionState extends State<UndefinedSection> {
  final List<Map<String, String>> services = [
    {
      'icon': 'https://i.postimg.cc/Z5JdCqPG/11-300x.png',
      'label': 'Construction'
    },
    {
      'icon': 'https://i.postimg.cc/Sxw8LKc3/electrician.png',
      'label': 'Electrical work'
    },
    {
      'icon': 'https://i.postimg.cc/056ty5tJ/repair-1.png',
      'label': 'Technician'
    },
    {
      'icon': 'https://i.postimg.cc/CLdtrGWL/workforce.png',
      'label': 'Workforce'
    },
    {
      'icon': 'https://i.postimg.cc/4yJdTJDZ/fabrication-work.png',
      'label': 'Fabrication work'
    },
    {
      'icon': 'https://i.postimg.cc/t4f802K4/wood-work.png',
      'label': 'Wood work'
    },
    {
      'icon': 'https://i.postimg.cc/tgcWymy7/aluminium-work.png',
      'label': 'Aluminium work'
    },
    {
      'icon': 'https://i.postimg.cc/26BcfWpR/mechanical-work.png',
      'label': 'Mechanical work'
    },
    {
      'icon': 'https://i.postimg.cc/Dy1GWBqF/window-installer.png',
      'label': 'Glass & Plastic'
    },
    {
      'icon': 'https://i.postimg.cc/hGkZ023s/blank-white-7sn5o1woonmklx1h.jpg',
      'label': 'Other'
    },
  ];
  var sortList = [
    {
      'img': ImagePath.eclipse,
      'color': CustomColors.manufactureBlue,
      'label': 'Manufacture',
      'shadow': KBoxShadow.manufactureShadow
    },
    {
      'img': ImagePath.eclipse2,
      'color': CustomColors.bgGradient5,
      'label': 'Install',
      'shadow': KBoxShadow.installShadow
    },
    {
      'img': ImagePath.eclipse3,
      'color': CustomColors.uninstallBlue,
      'label': 'Uninstall',
      'shadow': KBoxShadow.uninstallShadow
    },
    {
      'img': ImagePath.eclipse4,
      'color': CustomColors.repairViolet,
      'label': 'Repair',
      'shadow': KBoxShadow.repairShadow
    },
    {
      'img': ImagePath.eclipse5,
      'color': CustomColors.maintenanceCream,
      'label': 'Maintenance',
      'shadow': KBoxShadow.maintenanceShadow
    },
  ];
  bool isGrid = true;
  int selectedSort = -1;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 67.h,
          width: Get.width * 1,
          decoration: BoxDecoration(
              color: CustomColors.white, borderRadius: kBorderRadiusLR10),
          child: ListView.separated(
              scrollDirection: Axis.horizontal,
              padding: KPadding.only(left: 1, top: 13, bottom: 13),
              itemBuilder: (context, index) => InkWell(
                    onTap: () {
                      selectedSort = index;
                      setState(() {});
                    },
                    child: Container(
                      margin: KPadding.horizontal5,
                      decoration: BoxDecoration(
                          color: sortList[index]['color'] as Color,
                          boxShadow: selectedSort == index
                              ? sortList[index]['shadow'] as List<BoxShadow>
                              : null,
                          borderRadius: kBorderRadius8),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            '${sortList[index]['label']}',
                            style: KText.r12Bold,
                          ).mOnly(
                            left: 12,
                            right: 6,
                          ),
                          CustomImage(
                            borderRadius: kBorderRadiusBottomRight8,
                            img: sortList[index]['img'],
                            imageType: ImageType.asset,
                            width: 45.w,
                            height: 30.h,
                          ).mOnly(top: 15),
                        ],
                      ),
                    ),
                  ),
              separatorBuilder: (context, index) => Gap.width(5),
              itemCount: sortList.length),
        ).mOnly(left: 10, bottom: 12),
        const Divider(
          color: CustomColors.gradientGrey1,
          thickness: 2,
          height: 1,
        ),
        ServiceGridSection(
          margin: KPadding.only(top: 0),
          services: services,
          bgColor: CustomColors.dashboardGrey,
          imgColor: CustomColors.white,
          showMoreButton: false,
        ),
      ],
    );
  }
}
