import 'package:dhoond/screens/partners_screens/partner_dashboard_screen/inner_screens/partner_analysis_screen/components/analysis_app_bar.dart';
import 'package:dhoond/screens/partners_screens/partner_dashboard_screen/inner_screens/partner_analysis_screen/sections/earnings_chart_section.dart';
import 'package:dhoond/screens/partners_screens/partner_dashboard_screen/inner_screens/partner_analysis_screen/sections/insights_list.dart';
import 'package:dhoond/utilities/gap/gap.dart';
import 'package:flutter/material.dart';
import 'sections/analysis_header.dart';
import 'sections/analysis_options.dart';
import 'sections/completed_work_chart_section.dart';
import 'sections/market_insights.dart';
import 'sections/searches_chart_section.dart';

class PartnerAnalysisScreen extends StatefulWidget {
  const PartnerAnalysisScreen({super.key});

  @override
  State<PartnerAnalysisScreen> createState() => _PartnerAnalysisScreenState();
}

class _PartnerAnalysisScreenState extends State<PartnerAnalysisScreen> {
  int optionIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const AnalysisAppBar(),
          Gap.height(5),
          const AnalysisHeader(),
          AnalysisOption(
            onChangeOption: (index) {
              setState(() {
                optionIndex = index;
              });
            },
          ),
          optionIndex == 0
              ? const SearchesChartSection()
              : optionIndex == 1
                  ? const CompletedWorkChartSection()
                  : const EarningsChartSection(),
          Gap.height(),
          const MarketInsights(),
          const InsightsList(),
        ],
      ),
    );
  }
}
