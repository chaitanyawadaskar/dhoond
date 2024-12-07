import 'package:dhoond/components/shadow_container.dart';
import 'package:dhoond/utilities/core/kpadding.dart';
import 'package:flutter/material.dart';

import '../../../components/arrow_left_appbar.dart';
import '../../../components/radio_button.dart';
import '../../../utilities/core/kradius.dart';
import '../../../utilities/gap/gap.dart';
import '../../../utilities/theme/ktext_theme.dart';
import '../../users_screens/user_dashboard_screen/inner_screens/user_home_screen/components/search_text_feild.dart';

class PartnerSelectAddressScreen extends StatefulWidget {
  const PartnerSelectAddressScreen({super.key});

  @override
  State<PartnerSelectAddressScreen> createState() =>
      _PartnerSelectAddressScreenState();
}

class _PartnerSelectAddressScreenState
    extends State<PartnerSelectAddressScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const ArrowLeftAppbar(),
      body: Container(
        padding: KPadding.horizontal15,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                'Where do you live?',
                style: KText.r30ComfortaaW7,
              ),
            ),
            Gap.height(),
            SearchTextFeild(
              showMike: false,
              hintStyle: KText.r14Grey,
              showRightSearchIcon: false,
              disableShadow: true,
              border: kBorderAll,
              borderRadius: kBorderRadius25,
            ),
            Gap.height(),
            ShadowContainer(
              disableShadow: true,
              border: kBorderFaintGrey,
              padding: KPadding.only(bottom: 10, top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Nagpur',
                    style: KText.r16,
                  ),
                  InkWell(
                      onTap: () {},
                      child: const RadioButton(
                        selected: true,
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
