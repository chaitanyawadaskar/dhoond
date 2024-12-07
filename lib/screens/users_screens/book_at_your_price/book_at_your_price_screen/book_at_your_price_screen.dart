import 'dart:async';
import 'package:customize_button/customize_button.dart';
import 'package:dhoond/components/arrow_left_appbar.dart';
import 'package:dhoond/components/map_view.dart';
import 'package:dhoond/components/shadow_container.dart';
import 'package:dhoond/data/extensions/extensions.dart';
import 'package:dhoond/screens/users_screens/book_at_your_price/find_partner_screen/find_partner_screen.dart';
import 'package:dhoond/screens/users_screens/user_dashboard_screen/inner_screens/user_home_screen/components/search_text_feild.dart';
import 'package:dhoond/screens/users_screens/user_home_search_screen/user_home_search_screen.dart';
import 'package:dhoond/utilities/assets_paths/assets_paths.dart';
import 'package:dhoond/utilities/constant/constant.dart';
import 'package:dhoond/utilities/core/kboxshadow.dart';
import 'package:dhoond/utilities/core/kpadding.dart';
import 'package:dhoond/utilities/core/kradius.dart';
import 'package:dhoond/utilities/custom_colors/custom_colors.dart';
import 'package:dhoond/utilities/custom_image/custom_image.dart';
import 'package:dhoond/utilities/gap/gap.dart';
import 'package:dhoond/utilities/theme/ktext_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../../data/controller/price_controller/price_controller.dart';
import '../../../../utilities/core/ksizedbox.dart';
import '../../user_service_partner_screen/user_service_partner_screen.dart';
import '../bayp_search_sceen/bayp_search_sceen.dart';
import '../bayp_services_screen/bayp_services_screen.dart';
import 'components/bayp_categories_bottomsheet.dart';

class BookAtYourPriceScreen extends StatefulWidget {
  const BookAtYourPriceScreen({super.key});

  @override
  State<BookAtYourPriceScreen> createState() => _BookAtYourPriceScreenState();
}

class _BookAtYourPriceScreenState extends State<BookAtYourPriceScreen> {
  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();
  final priceController = Get.put(PriceController());
  late ScrollController controller;
  bool isVisible = true;
  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(21.1280447, 79.0079838),
    zoom: 14.4746,
  );

  List list = [
    'https://i.postimg.cc/yxCHRccs/Group-38514.png',
    'https://i.postimg.cc/5ygRtCmP/Group-38515.png',
    'https://i.postimg.cc/W3699kx2/Group-38516.png',
    'https://i.postimg.cc/kXhTh9Yt/Group-38517.png',
    'https://i.postimg.cc/W4m6jP88/Group-38518.png',
    'https://i.postimg.cc/xdPHh3jF/Group-38519.png',
    'https://i.postimg.cc/wj2Lbkj4/Group-38520.png',
    'https://i.postimg.cc/R083jp5d/Group-38522.png',
    'https://i.postimg.cc/k5wMVKrk/Group-38524.png',
    'https://i.postimg.cc/KvFKSgV6/Group-38525.png',
    'https://i.postimg.cc/PqZh5Sv2/Group-38526.png',
    'https://i.postimg.cc/hjPC5jnT/Group-38527.png',
    'https://i.postimg.cc/brBPCW2H/Group-38528.png',
    'https://i.postimg.cc/c4tG1Dn2/Group-38529.png'
  ];
  @override
  void initState() {
    super.initState();
    controller = ScrollController();
    controller.addListener(_scrollListener);
  }

  _scrollListener() {
    setState(() {
      if (controller.hasClients) {
        isVisible = controller.position.minScrollExtent == controller.offset
            ? true
            : false;
      }
    });
  }

  final List<Map<String, String>> household = [
    {'icon': ImagePath.maid, 'label': 'Maid'},
    {'icon': ImagePath.ironer, 'label': 'Ironer'},
    {'icon': ImagePath.man, 'label': 'Milk man'},
    {'icon': ImagePath.homeCook, 'label': 'Home cook'},
    {'icon': ImagePath.gardener, 'label': 'Gardener'},
    {'icon': ImagePath.petSitter, 'label': 'Pet Sitter'},
    {'icon': ImagePath.carWasher, 'label': 'Car washer'},
    {'icon': ImagePath.dayDriver, 'label': 'Day Driver'},
    {'icon': ImagePath.man, 'label': 'Water Can'},
    {'icon': ImagePath.ro, 'label': 'RO Purifier Technician'},
    {'icon': ImagePath.elevator, 'label': 'Elevator Technician'},
    {'icon': ImagePath.man, 'label': 'Gas Technician'},
    {'icon': ImagePath.man, 'label': 'Scrap Collector'},
    {'icon': ImagePath.man, 'label': 'Security guard'},
    {'icon': ImagePath.babySitter, 'label': 'Baby sitter'},
    {'icon': ImagePath.tutor, 'label': 'Tutor for kids'},
    {'icon': ImagePath.man, 'label': 'Pest Control'},
    {'icon': ImagePath.therapist, 'label': 'Counsellor/ Therapist'},
    {'icon': ImagePath.paranormal, 'label': 'Paranormal'},
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: Get.height,
          width: Get.width,
          child: Stack(
            children: [
              MapView(
                kGooglePlex: _kGooglePlex,
                controller: _controller,
                height: Get.height * 0.49,
              ),
              const Positioned(
                  top: 15,
                  left: 10,
                  child: ArrowLeftAppbar(
                    padding: KPadding.none,
                  )),
              Positioned.fill(
                  top: Get.height * 0.49,
                  child: SingleChildScrollView(
                    child: Container(
                      padding: KPadding.all15,
                      decoration: const BoxDecoration(
                        color: CustomColors.white,
                      ),
                      child: Column(
                        children: [
                          Gap.height(10),
                          SearchTextFeild(
                            enable: false,
                            hintText: 'Search “Electrical work”',
                            onTap: () {
                              Get.to(() => const BAYPSearchScreen());
                            },
                            hintStyle: KText.r13,
                          ),
                          Gap.height(),
                          Row(
                            children: [
                              ShadowContainer(
                                  disableShadow: true,
                                  backgroundColor: CustomColors.gradientGrey1,
                                  padding: KPadding.all10,
                                  borderRadius: kBorderRadius20,
                                  child: Text(
                                    'Installation',
                                    style: KText.r12w5,
                                  )),
                              Gap.width(),
                              ShadowContainer(
                                  disableShadow: true,
                                  border: kBorderAllGrey05,
                                  backgroundColor: CustomColors.white,
                                  padding: KPadding.all10,
                                  borderRadius: kBorderRadius20,
                                  child: Text(
                                    'Uninstallations',
                                    style: KText.r12w5,
                                  )),
                              Gap.width(),
                              ShadowContainer(
                                  disableShadow: true,
                                  border: kBorderAllGrey05,
                                  backgroundColor: CustomColors.white,
                                  padding: KPadding.all10,
                                  borderRadius: kBorderRadius20,
                                  child: Text(
                                    'Repair',
                                    style: KText.r12w5,
                                  )),
                            ],
                          ),
                          Gap.height(),
                          Row(
                            children: [
                              Text(
                                'Select Categories',
                                style: KText.r20w7,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 186.h,
                            child: ListView.separated(
                                controller: controller,
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (context, index) =>
                                    GestureDetector(
                                      onTap: () {
                                        Get.bottomSheet(
                                          backgroundColor: CustomColors.white,
                                          elevation: 0,
                                          isScrollControlled: true,
                                          shape: const RoundedRectangleBorder(
                                              borderRadius: kBorderRadiusZero),
                                          BaypCategoriesBottomSheet(
                                              household: household),
                                        );
                                      },
                                      child: CustomImage(
                                        img: '${list[index]}',
                                        width: 126.w,
                                        height: 186.h,
                                        padding:
                                            KPadding.only(bottom: 10, left: 10),
                                        imageType: ImageType.network,
                                      ),
                                    ),
                                separatorBuilder: (context, index) =>
                                    Gap.width(5),
                                itemCount: list.length),
                          ),
                          Gap.height(20),
                          Container(
                            decoration: BoxDecoration(
                                boxShadow: KBoxShadow.faintGreyLRB,
                                borderRadius: kBorderRadius12,
                                color: CustomColors.grey.withOpacity(0.2)),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Container(
                                  height: 5,
                                  width: 25,
                                  decoration: BoxDecoration(
                                      borderRadius: kBorderRadius12,
                                      color: isVisible
                                          ? CustomColors.grey
                                          : CustomColors.grey.withOpacity(0.2)),
                                ),
                                Container(
                                  height: 5,
                                  width: 25,
                                  decoration: BoxDecoration(
                                      borderRadius: kBorderRadius12,
                                      color: !isVisible
                                          ? CustomColors.grey
                                          : CustomColors.grey.withOpacity(0.2)),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
