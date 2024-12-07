import 'package:dhoond/utilities/assets_paths/assets_paths.dart';
import 'package:dhoond/utilities/core/ksizedbox.dart';
import 'package:dhoond/utilities/custom_colors/custom_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../components/arrow_left_appbar.dart';
import '../../../../../../utilities/core/kpadding.dart';
import '../../../../../../utilities/theme/ktext_theme.dart';

class PartnerPhotosVideoAppBar extends StatelessWidget {
  const PartnerPhotosVideoAppBar({
    super.key,
    required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ArrowLeftAppbar(
          padding: KPadding.horizontal15,
        ),
      ],
    );
  }
}
