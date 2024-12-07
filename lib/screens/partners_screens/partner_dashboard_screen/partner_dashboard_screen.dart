import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import '../../../components/dragrable_floating_button.dart';
import '../../../utilities/constant/constant.dart';
import '../../common_screens/video_screen/video_screen.dart';
import '../components/custom_partner_bottom_bar.dart';
import '../components/custom_partner_drawer.dart';
import 'inner_screens/partner_analysis_screen/partner_analysis_screen.dart';
import 'inner_screens/partner_booking_screen/partner_booking_screen.dart';
import 'inner_screens/partner_home_screen/partner_home_screen.dart';
import 'inner_screens/partner_search_screen/partner_search_screen.dart';
import 'inner_screens/partner_wallet_screen/partner_wallet_screen.dart';

class PartnerDashboardScreen extends StatefulWidget {
  const PartnerDashboardScreen({super.key, this.currentIndex = 0});
  final int currentIndex;
  @override
  State<PartnerDashboardScreen> createState() => _PartnerDashboardScreenState();
}

class _PartnerDashboardScreenState extends State<PartnerDashboardScreen> {
  int currentIndex = 0;
  var innerScreen = [
    const PartnerHomeScreen(),
    // const PartnerSearchScreen(),
    const PartnerAnalysisScreen(),
    const PartnerBookingScreen(),
    const VideoScreen(
      url: 'https://www.youtube.com/@Dhoond',
    ),
    const PartnerWalletScreen(),
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
      child: SafeArea(
        child: Scaffold(
            key: partnerDrawerKey,
            drawer: const CustomPartnerDrawer(),
            drawerEnableOpenDragGesture: false,
            bottomNavigationBar: CustomPartnerBottomBar(
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
    );
  }
}
