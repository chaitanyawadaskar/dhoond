import 'package:dhoond/data/extensions/extensions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../../components/shadow_container.dart';
import '../../../../../utilities/assets_paths/assets_paths.dart';
import '../../../../../utilities/constant/constant.dart';
import '../../../../../utilities/core/kboxshadow.dart';
import '../../../../../utilities/core/kpadding.dart';
import '../../../../../utilities/core/kradius.dart';
import '../../../../../utilities/custom_colors/custom_colors.dart';
import '../../../../../utilities/custom_image/custom_image.dart';
import '../../../../../utilities/gap/gap.dart';
import '../../../../../utilities/theme/ktext_theme.dart';
import '../user_home_screen/section/service_grid_section.dart';

class UserCategoriesScreen extends StatefulWidget {
  const UserCategoriesScreen({super.key});

  @override
  State<UserCategoriesScreen> createState() => _UserCategoriesScreenState();
}

class _UserCategoriesScreenState extends State<UserCategoriesScreen> {
  int selectedIndex = -1;
  int selectedSort = -1;
  bool isBAYP = false;
  final List<Map<String, String>> category = [
    {
      'icon': 'https://i.postimg.cc/Fzdm98b0/Asset-1-300x-1.png',
      'label': 'Construction'
    },
    {
      'icon': 'https://i.postimg.cc/YCS4j6bg/Asset-2-300x-2.png',
      'label': 'Electrical work'
    },
    {
      'icon': 'https://i.postimg.cc/sXPS5VSZ/Asset-3-300x.png',
      'label': 'Technician'
    },
    {
      'icon': 'https://i.postimg.cc/FR7z6JXT/workforce-2.png',
      'label': 'Workforce'
    },
    {
      'icon': 'https://i.postimg.cc/CMm72NBn/Asset-5-300x.png',
      'label': 'Fabrication work'
    },
    {
      'icon': 'https://i.postimg.cc/4d0zmg1x/Wood-work-1-1.png',
      'label': 'Wood work'
    },
    {
      'icon': 'https://i.postimg.cc/Qdttjcqz/7-300x.png',
      'label': 'Aluminium work'
    },
    {
      'icon': 'https://i.postimg.cc/q71W4Cj1/mechanic.png',
      'label': 'Mechanical work'
    },
    {
      'icon': 'https://i.postimg.cc/Hn6rtz2Q/window-installer.png',
      'label': 'Glass & Plastic'
    },
    {'icon': 'https://i.postimg.cc/y8HNSwBw/painter.png', 'label': 'Painter'},
    {
      'icon': 'https://i.postimg.cc/hGkZ023s/blank-white-7sn5o1woonmklx1h.jpg',
      'label': 'Other'
    },
  ];
  final List<Map<String, String>> insideCategory = [
    {
      'icon': 'https://i.postimg.cc/Sxw8LKc3/electrician.png',
      'label': 'Electrician'
    },
    {'icon': 'https://i.postimg.cc/d3VKVrty/plumber.png', 'label': 'Plumber'},
    {'icon': 'https://i.postimg.cc/VNHtgQdr/painter.png', 'label': 'Painter'},
    {'icon': 'https://i.postimg.cc/gk8GHN28/2-300x.png', 'label': 'Mason'},
    {
      'icon': 'https://i.postimg.cc/J4H3thYy/carpenter.png',
      'label': 'Carpenter'
    },
  ];
  final List<Map<String, String>> categoryWise = [
    {'icon': 'https://i.postimg.cc/gk8GHN28/2-300x.png', 'label': 'Mason'},
    {'icon': 'https://i.postimg.cc/hPhHZVyX/mason.png', 'label': 'Bricklayer'},
    {
      'icon': 'https://i.postimg.cc/RhXKsK9z/celling-1.png',
      'label': 'False Ceiling Expert'
    },
    {'icon': 'https://i.postimg.cc/7LHDDzrR/pop.png', 'label': 'POP Expert'},
    {'icon': 'https://i.postimg.cc/y8HNSwBw/painter.png', 'label': 'Painter'},
    {'icon': 'https://i.postimg.cc/d3VKVrty/plumber.png', 'label': 'Plumber'},
    {
      'icon': 'https://i.postimg.cc/Sxw8LKc3/electrician.png',
      'label': 'Electrician'
    },
    {'icon': 'https://i.postimg.cc/Bbkw6X7H/welder.png', 'label': 'Welder'},
    {'icon': 'https://i.postimg.cc/j5CpS0dV/9-300x.png', 'label': 'Tiler'},
    {'icon': 'https://i.postimg.cc/tCgxRBF3/10-300x.png', 'label': 'Roofer'},
    {'icon': 'https://i.postimg.cc/2SQmsD32/12-300x.png', 'label': 'Gardener'},
    {
      'icon': 'https://i.postimg.cc/mDGmKvzN/Asset-12-300x.png',
      'label': '⁠Demolition'
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
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'All Categories',
              style: KText.r18w5,
            ),
            ShadowContainer(
                borderRadius: kBorderRadius50,
                backgroundColor: CustomColors.faintRewardBlue,
                padding: KPadding.all5,
                disableShadow: true,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ShadowContainer(
                        onTap: () {
                          setState(() {
                            isBAYP = false;
                          });
                        },
                        backgroundColor: !isBAYP
                            ? CustomColors.white
                            : CustomColors.faintRewardBlue,
                        padding: KPadding.symmetric(0, 10),
                        borderRadius: kBorderRadius50,
                        width: 100.w,
                        disableShadow: true,
                        child: Center(
                            child: Text(
                          'Undefined',
                          style: !isBAYP ? KText.r10w5 : KText.r10w5White,
                        ))),
                    ShadowContainer(
                        onTap: () {
                          setState(() {
                            isBAYP = true;
                          });
                        },
                        backgroundColor: isBAYP
                            ? CustomColors.white
                            : CustomColors.faintRewardBlue,
                        padding: KPadding.symmetric(0, 10),
                        borderRadius: kBorderRadius50,
                        width: 100.w,
                        disableShadow: true,
                        child: Center(
                          child: Text(
                            'Book at your price',
                            style: isBAYP ? KText.r10w5 : KText.r10w5White,
                          ),
                        )),
                  ],
                )),
          ],
        ).mOnly(left: 16, right: 16, top: 20, bottom: 20),
        Expanded(
          child: ShadowContainer(
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
                                left: 10, top: 10, bottom: 10, right: 5),
                            itemBuilder: (context, index) => InkWell(
                                  onTap: () {
                                    selectedSort = index;
                                    setState(() {});
                                  },
                                  child: Container(
                                    margin: KPadding.horizontal5,
                                    // decoration: BoxDecoration(
                                    //     borderRadius: kBorderRadius10,
                                    //     boxShadow: selectedSort == index
                                    //         ? KBoxShadow.glowBlue
                                    //         : null),
                                    // alignment: Alignment.center,
                                    // child: CustomImage(
                                    //   img: sortList[index],
                                    //   imageType: ImageType.asset,
                                    //   width: 125.w,
                                    //   height: 40.h,
                                    // ),
                                    // padding: KPadding.only(top: 10),
                                    decoration: BoxDecoration(
                                        color:
                                            sortList[index]['color'] as Color,
                                        boxShadow: selectedSort == index
                                            ? sortList[index]['shadow']
                                                as List<BoxShadow>
                                            : null,
                                        borderRadius: kBorderRadius8),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          '${sortList[index]['label']}',
                                          style: KText.r12Bold,
                                        ).mOnly(
                                          left: 10,
                                          right: 5,
                                        ),
                                        CustomImage(
                                          borderRadius:
                                              kBorderRadiusBottomRight8,
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
                Expanded(
                  child: Row(
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
                          padding: KPadding.only(top: 5),
                          physics: const BouncingScrollPhysics(),
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
                                                      ? CustomColors
                                                          .categoryBlue
                                                      : CustomColors.faintGrey,
                                                  borderRadius:
                                                      kBorderRadius10),
                                            ),
                                            AnimatedPositioned(
                                              duration: const Duration(
                                                  milliseconds: 25),
                                              top: selectedIndex == index
                                                  ? -7
                                                  : 4,
                                              bottom: 0.75,
                                              left: 1.25,
                                              right: selectedIndex == index
                                                  ? -6
                                                  : 3,
                                              child: CustomImage(
                                                img:
                                                    '${category[index]['icon']}',
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
                          decoration:
                              const BoxDecoration(color: CustomColors.white),
                          child: SingleChildScrollView(
                            physics: const BouncingScrollPhysics(),
                            child: Container(
                              decoration: const BoxDecoration(
                                  color: CustomColors.white),
                              // margin: KPadding.only(top: 2),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Most Demanding',
                                    style: KText.r14w5,
                                  ).mOnly(left: 15),
                                  ServiceGridSection(
                                    services: insideCategory,
                                    margin: KPadding.none,
                                    bgColor: CustomColors.white,
                                    crossAxisCount: 3,
                                  ),
                                  Text(
                                    'Most Demanding',
                                    style: KText.r14w5,
                                  ).mOnly(left: 15),
                                  ServiceGridSection(
                                    services: categoryWise,
                                    crossAxisCount: 3,
                                    bgColor: CustomColors.white,
                                    margin: KPadding.none,
                                  ),
                                  Text(
                                    'Most Demanding',
                                    style: KText.r14w5,
                                  ).mOnly(left: 15),
                                  ServiceGridSection(
                                    services: insideCategory,
                                    margin: KPadding.none,
                                    bgColor: CustomColors.white,
                                    crossAxisCount: 3,
                                  ),
                                ],
                              ).pSymmetric(0, 15),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
