import 'package:dhoond/utilities/assets_paths/assets_paths.dart';
import 'package:dhoond/utilities/core/kpadding.dart';
import 'package:dhoond/utilities/custom_colors/custom_colors.dart';
import 'package:dhoond/utilities/theme/ktext_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../utilities/gap/gap.dart';
import '../partner_dashboard_screen/inner_screens/partner_search_screen/components/partner_search_item_card.dart';
import 'components/trending_assured_card.dart';
import 'components/trending_job_app_bar.dart';

class PartnerTrendingJobsScreen extends StatefulWidget {
  const PartnerTrendingJobsScreen({super.key});

  @override
  State<PartnerTrendingJobsScreen> createState() =>
      _PartnerTrendingJobsScreenState();
}

class _PartnerTrendingJobsScreenState extends State<PartnerTrendingJobsScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Gap.height(20),
            const TrendingJobAppBar(),
            Gap.height(25),
            Expanded(
                child: Padding(
              padding: KPadding.horizontal10,
              child: ListView.separated(
                  padding: KPadding.all5,
                  itemBuilder: (context, index) => const ParterSearchItemCard(),
                  separatorBuilder: (context, index) => Gap.height(),
                  itemCount: 10),
            )),
            Gap.height(),
            Padding(
              padding: KPadding.horizontal15,
              child: Row(
                children: [
                  Image.asset(
                    ImagePath.dhoond,
                    height: 30.h,
                  ),
                  Text(
                    'Assured',
                    style: KText.r20Comfortaa,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 220.h,
              child: ListView.separated(
                  padding: KPadding.all15,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => const TrendingAssuredCard(),
                  separatorBuilder: (context, index) => Gap.width(),
                  itemCount: 10),
            ),
          ],
        ),
      ),
    );
  }
}
