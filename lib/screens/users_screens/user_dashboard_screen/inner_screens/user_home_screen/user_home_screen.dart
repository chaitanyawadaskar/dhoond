import 'package:customize_button/customize_button.dart';
import 'package:dhoond/data/extensions/extensions.dart';
import 'package:dhoond/screens/users_screens/user_dashboard_screen/inner_screens/user_home_screen/section/book_with_us.dart';
import 'package:dhoond/utilities/assets_paths/assets_paths.dart';
import 'package:dhoond/utilities/constant/constant.dart';
import 'package:dhoond/utilities/core/kpadding.dart';
import 'package:dhoond/utilities/core/kradius.dart';
import 'package:dhoond/utilities/custom_colors/custom_colors.dart';
import 'package:dhoond/utilities/custom_image/custom_image.dart';
import 'package:dhoond/utilities/theme/ktext_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:get/get.dart';
import 'package:showcaseview/showcaseview.dart';
import 'package:sticky_headers/sticky_headers.dart';
import '../../../../../components/shadow_container.dart';
import '../../../../../components/triangle_painter.dart';
import '../../../../../utilities/gap/gap.dart';
import '../../../user_home_search_screen/user_home_search_screen.dart';
import 'components/search_text_feild.dart';
import 'section/banner_section.dart';
import 'section/bayp_section.dart';
import 'section/grid_section.dart';
import 'section/undefined_section.dart';
import 'section/user_home_header.dart';

class UserHomeScreen extends StatefulWidget {
  const UserHomeScreen({
    super.key,
  });
  @override
  State<UserHomeScreen> createState() => _UserHomeScreenState();
}

class _UserHomeScreenState extends State<UserHomeScreen> {
  void showCustomDialog() {
    Get.dialog(
      barrierDismissible: false,
      Dialog(
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: kBorderRadius8,
        ),
        backgroundColor: CustomColors.white,
        child: Padding(
          padding: KPadding.symmetric(16, 30),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(
                Ionicons.checkmark_circle,
                size: 60,
                color: CustomColors.alertGreen,
              ),
              Gap.height(20),
              Text("Thanks for joining us.", style: KText.r15w5),
              Gap.height(10),
              Text(
                  "We're here to help you complete your tasks easily, affordably, and without stress.",
                  textAlign: TextAlign.center,
                  style: KText.r14Grey),
              Gap.height(20),
              ElevatedButton(
                onPressed: () {
                  Get.back();
                  ShowCaseWidget.of(context).startShowCase([showCaseKey]);
                },
                style: ElevatedButton.styleFrom(
                  padding: KPadding.symmetric(50, 13),
                  backgroundColor: CustomColors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: kBorderRadius30,
                  ),
                ),
                child: Text("Let’s get started", style: KText.r14w5White),
              ),
            ],
          ),
        ),
      ),
    );
  }

  var popServiceList = ['Fabrication', 'Plumber', 'Carpenter'];
  var popServiceList2 = [
    'Steel Fabrication',
    'Iron Fabrication',
    'Tile manufacturer'
  ];
  final showCaseKey = GlobalKey();
  bool isBAYP = false;
  bool isGrid = true;
  bool status = false;
  bool nothing = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            padding: KPadding.symmetric(0, 6),
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  CustomColors.white,
                  CustomColors.bgGradient1,
                  CustomColors.bgGradient2,
                  // CustomColors.bgGradient3,
                  // CustomColors.bgGradient4,
                  // CustomColors.bgGradient5,
                ],
              ),
            ),
            child: Column(
              children: [
                UserHomeHeader(
                  showCaseKey: showCaseKey,
                ),
              ],
            ),
          ),
          StickyHeader(
            header: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    CustomColors.bgGradient2,
                    CustomColors.bgGradient3,
                  ],
                ),
              ),
              padding: KPadding.symmetric(16, 6),
              child: Row(
                children: [
                  Expanded(
                    child: Showcase.withWidget(
                      key: showCaseKey,
                      height: 200,
                      width: double.infinity,
                      targetBorderRadius: kBorderRadius50,
                      container: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: KPadding.only(left: 45),
                            child: CustomPaint(
                              painter: TrianglePainter(
                                strokeColor: CustomColors.white,
                                strokeWidth: 10,
                                paintingStyle: PaintingStyle.fill,
                              ),
                              child: const SizedBox(
                                height: 15,
                                width: 20,
                              ),
                            ),
                          ),
                          Container(
                            padding: KPadding.all25,
                            decoration: BoxDecoration(
                                color: CustomColors.white,
                                borderRadius: kBorderRadius8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'We’ll match you with a professional.',
                                  style: KText.r15w5,
                                ),
                                Gap.height(20),
                                SizedBox(
                                  width: Get.width * 0.75,
                                  child: Text(
                                    'We\'re here to help you complete your tasks easily, affordably, and without stress.',
                                    style: KText.r14Grey,
                                  ),
                                ),
                                Gap.height(20),
                                CustomizedButton(
                                  onTap: () {
                                    ShowCaseWidget.of(context)
                                        .completed(showCaseKey);
                                  },
                                  fontStyle: KText.r14White,
                                  borderRadius: 50,
                                  elevation: 0,
                                  width: Get.width * 0.75,
                                  backgroundColor: CustomColors.black,
                                  text: 'Start Searching',
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      child: SizedBox(
                        height: 50,
                        child: SearchTextFeild(
                          borderRadius: kBorderRadius8,
                          enable: false,
                          ignoreVoiceRecognization: true,
                          boxShadow: const [],
                          hintStyle: KText.r12Grey,
                          hintText: 'Search for “Electrician”',
                          onTap: () {
                            Get.to(
                              () => const UserHomeSearchScreen(),
                              transition: Transition.native,
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                  Gap.width(10),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      FlutterSwitch(
                        value: status,
                        height: 26.w,
                        padding: 2,
                        toggleSize: 20,
                        width: 50.w,
                        // toggleColor: CustomColors.black,
                        // switchBorder: kBorderAll,
                        // activeColor: CustomColors.white,
                        // activeToggleColor: CustomColors.black,
                        inactiveColor: CustomColors.grey1,
                        onToggle: (val) {
                          setState(() {
                            status = val;
                          });
                        },
                      ),
                      Gap.height(5),
                      Text(
                        status ? 'Category' : 'TRENDING'.pascal,
                        style: KText.r12White,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            content: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          CustomColors.bgGradient3,
                          CustomColors.bgGradient4,
                          CustomColors.bgGradient5,
                        ],
                      ),
                      borderRadius: kBorderRadiusBottom20),
                  padding: KPadding.only(top: 10),
                  child: CustomImage(
                    img: ImagePath.dashBg,
                    imageType: ImageType.asset,
                    height: 177.h,
                    borderRadius: kBorderRadius20,
                    width: double.infinity,
                  ),
                ),
                Gap.height(10),
                Padding(
                  padding: KPadding.horizontal16,
                  child: Column(
                    children: [
                      Gap.height(20),
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
                                  padding: KPadding.symmetric(0, 8),
                                  borderRadius: kBorderRadius50,
                                  width: 140.w,
                                  disableShadow: true,
                                  child: Center(
                                      child: Text(
                                    'Undefined',
                                    style: !isBAYP
                                        ? KText.r14w5
                                        : KText.r14w5White,
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
                                  padding: KPadding.symmetric(0, 8),
                                  borderRadius: kBorderRadius50,
                                  width: 140.w,
                                  disableShadow: true,
                                  child: Center(
                                    child: Text(
                                      'Book at your price',
                                      style: isBAYP
                                          ? KText.r14w5
                                          : KText.r14w5White,
                                    ),
                                  )),
                            ],
                          )),
                    ],
                  ),
                ),
                Gap.height(10),
                if (!isBAYP)
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
                              isGrid
                                  ? Ionicons.grid_outline
                                  : FontAwesome.list_ul,
                              size: 18.w,
                              color: CustomColors.black,
                            )
                          ],
                        ),
                      ),
                    ],
                  ).mSymmetric(16, 8),
                isBAYP
                    ? const BAYPSection()
                    : (isGrid ? const GridSection() : const UndefinedSection()),
                Gap.height(),
                const BookWithUsScreen(),
                Gap.height(24),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Popular Services',
                    style: KText.r18Bold,
                  ),
                ).mOnly(left: 16),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Best Selling Services',
                    style: KText.r15Grey,
                  ),
                ).mOnly(left: 16, top: 2),
                Gap.height(5),
                SizedBox(
                  height: 130.h,
                  child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => Column(
                            children: [
                              Container(
                                width: 130.w,
                                height: 90.h,
                                decoration: BoxDecoration(
                                    color: CustomColors.grey1,
                                    borderRadius: kBorderRadius5),
                              ),
                              Gap.height(7),
                              Text(
                                popServiceList[index],
                                style: KText.r12w5,
                              )
                            ],
                          ),
                      separatorBuilder: (context, index) => Gap.width(),
                      itemCount: popServiceList.length),
                ).mSymmetric(16),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Services in selected category',
                    style: KText.r15Grey,
                  ),
                ).mOnly(left: 16, top: 12),
                Gap.height(5),
                SizedBox(
                  height: 130.h,
                  child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => Column(
                            children: [
                              Container(
                                width: 130.w,
                                height: 90.h,
                                decoration: BoxDecoration(
                                    color: CustomColors.grey1,
                                    borderRadius: kBorderRadius5),
                              ),
                              Gap.height(7),
                              Text(
                                popServiceList2[index],
                                style: KText.r12w5,
                              )
                            ],
                          ),
                      separatorBuilder: (context, index) => Gap.width(),
                      itemCount: popServiceList2.length),
                ).mSymmetric(16),
                Gap.height(24),
                Container(
                  color: CustomColors.faintYellow,
                  padding: KPadding.symmetric(16, 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'How dhoond works?',
                            style: KText.r16Bold,
                          ),
                          const Spacer(),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              ShadowContainer(
                                  borderRadius: kBorderRadius50,
                                  backgroundColor: CustomColors.faintRewardBlue,
                                  padding: KPadding.all5,
                                  disableShadow: true,
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      ShadowContainer(
                                          onTap: () {
                                            setState(() {
                                              nothing = false;
                                            });
                                          },
                                          backgroundColor: !nothing
                                              ? CustomColors.white
                                              : CustomColors.faintRewardBlue,
                                          padding: KPadding.symmetric(0, 10),
                                          borderRadius: kBorderRadius50,
                                          width: 80.w,
                                          disableShadow: true,
                                          child: Center(
                                              child: Text(
                                            'Undefined',
                                            style: !nothing
                                                ? KText.r10w5
                                                : KText.r10w5White,
                                          ))),
                                      ShadowContainer(
                                          onTap: () {
                                            setState(() {
                                              nothing = true;
                                            });
                                          },
                                          backgroundColor: nothing
                                              ? CustomColors.white
                                              : CustomColors.faintRewardBlue,
                                          padding: KPadding.symmetric(0, 10),
                                          borderRadius: kBorderRadius50,
                                          width: 100.w,
                                          disableShadow: true,
                                          child: Center(
                                            child: Text(
                                              'Book at your price',
                                              style: nothing
                                                  ? KText.r10w5
                                                  : KText.r10w5White,
                                            ),
                                          )),
                                    ],
                                  )),
                            ],
                          )
                        ],
                      ),
                      Gap.height(),
                      SizedBox(
                        height: 160.h,
                        child: ListView.separated(
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) => Container(
                                  width: 300.w,
                                  decoration: BoxDecoration(
                                      color: CustomColors.bgPink,
                                      borderRadius: kBorderRadius8),
                                ),
                            separatorBuilder: (context, index) => Gap.width(),
                            itemCount: popServiceList2.length),
                      ).paddingOnly(left: 2),
                    ],
                  ),
                ),
                Gap.height(24),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Top trending services',
                    style: KText.r18Bold,
                  ),
                ).mOnly(left: 16),

                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Right where you need it!',
                    style: KText.r15,
                  ),
                ).mOnly(left: 16, top: 2),
                Gap.height(20),
                SizedBox(
                  height: 260.h,
                  child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => Container(
                            width: 140.w,
                            decoration: BoxDecoration(
                                color: CustomColors.grey1,
                                borderRadius: kBorderRadius5),
                          ),
                      separatorBuilder: (context, index) => Gap.width(),
                      itemCount: popServiceList.length),
                ).mSymmetric(16),
                Gap.height(30),
                Container(
                  color: CustomColors.faintYellow,
                  padding: KPadding.symmetric(20, 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Customer’s words on our service',
                        style: KText.r18Bold,
                      ),
                      Gap.height(20),
                      SizedBox(
                        height: 175.h,
                        child: ListView.separated(
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) => Container(
                                  width: 280.w,
                                  padding: KPadding.all10,
                                  decoration: BoxDecoration(
                                      color: CustomColors.bgPink,
                                      borderRadius: kBorderRadius8),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: 45.h,
                                        width: 45.w,
                                        decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: CustomColors.grey1),
                                      ),
                                      Gap.width(),
                                      Expanded(
                                          child: Column(
                                        children: [
                                          Text(
                                            'Exceptional service! The team was quick, professional, and incredibly thorough. They fixed my plumbing issue in no time, and left everything spotless. It feels like nothing was ever broken. Highly recommend',
                                            style: KText.r14,
                                          ),
                                        ],
                                      ))
                                    ],
                                  ),
                                ),
                            separatorBuilder: (context, index) => Gap.width(),
                            itemCount: popServiceList2.length),
                      ),
                    ],
                  ),
                ),
                Gap.height(25),
                const BannerSection(),
                // CustomizedButton(
                //   onTap: () {
                //     Get.to(() => const WelcomeScreen());
                //   },
                //   text: 'Become a Partner',
                //   pad: KPadding.horizontal30,
                //   elevation: 0,
                //   fontStyle: KText.r18w5,
                //   borderRadius: 5,
                //   enableBorder: true,
                //   backgroundColor: CustomColors.white,
                // ).mSymmetric(16),

                Gap.height(),
              ],
            ),
          ),

          // StickyHeader(
          //     content:    ),
        ],
      ),
    );
  }
}
