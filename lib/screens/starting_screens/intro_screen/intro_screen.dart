import 'package:carousel_slider/carousel_slider.dart';
import 'package:customize_button/customize_button.dart';
import 'package:dhoond/screens/partners_screens/partner_auth_screen/partner_auth_screen.dart';
import 'package:dhoond/screens/users_screens/user_auth_screen/user_auth_screen.dart';
import 'package:dhoond/screens/users_screens/user_drawer_screens/user_privacy_policy_screen/user_privacy_policy_screen.dart';
import 'package:dhoond/utilities/core/kpadding.dart';
import 'package:dhoond/utilities/theme/ktext_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../utilities/assets_paths/assets_paths.dart';
import '../../../utilities/core/ksizedbox.dart';
import '../../../utilities/custom_colors/custom_colors.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key, this.isFromUser = false});
  final bool isFromUser;
  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  final PageController pageController = PageController();
  int activePage = 0;
  final List<Map<String, dynamic>> introData = [
    {
      'title': 'Everything you need, find with DHOOND',
      'image': ImagePath.slide1,
    },
    {
      'title': 'Quickly book and manage your services',
      'image': ImagePath.slide2,
    },
    {
      'title':
          'Pay securely and conveniently with DHOOND\'s secured payment option',
      'image': ImagePath.slide3,
    },
    {
      'title': '24x7 Services Available',
      'image': ImagePath.slide4,
    },
  ];
  @override
  void initState() {
    super.initState();
    // Functions.requestAllPermission();
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: activePage > 0,
      child: SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Padding(
              padding: KPadding.horizontal16,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBoxHeight(
                    height: 70,
                  ),
                  Image.asset(
                    ImagePath.dhoond,
                    height: 45.h,
                    width: 212.w,
                  ),
                  const SizedBoxHeight(height: 18),
                  Text(
                    'Hello! Welcome To DHOOND',
                    style: KText.r20w5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Online. On Time. On Demand. For You ',
                        style: KText.r14Grey,
                      ),
                      SvgPicture.asset(
                        SvgPath.heart,
                        height: 15.w,
                        width: 15.w,
                      ),
                    ],
                  ),
                  CarouselSlider.builder(
                      itemCount: introData.length,
                      options: CarouselOptions(
                        height: 470.h,
                        viewportFraction: 1,
                        autoPlay: true,
                        enableInfiniteScroll: false,
                        enlargeFactor: 1,
                        padEnds: true,
                        onPageChanged: (index, reason) {
                          setState(() {
                            activePage = index;
                          });
                        },
                      ),
                      itemBuilder: (context, itemIndex, pageIndex) {
                        return Column(
                          children: [
                            Image.asset(
                              introData[itemIndex]['image'],
                              height: 430.h,
                              width: 359.w,
                            ),
                            Text(
                              introData[itemIndex]['title'],
                              style: KText.r12Grey,
                              textAlign: TextAlign.center,
                            ),
                          ],
                        );
                      }),
                  AnimatedSmoothIndicator(
                    activeIndex: activePage,
                    count: introData.length,
                    effect: WormEffect(
                        dotColor: CustomColors.grey.withOpacity(0.85),
                        dotWidth: 8,
                        dotHeight: 8,
                        activeDotColor: CustomColors.black.withOpacity(0.6)),
                  ),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.center,
                  //   children: List.generate(
                  //     introData.length,
                  //     (index) => Padding(
                  //       padding: const EdgeInsets.only(right: 6),
                  //       child: AnimatedDot(isActive: activePage == index),
                  //     ),
                  //   ),
                  // ),
                  const SizedBoxHeight(),
                  CustomizedButton(
                    onTap: () {
                      Get.to(
                        () => widget.isFromUser
                            ? const UserAuthScreen()
                            : const PartnerAuthScreen(),
                        transition: Transition.native,
                      );
                    },
                    fontStyle: KText.r20w5White,
                    borderRadius: 5,
                    backgroundColor: CustomColors.black,
                    text: 'Next',
                  ),
                  const SizedBoxHeight(),
                  Text(
                    'By continuing, you agree to our',
                    style: KText.r10Grey,
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(() => const UserPrivacyPolicyScreen());
                    },
                    child: Text(
                      'Terms & conditions | Privacy Policy',
                      style: KText.r10,
                    ),
                  ),
                  const SizedBoxHeight(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
