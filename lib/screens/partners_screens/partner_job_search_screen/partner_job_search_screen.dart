import 'package:dhoond/components/shadow_container.dart';
import 'package:dhoond/utilities/core/kboxshadow.dart';
import 'package:dhoond/utilities/core/kpadding.dart';
import 'package:dhoond/utilities/core/kradius.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../utilities/gap/gap.dart';
import '../partner_profile_view_screen/components/profile_view_header.dart';
import '../components/profile_viewer_card.dart';
import 'components/partner_job_search_app_bar.dart';

class PartnerJobSearchScreen extends StatefulWidget {
  const PartnerJobSearchScreen({super.key});

  @override
  State<PartnerJobSearchScreen> createState() => _PartnerJobSearchScreenState();
}

class _PartnerJobSearchScreenState extends State<PartnerJobSearchScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Gap.height(20),
            const PartnerJobSearchAppBar(),
            Gap.height(50),
            Expanded(
              child: ShadowContainer(
                boxShadow: KBoxShadow.faintGrey,
                borderRadius: kBorderRadius12,
                margin: KPadding.horizontal20,
                child: ListView.builder(
                    itemBuilder: (context, index) => const ProfileViewerCard(
                          showLookingFor: true,
                          margin: KPadding.none,
                        ),
                    itemCount: 10),
              ),
            ),
            Gap.height(20),
          ],
        ),
      ),
    );
  }
}
