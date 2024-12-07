import 'package:dhoond/utilities/core/kradius.dart';
import 'package:dhoond/utilities/gap/gap.dart';
import 'package:dhoond/utilities/theme/ktext_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../../../../../utilities/core/kpadding.dart';
import '../../../../users_screens/user_dashboard_screen/inner_screens/user_home_screen/components/search_text_feild.dart';
import 'components/partner_search_app_bar.dart';
import 'components/partner_search_item_card.dart';
import 'section/partner_search_tabs.dart';

class PartnerSearchScreen extends StatefulWidget {
  const PartnerSearchScreen({super.key});

  @override
  State<PartnerSearchScreen> createState() => _PartnerSearchScreenState();
}

class _PartnerSearchScreenState extends State<PartnerSearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: KPadding.horizontal15,
      child: Column(
        children: [
          Gap.height(),
          const PartnerSearchAppBar(),
          Gap.height(25),
          const PartnerSearchTabs(),
          Gap.height(25),
          SearchTextFeild(
            showMike: false,
            hintStyle: KText.r14Grey,
            showRightSearchIcon: true,
            borderRadius: kBorderRadius15,
          ),
          Gap.height(),
          Expanded(
              child: ListView.separated(
                  padding: KPadding.all5,
                  itemBuilder: (context, index) => const ParterSearchItemCard(),
                  separatorBuilder: (context, index) => Gap.height(),
                  itemCount: 10)),
          Gap.height(),
        ],
      ),
    );
  }
}
