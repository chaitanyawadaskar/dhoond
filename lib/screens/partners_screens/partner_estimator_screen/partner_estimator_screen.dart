import 'package:customize_button/customize_button.dart';
import 'package:dhoond/components/arrow_left_appbar.dart';
import 'package:dhoond/components/shadow_container.dart';
import 'package:dhoond/utilities/constant/constant.dart';
import 'package:dhoond/utilities/core/kradius.dart';
import 'package:dhoond/utilities/custom_colors/custom_colors.dart';
import 'package:dhoond/utilities/theme/ktext_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:get/get.dart';

import '../../../utilities/assets_paths/assets_paths.dart';
import '../../../utilities/core/kpadding.dart';
import '../../../utilities/custom_textfeild/custom_textfeild.dart';
import '../../../utilities/gap/gap.dart';
import '../partner_dashboard_screen/inner_screens/partner_home_screen/components/job_selection_dropdown.dart';
import 'components/estimator_tab_bar.dart';
import 'section/cost_estimator.dart';
import 'section/work_estimator.dart';

class PartnerEstimatorScreen extends StatefulWidget {
  const PartnerEstimatorScreen({super.key});

  @override
  State<PartnerEstimatorScreen> createState() => _PartnerEstimatorScreenState();
}

class _PartnerEstimatorScreenState extends State<PartnerEstimatorScreen> {
  Estimator estimatorType = Estimator.work;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Column(
          children: [
            Gap.height(20),
            Padding(
              padding: KPadding.only(left: 10, right: 16),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ArrowLeftAppbar(
                    padding: KPadding.none,
                  ),
                  JobSelectionDropdown(
                    offset: Offset(0, 50),
                  ),
                ],
              ),
            ),
            Gap.height(20),
            EstimatorTabBar(
              estimatorType: estimatorType,
              onTap: (val) {
                setState(() {
                  estimatorType = val;
                });
              },
            ),
            Gap.height(20),
            if (estimatorType == Estimator.cost)
              CostEstimator()
            else
              WorkEstimator()
              
          ],
        ),
      ),
    );
  }
}
