import 'package:flutter/material.dart';

import '../../../../components/arrow_left_appbar.dart';
import '../../../../utilities/core/kpadding.dart';
import '../../../../utilities/gap/gap.dart';
import '../../../../utilities/theme/ktext_theme.dart';

class ProfileViewHeader extends StatelessWidget {
  const ProfileViewHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const ArrowLeftAppbar(
          padding: KPadding.none,
        ),
        Gap.width(20),
        Text(
          'Your Profile\n Views',
          style: KText.r25ComfortaaW7,
        ),
        const Spacer(),
      ],
    );
  }
}
