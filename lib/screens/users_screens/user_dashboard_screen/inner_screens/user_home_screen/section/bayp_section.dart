import 'package:dhoond/data/extensions/extensions.dart';
import 'package:dhoond/screens/users_screens/book_at_your_price/bayp_services_screen/bayp_services_screen.dart';
import 'package:dhoond/screens/users_screens/user_dashboard_screen/inner_screens/user_home_screen/section/bayp_grid_section.dart';
import 'package:dhoond/utilities/assets_paths/assets_paths.dart';
import 'package:dhoond/utilities/constant/constant.dart';
import 'package:dhoond/utilities/core/kboxshadow.dart';
import 'package:dhoond/utilities/core/kpadding.dart';
import 'package:dhoond/utilities/core/kradius.dart';
import 'package:dhoond/utilities/custom_image/custom_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:get/get.dart';

import '../../../../../../utilities/custom_colors/custom_colors.dart';
import '../../../../../../utilities/gap/gap.dart';
import '../../../../../../utilities/theme/ktext_theme.dart';
import 'service_grid_section.dart';

class BAYPSection extends StatefulWidget {
  const BAYPSection({super.key});

  @override
  State<BAYPSection> createState() => _BAYPSectionState();
}

class _BAYPSectionState extends State<BAYPSection> {
  bool isGrid = true;
  int selectedSort = -1;

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> services = [
      {'icon': 'https://i.postimg.cc/d3VKVrty/plumber.png', 'label': 'Plumber'},
      {
        'icon': 'https://i.postimg.cc/Sxw8LKc3/electrician.png',
        'label': 'Electrician'
      },
      {'icon': 'https://i.postimg.cc/056ty5tJ/repair-1.png', 'label': 'Repair'},
      {'icon': 'https://i.postimg.cc/jSJK6rdW/install.png', 'label': 'Install'},
      {
        'icon': 'https://i.postimg.cc/htgWmQwY/uninstall.png',
        'label': 'Uninstall'
      },
      {
        'icon': 'https://i.postimg.cc/J4H3thYy/carpenter.png',
        'label': 'Carpenter'
      },
      {
        'icon': 'https://i.postimg.cc/7Z6xwsVm/ac-repairac-repair-2.png',
        'label': 'AC Repair'
      },
      {
        'icon': 'https://i.postimg.cc/0yNnh8JQ/ro-filter.png',
        'label': 'RO Repair'
      },
    ];
    final List<Map<String, String>> insideCategory = [
      {
        'icon': 'https://i.postimg.cc/FzPpc8Kj/Switch-Socket-Copy.png',
        'label': 'Switch & Socket'
      },
      {'icon': 'https://i.postimg.cc/fRH3ssr7/fan.png', 'label': 'Fan'},
      {'icon': 'https://i.postimg.cc/NF0VW19k/ac.png', 'label': 'AC'},
      {'icon': 'https://i.postimg.cc/hjbFTDxN/file-3.png', 'label': 'Chimney'},
      {'icon': 'https://i.postimg.cc/BbXgsNqN/geyser.png', 'label': 'Geyser'},
      {'icon': 'https://i.postimg.cc/wTRgWmKd/gas.png', 'label': 'Gas stove'},
      {
        'icon': 'https://i.postimg.cc/ydwsB19G/inverter.png',
        'label': 'Inverter'
      },
      {
        'icon': 'https://i.postimg.cc/NMRP9BSS/water-purifier.png',
        'label': 'Water purifier'
      },
      {
        'icon': 'https://i.postimg.cc/2y6hpxQG/microwave.png',
        'label': 'Microwave'
      },
      {
        'icon': 'https://i.postimg.cc/GpmyTQNC/refrigerator.png',
        'label': 'Refrigerator'
      },
      {'icon': 'https://i.postimg.cc/9X8ND8nW/tv.png', 'label': 'TV'},
      {
        'icon': 'https://i.postimg.cc/7PdNMc8X/washing-machine.png',
        'label': 'Washing machine'
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
    return Column(
      children: [
        Row(
          children: [
            Text(
              'Services for you',
              style: KText.r15w7,
            ),
            const Spacer(),
            InkWell(
              onTap: () {
                setState(() {
                  isGrid = !isGrid;
                });
              },
              child: Row(
                children: [
                  Text(
                    isGrid ? 'Grid view' : 'List view',
                    style: KText.r12w5,
                  ).mOnly(bottom: 3),
                  Gap.width(10),
                  Icon(
                    isGrid ? Ionicons.grid_outline : FontAwesome.list_ul,
                    size: 18.w,
                    color: CustomColors.black,
                  )
                ],
              ),
            ),
          ],
        ).mSymmetric(16, 8),
        isGrid
            ? const BAYPGridSection()
            : Column(
                children: [
                  Container(
                    height: 67.h,
                    width: Get.width * 1,
                    decoration: BoxDecoration(
                        color: CustomColors.white,
                        borderRadius: kBorderRadiusLR10),
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
                                        ? sortList[index]['shadow']
                                            as List<BoxShadow>
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
                    align: Alignment.center,
                    margin: KPadding.only(top: 0),
                    services: insideCategory,
                    imgColor: CustomColors.white,
                    bgColor: CustomColors.dashboardGrey,
                    onTap: () {
                      Get.to(() => const BAYPServiceScreen());
                    },
                  ),
                ],
              ),
      ],
    );
  }
}
