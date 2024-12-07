import 'package:flutter/material.dart';

import '../../../../../../utilities/constant/constant.dart';
import '../../../../../../utilities/core/kpadding.dart';
import '../../../../../../utilities/core/kradius.dart';
import '../../../../../../utilities/theme/ktext_theme.dart';

class EstimatorTabBar extends StatelessWidget {
  const EstimatorTabBar({
    super.key,
    required this.estimatorType,
    required this.onTap,
  });

  final Estimator estimatorType;
  final Function(Estimator) onTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: KPadding.horizontal15,
      decoration: const BoxDecoration(border: kBorderBGrey),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          InkWell(
            onTap: () {
              onTap(Estimator.work);
            },
            child: Container(
                padding: KPadding.horizontal20,
                decoration: BoxDecoration(
                    border: estimatorType == Estimator.work
                        ? kBorderBW3
                        : kBorderBW3Transparent),
                child: Text(
                  'Work Estimator',
                  style: estimatorType == Estimator.work
                      ? KText.r20Bold
                      : KText.r20w5Grey,
                )),
          ),
          InkWell(
            onTap: () {
              onTap(Estimator.cost);
            },
            child: Container(
                padding: KPadding.horizontal20,
                decoration: BoxDecoration(
                    border: estimatorType == Estimator.cost
                        ? kBorderBW3
                        : kBorderBW3Transparent),
                child: Text(
                  'Cost Estimator',
                  style: estimatorType == Estimator.cost
                      ? KText.r20Bold
                      : KText.r20w5Grey,
                )),
          ),
        ],
      ),
    );
  }
}
