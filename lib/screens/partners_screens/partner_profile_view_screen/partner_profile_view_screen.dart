import 'package:dhoond/screens/partners_screens/components/profile_viewer_card.dart';
import 'package:dhoond/utilities/gap/gap.dart';
import 'package:flutter/material.dart';

import 'components/partner_profile_view_card.dart';
import 'components/profile_view_header.dart';

class PartnerProfileViewScreen extends StatefulWidget {
  const PartnerProfileViewScreen({super.key});

  @override
  State<PartnerProfileViewScreen> createState() =>
      _PartnerProfileViewScreenState();
}

class _PartnerProfileViewScreenState extends State<PartnerProfileViewScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Gap.height(20),
            const ProfileViewHeader(),
            Gap.height(50),
            const PartnerProfileViewCard(),
            Gap.height(20),
            Expanded(
                child: ListView.builder(
                    itemBuilder: (context, index) => const ProfileViewerCard(),
                    itemCount: 10))
          ],
        ),
      ),
    );
  }
}
