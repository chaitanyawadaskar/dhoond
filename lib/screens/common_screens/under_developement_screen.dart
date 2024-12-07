import 'package:dhoond/components/arrow_left_appbar.dart';
import 'package:dhoond/utilities/custom_colors/custom_colors.dart';
import 'package:dhoond/utilities/gap/gap.dart';
import 'package:dhoond/utilities/theme/ktext_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class UnderDevelopementScreen extends StatelessWidget {
  const UnderDevelopementScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const ArrowLeftAppbar(),
        body: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                Entypo.emoji_sad,
                size: 45.h,
                color: CustomColors.grey,
              ),
              Gap.height(),
              Text(
                'Under Development',
                style: KText.r20w5Grey,
              ),
              Text(
                'This feature is not available yet,\nWe\'ll notify you once it\'s ready.',
                style: KText.r12GreyW5,
              )
            ],
          ),
        ),
      ),
    );
  }
}
