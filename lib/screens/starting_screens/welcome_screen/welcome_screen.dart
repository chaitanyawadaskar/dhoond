import 'package:dhoond/screens/starting_screens/intro_screen/intro_screen.dart';
import 'package:dhoond/utilities/core/kpadding.dart';
import 'package:dhoond/utilities/core/ksizedbox.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../components/arrow_left_appbar.dart';
import '../../../utilities/assets_paths/assets_paths.dart';
import '../../../utilities/custom_colors/custom_colors.dart';
import '../../../utilities/theme/ktext_theme.dart';
import '../../inventory_screens/add_inventory_screen/add_inventory_screen.dart';
import 'components/dhoond_login_type.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({
    super.key,
  });

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  String select = '';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const ArrowLeftAppbar(),
        resizeToAvoidBottomInset: false,
        body: Padding(
          padding: KPadding.horizontal25,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Spacer(
                flex: 2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const SizedBoxWidth(),
                  DhoondLoginType(
                    title: 'PARTNER',
                    isSelected: select == 'partner',
                    onTap: () {
                      setState(() {
                        select = 'partner';
                      });
                      Future.delayed(const Duration(milliseconds: 500), () {
                        Get.to(
                          () => const IntroScreen(),
                          transition: Transition.native,
                        );
                      });
                    },
                  ),
                  DhoondLoginType(
                    title: 'USER',
                    isSelected: select == 'user',
                    onTap: () {
                      setState(() {
                        select = 'user';
                      });
                      Future.delayed(const Duration(milliseconds: 500), () {
                        Get.to(
                          () => const IntroScreen(
                            isFromUser: true,
                          ),
                          transition: Transition.native,
                        );
                      });
                    },
                  ),
                  const SizedBoxWidth(),
                ],
              ),
              TextButton(
                onPressed: () {
                  Get.to(() => const AddInventoryScreen());
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'JOIN INVENTORY',
                      style: KText.r14UnderlineW5,
                    ),
                    const SizedBoxWidth(
                      width: 5,
                    ),
                    Image.asset(
                      ImagePath.inventory,
                      height: 20.h,
                      width: 20.w,
                    ),
                    Icon(
                      Icons.chevron_right,
                      size: 22.w,
                      color: CustomColors.black,
                    )
                  ],
                ),
              ),
              const Spacer(
                flex: 2,
              ),
              // Image.asset(
              //   ImagePath.dhoond,
              //   height: 36.h,
              //   width: 160.w,
              // ),
              // const Spacer(
              //   flex: 1,
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
