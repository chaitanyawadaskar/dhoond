import 'package:dhoond/screens/partners_screens/partner_dashboard_screen/partner_dashboard_screen.dart';
import 'package:dhoond/screens/users_screens/user_dashboard_screen/user_dashboard_screen.dart';
import 'package:dhoond/utilities/loader/custom_loader/custom_loader.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../utilities/assets_paths/assets_paths.dart';

class DhoondhLoadingScreen extends StatefulWidget {
  const DhoondhLoadingScreen({super.key, this.isUser = true});
  final bool isUser;
  @override
  State<DhoondhLoadingScreen> createState() => _DhoondhLoadingScreenState();
}

class _DhoondhLoadingScreenState extends State<DhoondhLoadingScreen> {
  double? top;
  double? left;
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 1), () {
      setState(() {
        top = 270.h;
        left = -10;
      });
    });
    Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        top = 300.h;
        left = 20;
      });
    });
    Future.delayed(const Duration(seconds: 3), () {
      setState(() {
        top = 340.h;
        left = 30;
      });
    });
    Future.delayed(const Duration(seconds: 4), () {
      setState(() {
        top = 360.h;
        left = -40;
      });
    });
    Future.delayed(const Duration(seconds: 5), () {
      setState(() {
        top = 300.h;
        left = -60;
      });
    });
    Future.delayed(const Duration(milliseconds: 5500), () {
      CustomLoader.openCustomLoader();
    });
    Future.delayed(const Duration(seconds: 7), () {
      CustomLoader.closeCustomLoader();
      Get.to(
        () => widget.isUser
            ? const UserDashboardScreen()
            : const PartnerDashboardScreen(),
        transition: Transition.native,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: Get.width,
          child: Stack(
            alignment: Alignment.center,
            children: [
              AnimatedPositioned(
                  top: top ?? 300.h,
                  left: left ?? -60,
                  duration: const Duration(seconds: 2),
                  child: Image.asset(
                    ImagePath.searchHand,
                    height: 260.h,
                  )),
              Center(
                child: Image.asset(
                  ImagePath.dhoondSlogan,
                  height: 68.h,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
