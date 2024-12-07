import 'package:dhoond/utilities/assets_paths/assets_paths.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../../../utilities/constant/constant.dart';
import '../../../../../../utilities/gap/gap.dart';
import '../../../../../../utilities/theme/ktext_theme.dart';
import '../../../../../common_screens/qr_code_scanner.dart';

class WalletAppBar extends StatelessWidget {
  const WalletAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Gap.width(50),
        Text(
          'My Wallet',
          style: KText.r24ComfortaaW7,
        ),
        IconButton(
          onPressed: () {
            Get.to(() => const QRCodeScanner());
          },
          visualDensity: const VisualDensity(horizontal: -4, vertical: -4),
          icon: Image.asset(
            ImagePath.scanQr,
            height: 30.h,
          ),
        )
      ],
    );
  }
}
