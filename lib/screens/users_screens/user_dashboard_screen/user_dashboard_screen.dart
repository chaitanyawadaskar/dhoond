import 'package:dhoond/screens/users_screens/user_dashboard_screen/inner_screens/user_categories_screen/user_categories_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:get/get.dart';
import 'package:showcaseview/showcaseview.dart';
import '../../../utilities/core/kpadding.dart';
import '../../../utilities/core/kradius.dart';
import '../../../utilities/custom_colors/custom_colors.dart';
import '../../../utilities/gap/gap.dart';
import '../../../utilities/theme/ktext_theme.dart';
import '../components/custom_user_bottom_bar.dart';
import '../components/custom_user_drawer.dart';
import '../../../components/dragrable_floating_button.dart';
import '../../../utilities/constant/constant.dart';
import 'inner_screens/user_bookings_screen/user_bookings_screen.dart';
import 'inner_screens/user_home_screen/user_home_screen.dart';
import 'inner_screens/user_search_screen/user_search_screen.dart';
import '../../common_screens/video_screen/video_screen.dart';
import 'inner_screens/user_wallet_screen/user_wallet_screen.dart';

class UserDashboardScreen extends StatefulWidget {
  const UserDashboardScreen({super.key, this.currentIndex = 0});
  final int currentIndex;

  @override
  State<UserDashboardScreen> createState() => _UserDashboardScreenState();
}

class _UserDashboardScreenState extends State<UserDashboardScreen> {
  int currentIndex = 0;
  var innerScreen = [
    const UserHomeScreen(),
    const UserSearchScreen(),
    const UserCategoriesScreen(),
    const UserBookingScreen(),
    const UserWalletScreen(),
  ];
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      if (mounted) {
        setState(() {
          currentIndex = widget.currentIndex;
        });
      }
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvoked: (didPop) {
        if (!didPop) {
          setState(() {});
          currentIndex = 0;
        }
      },
      child: ShowCaseWidget(
        onStart: (index, key) {},
        onComplete: (index, key) {
          // SystemChrome.setSystemUIOverlayStyle(
          //   SystemUiOverlayStyle.light.copyWith(
          //     statusBarIconBrightness: Brightness.dark,
          //     statusBarColor: Colors.white,
          //   ),
          // );
        },
        blurValue: 1,
        autoPlayDelay: const Duration(seconds: 3),
        builder: (context) => SafeArea(
          child: Scaffold(
              key: userDrawerKey,
              drawer: const CustomUserDrawer(),
              drawerEnableOpenDragGesture: false,
              bottomNavigationBar: CustomUserBottomBar(
                index: currentIndex,
                onTap: (index) {
                  setState(() {
                    currentIndex = index;
                  });
                },
              ),
              body: DraggableFloatingButton(
                disableBot: currentIndex == 2,
                child: innerScreen[currentIndex],
              )),
        ),
      ),
    );
  }
}
