import 'package:animate_do/animate_do.dart';
import 'package:dhoond/components/shadow_container.dart';
import 'package:dhoond/data/extensions/extensions.dart';
import 'package:dhoond/screens/users_screens/book_at_your_price/bayp_services_screen/bayp_services_screen.dart';
import 'package:dhoond/utilities/constant/constant.dart';
import 'package:dhoond/utilities/core/kboxshadow.dart';
import 'package:dhoond/utilities/core/kradius.dart';
import 'package:dhoond/utilities/custom_colors/custom_colors.dart';
import 'package:dhoond/utilities/theme/ktext_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:get/get.dart';
import '../../../../../../utilities/assets_paths/assets_paths.dart';
import '../../../../../../utilities/core/kpadding.dart';
import '../../../../../../utilities/custom_image/custom_image.dart';
import '../../../../../../utilities/gap/gap.dart';
import '../../../../user_service_partner_screen/user_service_partner_screen.dart';
import 'service_grid_section.dart';

class BAYPGridSection extends StatefulWidget {
  const BAYPGridSection({super.key});

  @override
  State<BAYPGridSection> createState() => _BAYPGridSectionState();
}

class _BAYPGridSectionState extends State<BAYPGridSection> {
  int selectedIndex = -1;
  int selectedSort = -1;
  final List<Map<String, String>> category = [
    {'icon': 'https://i.postimg.cc/5NsxhSfb/install.png', 'label': 'Install'},
    {
      'icon': 'https://i.postimg.cc/qRcLqR7X/uninstall.png',
      'label': 'Uninstall'
    },
    {'icon': 'https://i.postimg.cc/J48hjhzH/ro-filter.png', 'label': 'Repair'},
    {
      'icon': 'https://i.postimg.cc/8zYdpYhH/ac-repairac-repair.png',
      'label': 'Maintenance'
    },
    {
      'icon': 'https://i.postimg.cc/FR7z6JXT/workforce-2.png',
      'label': 'Workforce'
    },
    {
      'icon': 'https://i.postimg.cc/hGkZ023s/blank-white-7sn5o1woonmklx1h.jpg',
      'label': 'Other'
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
    {'icon': 'https://i.postimg.cc/ydwsB19G/inverter.png', 'label': 'Inverter'},
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
  final List<Map<String, String>> daily = [
    {
      'icon': 'https://i.postimg.cc/Sxw8LKc3/electrician.png',
      'label': 'Electrician'
    },
    {'icon': 'https://i.postimg.cc/hPhHZVyX/mason.png', 'label': 'Mason'},
    {
      'icon': 'https://i.postimg.cc/J4H3thYy/carpenter.png',
      'label': 'Carpenter'
    },
  ];
  var sortList = [
    {
      'img': ImagePath.eclipse,
      'color': CustomColors.manufactureBlue,
      'label': 'Electrician',
      'shadow': KBoxShadow.manufactureShadow
    },
    {
      'img': ImagePath.eclipse2,
      'color': CustomColors.bgGradient5,
      'label': 'Plumbers',
      'shadow': KBoxShadow.installShadow
    },
    {
      'img': ImagePath.eclipse3,
      'color': CustomColors.uninstallBlue,
      'label': 'Carpenters',
      'shadow': KBoxShadow.uninstallShadow
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ShadowContainer(
      border: kBorderT,
      backgroundColor: CustomColors.faintGrey,
      child: Column(
        children: [
          Gap.height(3),
          IntrinsicHeight(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  padding: KPadding.symmetric(15, 15),
                  width: 110.w,
                  decoration: BoxDecoration(
                      color: CustomColors.white,
                      borderRadius: kBorderRadiusTR10),
                  child: Container(
                    // width: 70.w,
                    height: 40.h,
                    padding: KPadding.horizontal10,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: CustomColors.faintGrey,
                        borderRadius: kBorderRadius8),
                    child: Row(
                      children: [
                        Icon(
                          CupertinoIcons.arrow_up_arrow_down,
                          size: 14.h,
                          color: CustomColors.black,
                        ).pOnly(right: 5),
                        Text(
                          'Sort by',
                          style: KText.r12w5,
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 40.h,
                  decoration: BoxDecoration(
                      color: CustomColors.white,
                      borderRadius: kBorderRadiusLR10),
                  width: Get.width * 0.72,
                  margin: KPadding.only(bottom: 1.5),
                  child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      padding: KPadding.only(
                          left: 10, top: 13, bottom: 13, right: 5),
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
                                    left: 10,
                                    right: 5,
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
                ),
              ],
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: KPadding.only(top: 10),
                width: 110.w,
                decoration: const BoxDecoration(
                  color: CustomColors.white,
                  // borderRadius: kBorderRadius12,
                ),
                child: ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        setState(() {
                          selectedIndex = index;
                        });
                      },
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 60.h,
                            width: 5.w,
                            decoration: BoxDecoration(
                                gradient: selectedIndex == index
                                    ? const LinearGradient(
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                        colors: [
                                            CustomColors.barGradient1,
                                            CustomColors.barGradient2
                                          ])
                                    : null,
                                borderRadius: kBorderRadiusTRBR5),
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                Stack(
                                  clipBehavior: Clip.none,
                                  children: [
                                    Container(
                                      height: 52,
                                      width: 42,
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                          color: selectedIndex == index
                                              ? CustomColors.categoryBlue
                                              : CustomColors.faintGrey,
                                          borderRadius: kBorderRadius10),
                                    ),
                                    AnimatedPositioned(
                                      duration:
                                          const Duration(milliseconds: 25),
                                      top: selectedIndex == index ? -7 : 4,
                                      bottom: 0.75,
                                      left: 1.25,
                                      right: selectedIndex == index ? -6 : 3,
                                      child: CustomImage(
                                        img: '${category[index]['icon']}',
                                        height: 30,
                                      ),
                                    )
                                  ],
                                ),
                                const SizedBox(height: 10),
                                Text('${category[index]['label']}',
                                    style: KText.r12w5,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.center),
                                Gap.height(),
                              ],
                            ).pSymmetric(10),
                          ),
                        ],
                      ),
                    );
                  },
                  itemCount: category.length,
                ),
              ),
              Gap.width(5),
              Flexible(
                flex: 4,
                child: Container(
                  decoration: const BoxDecoration(color: CustomColors.white),
                  // margin: KPadding.only(top: 2),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Most Demanding',
                        style: KText.r14w5,
                      ).mOnly(left: 15),
                      ServiceGridSection(
                        onTap: () {
                          Get.to(() => const BAYPServiceScreen());
                        },
                        align: Alignment.center,
                        services: insideCategory,
                        margin: KPadding.none,
                        bgColor: CustomColors.white,
                        crossAxisCount: 3,
                      ),
                    ],
                  ).pSymmetric(0, 15),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
