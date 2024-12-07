import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../utilities/core/kpadding.dart';
import '../../../../utilities/core/kradius.dart';
import '../../../../utilities/core/ksizedbox.dart';
import '../../../../utilities/theme/ktext_theme.dart';

class Behavior extends StatelessWidget {
  const Behavior({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: SizedBox(
            height: 20.h,
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Container(
                      padding: KPadding.all(2),
                      decoration: BoxDecoration(
                          border: kBorderAll, borderRadius: kBorderRadius25),
                      child: Text(
                        'Excellent behavior',
                        style: KText.r10,
                      ),
                    ),
                separatorBuilder: (context, index) => const SizedBoxWidth(
                      width: 5,
                    ),
                itemCount: 6),
          ),
        ),
      ],
    );
  }
}
