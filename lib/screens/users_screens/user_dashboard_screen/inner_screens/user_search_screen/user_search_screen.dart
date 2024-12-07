import 'package:dhoond/data/extensions/extensions.dart';
import 'package:dhoond/data/functions/common_function.dart';
import 'package:dhoond/utilities/core/kpadding.dart';
import 'package:dhoond/utilities/core/ksizedbox.dart';
import 'package:dhoond/utilities/gap/gap.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:phone_state/phone_state.dart';
import 'package:sticky_headers/sticky_headers/widget.dart';
import '../../../components/service_user_detail_card.dart';
import '../../../user_location_confirmation_screen/user_location_confirmation_screen.dart';
import 'components/search_app_bar.dart';
import 'section/search_filter_sort.dart';

class UserSearchScreen extends StatefulWidget {
  const UserSearchScreen({super.key});

  @override
  State<UserSearchScreen> createState() => _UserSearchScreenState();
}

class _UserSearchScreenState extends State<UserSearchScreen> {
  @override
  void initState() {
    super.initState();
    // WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
    //   if (mounted) {
    //     checkPermission();
    //   }
    // });
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
    return SingleChildScrollView(
      child: Column(
        children: [
          Gap.height(),
          SearchAppBar(),
          Gap.height(),
          StickyHeader(
            header: SearchFilterSort(),
            content: Column(
              children: [
                ListView.separated(
                    shrinkWrap: true,
                    padding: KPadding.symmetric(16, 10),
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) =>
                        const ServiceUserDetailCard(),
                    separatorBuilder: (context, index) => const SizedBoxHeight(
                          height: 10,
                        ),
                    itemCount: 7)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
