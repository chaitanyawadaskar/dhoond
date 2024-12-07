import 'package:dhoond/data/extensions/extensions.dart';
import 'package:dhoond/screens/common_screens/notification_screen/notification_screen.dart';
import 'package:dhoond/screens/common_screens/under_developement_screen.dart';
import 'package:dhoond/screens/users_screens/book_at_your_price/bayp_service_info/bayp_service_info.dart';
import 'package:dhoond/screens/users_screens/user_select_location_screen/user_select_location_screen.dart';
import 'package:dhoond/utilities/core/kpadding.dart';
import 'package:dhoond/utilities/gap/gap.dart';
import 'package:dhoond/utilities/theme/ktext_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../../../utilities/assets_paths/assets_paths.dart';
import '../../../../../../utilities/constant/constant.dart';
import '../../../../../../utilities/custom_colors/custom_colors.dart';

class UserHomeAppBar extends StatefulWidget {
  const UserHomeAppBar({super.key});

  @override
  State<UserHomeAppBar> createState() => _UserHomeAppBarState();
}

class _UserHomeAppBarState extends State<UserHomeAppBar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: KPadding.only(top: 20, bottom: 10),
      child: Row(
        children: [
          InkWell(
            onTap: () {
              Get.to(() => const UserSelectLocationScreen());
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  ImagePath.dhoond,
                  height: 30.h,
                  width: 115.w,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.location_pin,
                      size: 20.w,
                      color: CustomColors.black,
                    ),
                    Gap.width(5),
                    Text(
                      'MIDC, Nagpur',
                      style: KText.r14w5,
                    ),
                    Gap.width(5),
                    Icon(
                      Icons.keyboard_arrow_down,
                      size: 25.w,
                      color: CustomColors.black,
                    )
                  ],
                ),
              ],
            ),
          ),
          const Spacer(),
          InkWell(
            onTap: () {
              Get.to(() => const UnderDevelopementScreen());
            },
            child: Container(
              margin: KPadding.horizontal5,
              child: Image.asset(
                ImagePath.b2b,
                height: 64.h,
                width: 64.h,
              ),
              // child: const BookAtYourPriceButton()
            ),
          ).mOnly(right: 4),
          InkWell(
              onTap: () {
                Get.to(
                  () => const NotificationScreen(),
                  transition: Transition.native,
                );
              },
              child: const Icon(
                Icons.notifications,
                color: CustomColors.black,
                size: 25,
              )).mOnly(right: 4),
          InkWell(
            onTap: () {
              userDrawerKey.currentState!.openDrawer();
            },
            child: Icon(
              Icons.menu_rounded,
              color: CustomColors.black,
              size: 30.w,
            ),
          ),
        ],
      ),
    );
  }
}
