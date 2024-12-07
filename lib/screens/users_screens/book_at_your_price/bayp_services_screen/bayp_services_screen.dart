import 'package:customize_button/customize_button.dart';
import 'package:dhoond/components/shadow_container.dart';
import 'package:dhoond/screens/users_screens/user_dashboard_screen/inner_screens/user_home_screen/components/search_text_feild.dart';
import 'package:dhoond/utilities/core/kboxshadow.dart';
import 'package:dhoond/utilities/core/kpadding.dart';
import 'package:dhoond/utilities/core/kradius.dart';
import 'package:dhoond/utilities/custom_colors/custom_colors.dart';
import 'package:dhoond/utilities/custom_image/custom_image.dart';
import 'package:dhoond/utilities/gap/gap.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../components/arrow_left_appbar.dart';
import '../../../../data/controller/price_controller/price_controller.dart';
import '../../../../utilities/theme/ktext_theme.dart';
import '../bayp_summary_screen/bayp_summary_screen.dart';
import 'components/bayp_service_app_bar.dart';
import 'components/bayp_service_card.dart';

class BAYPServiceScreen extends StatefulWidget {
  const BAYPServiceScreen({super.key});

  @override
  State<BAYPServiceScreen> createState() => _BAYPServiceScreenState();
}

class _BAYPServiceScreenState extends State<BAYPServiceScreen> {
  final first = GlobalKey();
  final second = GlobalKey();
  final third = GlobalKey();
  final four = GlobalKey();
  final five = GlobalKey();
  final six = GlobalKey();
  final priceController = Get.put(PriceController());

  var list = [
    {
      'url': 'https://i.postimg.cc/Sx3cg4G5/images-1.jpg',
      'name': 'Switch & socket'
    },
    {'url': 'https://i.postimg.cc/rmCWyrLX/images-2.jpg', 'name': 'Fan'},
    {'url': 'https://i.postimg.cc/gk0RdjSQ/images.jpg', 'name': 'Light'},
    {'url': 'https://i.postimg.cc/Y0rFvCp4/images-3.jpg', 'name': 'Wiring'},
    {'url': 'https://i.postimg.cc/Hkq7Q2Y1/images.png', 'name': 'Door bell'},
    {'url': 'https://i.postimg.cc/cCFnwGHF/images-4.jpg', 'name': 'MCB & fuse'},
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const BaypServiceAppBar(),
        bottomNavigationBar: ShadowContainer(
            boxShadow: KBoxShadow.faintGrey,
            padding: KPadding.symmetric(30, 20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '₹1,400',
                      style: KText.r24Bold,
                    ),
                    CustomizedButton(
                      width: 175.w,
                      onTap: () {
                        Get.to(() => const BAYPSummaryScreen(),
                            transition: Transition.native);
                      },
                      text: 'Next',
                      fontStyle: KText.r18w5White,
                      backgroundColor: CustomColors.black,
                    )
                  ],
                )
              ],
            )),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: KPadding.horizontal20,
                child: Column(
                  children: [
                    Gap.height(25),
                    GridView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10,
                          mainAxisExtent: 120.h),
                      itemCount: list.length,
                      itemBuilder: (ctx, i) => InkWell(
                        onTap: () {
                          switch (i) {
                            case 0:
                              Scrollable.ensureVisible(first.currentContext!,
                                  duration: const Duration(milliseconds: 1000),
                                  curve: Curves.easeOut);
                            case 1:
                              Scrollable.ensureVisible(second.currentContext!,
                                  duration: const Duration(milliseconds: 1000),
                                  curve: Curves.easeOut);
                            case 2:
                              Scrollable.ensureVisible(third.currentContext!,
                                  duration: const Duration(milliseconds: 1000),
                                  curve: Curves.easeOut);
                            case 3:
                              Scrollable.ensureVisible(four.currentContext!,
                                  duration: const Duration(milliseconds: 1000),
                                  curve: Curves.easeOut);
                            case 4:
                              Scrollable.ensureVisible(five.currentContext!,
                                  duration: const Duration(milliseconds: 1000),
                                  curve: Curves.easeOut);
                            case 5:
                              Scrollable.ensureVisible(six.currentContext!,
                                  duration: const Duration(milliseconds: 1000),
                                  curve: Curves.easeOut);
                          }
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              padding: KPadding.all10,
                              decoration: BoxDecoration(
                                  color: CustomColors.gradientGrey,
                                  borderRadius: kBorderRadius10),
                              child: CustomImage(
                                img: '${list[i]['url']}',
                                color: CustomColors.gradientGrey,
                                height: 55.w,
                                width: 55.w,
                              ),
                            ),
                            const SizedBox(height: 10),
                            Text('${list[i]['name']}',
                                style: KText.r12,
                                maxLines: 3,
                                textAlign: TextAlign.center),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Gap.height(),
              const Divider(
                thickness: 3,
                color: CustomColors.floatGrey,
              ),
              Gap.height(),
              Padding(
                key: first,
                padding: KPadding.horizontal20,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '${list[0]['name']}',
                      style: KText.r20Bold,
                    ),
                    Gap.height(),
                    ListView.separated(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) => const BaypServiceCard(
                            title: 'Switch & Socket installation',
                            img: 'https://i.postimg.cc/DzVR7yPY/image-97.png'),
                        separatorBuilder: (context, index) => Gap.height(),
                        itemCount: 2)
                  ],
                ),
              ),
              Gap.height(),
              Padding(
                key: second,
                padding: KPadding.horizontal20,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '${list[1]['name']}',
                      style: KText.r20Bold,
                    ),
                    Gap.height(),
                    ListView.separated(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) => const BaypServiceCard(
                            title: 'Switch & Socket installation',
                            img: 'https://i.postimg.cc/DzVR7yPY/image-97.png'),
                        separatorBuilder: (context, index) => Gap.height(),
                        itemCount: 2)
                  ],
                ),
              ),
              Gap.height(),
              Padding(
                key: third,
                padding: KPadding.horizontal20,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '${list[2]['name']}',
                      style: KText.r20Bold,
                    ),
                    Gap.height(),
                    ListView.separated(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) => const BaypServiceCard(
                            title: 'Switch & Socket installation',
                            img: 'https://i.postimg.cc/DzVR7yPY/image-97.png'),
                        separatorBuilder: (context, index) => Gap.height(),
                        itemCount: 2)
                  ],
                ),
              ),
              Gap.height(),
              Padding(
                key: four,
                padding: KPadding.horizontal20,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '${list[3]['name']}',
                      style: KText.r20Bold,
                    ),
                    Gap.height(),
                    ListView.separated(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) => const BaypServiceCard(
                            title: 'Switch & Socket installation',
                            img: 'https://i.postimg.cc/DzVR7yPY/image-97.png'),
                        separatorBuilder: (context, index) => Gap.height(),
                        itemCount: 2)
                  ],
                ),
              ),
              Gap.height(),
              Padding(
                key: five,
                padding: KPadding.horizontal20,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '${list[4]['name']}',
                      style: KText.r20Bold,
                    ),
                    Gap.height(),
                    ListView.separated(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) => const BaypServiceCard(
                            title: 'Switch & Socket installation',
                            img: 'https://i.postimg.cc/DzVR7yPY/image-97.png'),
                        separatorBuilder: (context, index) => Gap.height(),
                        itemCount: 2)
                  ],
                ),
              ),
              Gap.height(),
              Padding(
                key: six,
                padding: KPadding.horizontal20,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '${list[5]['name']}',
                      style: KText.r20Bold,
                    ),
                    Gap.height(),
                    ListView.separated(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) => const BaypServiceCard(
                            title: 'Switch & Socket installation',
                            img: 'https://i.postimg.cc/DzVR7yPY/image-97.png'),
                        separatorBuilder: (context, index) => Gap.height(),
                        itemCount: 2)
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
