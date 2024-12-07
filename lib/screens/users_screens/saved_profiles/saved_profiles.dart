import 'package:dhoond/components/arrow_left_appbar.dart';
import 'package:dhoond/data/functions/common_function.dart';
import 'package:dhoond/screens/users_screens/components/service_user_detail_card.dart';
import 'package:dhoond/screens/users_screens/user_dashboard_screen/inner_screens/user_home_screen/components/search_text_feild.dart';
import 'package:dhoond/screens/users_screens/user_dashboard_screen/inner_screens/user_search_screen/components/search_app_bar.dart';
import 'package:dhoond/screens/users_screens/user_dashboard_screen/inner_screens/user_search_screen/section/search_filter_sort.dart';
import 'package:dhoond/screens/users_screens/user_location_confirmation_screen/user_location_confirmation_screen.dart';
import 'package:dhoond/utilities/core/kpadding.dart';
import 'package:dhoond/utilities/core/ksizedbox.dart';
import 'package:dhoond/utilities/custom_colors/custom_colors.dart';
import 'package:dhoond/utilities/gap/gap.dart';
import 'package:dhoond/utilities/theme/ktext_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:get/get.dart';
import 'package:phone_state/phone_state.dart';

class SavedProfilesScreen extends StatefulWidget {
  const SavedProfilesScreen({super.key});

  @override
  State<SavedProfilesScreen> createState() => _SavedProfilesScreenState();
}

class _SavedProfilesScreenState extends State<SavedProfilesScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      if (mounted) {
        checkPermission();
      }
    });
  }

  void checkPermission() async {
    bool temp = await Functions.requestPhonePermission();
    if (temp) {
      setStream();
    }
  }

  void setStream() {
    PhoneState.stream.listen((event) {
      if (event.status == PhoneStateStatus.CALL_ENDED) {
        Get.to(
          () => const UserLocationConfirmationScreen(),
          transition: Transition.native,
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        child: Column(
          children: [
            Padding(
              padding: KPadding.horizontal20,
              child: Column(
                children: [
                  SizedBox(height: 20),
                  Row(
                    children: [
                      ArrowLeftAppbar(
                        padding: KPadding.none,
                      ),
                      Gap.width(20),
                      Text(
                        'Saved Profile ',
                        style: KText.r30ComfortaaW7,
                      ),
                      Icon(
                        AntDesign.hearto,
                        color: CustomColors.black,
                      ),
                    ],
                  ),
                  SizedBoxHeight(),
                  SearchTextFeild(
                    hintStyle: KText.r12Grey,
                    hintText: 'Search for “Electrician”',
                  ),
                  SizedBoxHeight(),
                ],
              ),
            ),
            Expanded(
              child: ListView.separated(
                  padding: KPadding.symmetric(10, 10),
                  physics: const AlwaysScrollableScrollPhysics(),
                  itemBuilder: (context, index) =>
                      const ServiceUserDetailCard(),
                  separatorBuilder: (context, index) => const SizedBoxHeight(
                        height: 10,
                      ),
                  itemCount: 7),
            )
          ],
        ),
      ),
    );
  }
}
