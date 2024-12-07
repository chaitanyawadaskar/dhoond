import 'package:dhoond/utilities/custom_colors/custom_colors.dart';
import 'package:dhoond/utilities/gap/gap.dart';
import 'package:dhoond/utilities/theme/ktext_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

import '../../../../components/arrow_left_appbar.dart';
import '../../../../utilities/core/kpadding.dart';

class SupportChartAppBar extends StatelessWidget {
  const SupportChartAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const ArrowLeftAppbar(
          padding: KPadding.none,
        ),
        PopupMenuButton<int>(
          iconSize: 35.h,
          shape: const RoundedRectangleBorder(side: BorderSide()),
          itemBuilder: (context) => [
            // popupmenu item 1
            PopupMenuItem(
              value: 1,
              // row has two child icon and text.
              child: Row(
                children: [
                  Icon(
                    Fontisto.checkbox_active,
                    size: 18.h,
                  ),
                  Gap.width(),
                  Text(
                    "Select",
                    style: KText.r14Comfortaa,
                  )
                ],
              ),
            ),
            // popupmenu item 2
            PopupMenuItem(
              value: 2,
              // row has two child icon and text
              child: Row(
                children: [
                  Icon(
                    Icons.cleaning_services,
                    size: 20.h,
                  ),
                  Gap.width(),
                  Text(
                    "Clear chat",
                    style: KText.r14Comfortaa,
                  )
                ],
              ),
            ),
            PopupMenuItem(
              value: 2,
              // row has two child icon and text
              child: Row(
                children: [
                  Icon(
                    Icons.delete,
                    size: 20.h,
                  ),
                  Gap.width(),
                  Text(
                    "Delete",
                    style: KText.r14Comfortaa,
                  )
                ],
              ),
            ),
          ],
          offset: const Offset(0, 50),
          color: CustomColors.white,
          elevation: 0,
        ),
      ],
    );
  }
}
