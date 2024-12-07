import 'package:dhoond/components/arrow_left_appbar.dart';
import 'package:dhoond/utilities/core/kpadding.dart';
import 'package:dhoond/utilities/gap/gap.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utilities/assets_paths/assets_paths.dart';
import '../../../utilities/core/kradius.dart';
import '../../../utilities/custom_colors/custom_colors.dart';
import '../../../utilities/theme/ktext_theme.dart';

class PartnerQRScreen extends StatefulWidget {
  const PartnerQRScreen({super.key});

  @override
  State<PartnerQRScreen> createState() => _PartnerQRScreenState();
}

class _PartnerQRScreenState extends State<PartnerQRScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const ArrowLeftAppbar(),
        body: Padding(
          padding: KPadding.horizontal15,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Gap.height(85),
              Container(
                padding: KPadding.symmetric(5, 2),
                decoration: BoxDecoration(
                    border: kBorderAll, borderRadius: kBorderRadius30),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(
                      ImagePath.dhoond,
                      height: 12.h,
                    ),
                    Text(
                      'Assured',
                      style: KText.r12,
                    ),
                    Image.asset(
                      ImagePath.diamond,
                      height: 15.h,
                    )
                  ],
                ),
              ),
              Gap.height(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Chandan Kumar',
                    style: KText.r36Comfortaa,
                  ),
                ],
              ),
              SizedBox(
                width: 265.w,
                child: Text.rich(
                    textAlign: TextAlign.center,
                    TextSpan(
                      children: [
                        TextSpan(
                            text:
                                'You can payment here without any hesitation with ',
                            style: KText.r12),
                        TextSpan(text: 'DHOONDH PLUS+ ', style: KText.r12Bold),
                        TextSpan(text: 'security system.', style: KText.r12)
                      ],
                    )),
              ),
              Gap.height(50),
              Image.asset(
                ImagePath.qr,
                height: 200.h,
              ),
              Gap.height(),
              Text(
                '@9881102536ybl',
                style: KText.r14,
              ),
              const Spacer(),
              Image.asset(
                ImagePath.dhoond,
                height: 36.h,
              ),
              Gap.height(50),
            ],
          ),
        ),
      ),
    );
  }
}
