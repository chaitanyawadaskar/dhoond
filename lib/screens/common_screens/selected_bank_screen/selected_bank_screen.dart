import 'package:dhoond/components/arrow_left_appbar.dart';
import 'package:dhoond/components/shadow_container.dart';
import 'package:dhoond/utilities/assets_paths/assets_paths.dart';
import 'package:dhoond/utilities/core/kpadding.dart';
import 'package:dhoond/utilities/core/kradius.dart';
import 'package:dhoond/utilities/gap/gap.dart';
import 'package:dhoond/utilities/theme/ktext_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../add_bank_account_screen/add_bank_account_screen.dart';

class SelectedBankScreen extends StatefulWidget {
  const SelectedBankScreen({super.key});

  @override
  State<SelectedBankScreen> createState() => _SelectedBankScreenState();
}

class _SelectedBankScreenState extends State<SelectedBankScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: KPadding.horizontal15,
          child: Column(
            children: [
              Gap.height(20),
              Row(
                children: [
                  const ArrowLeftAppbar(
                    padding: KPadding.none,
                  ),
                  Gap.width(),
                  Text(
                    'Bank Account',
                    style: KText.r30Comfortaa,
                  )
                ],
              ),
              Gap.height(35),
              ShadowContainer(
                  padding: KPadding.all10,
                  borderRadius: kBorderRadius10,
                  onTap: () {
                    Get.to(
                      () => const AddBankAccountScreen(),
                      transition: Transition.native,
                    );
                  },
                  child: Row(
                    children: [
                      Image.asset(
                        ImagePath.cbi,
                      ),
                      Gap.width(10),
                      Text(
                        'Central Bank of India',
                        style: KText.r14,
                      ),
                      const Spacer(),
                      Icon(
                        Icons.chevron_right,
                        size: 25.h,
                      )
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
