import 'package:dhoond/utilities/core/ksizedbox.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../utilities/assets_paths/assets_paths.dart';
import '../../../../../utilities/core/kradius.dart';
import '../../../../../utilities/custom_colors/custom_colors.dart';
import '../partner_photos_videos_screen/components/partner_photos_videos_app_bar.dart';

class PartnerWorkImageScreen extends StatefulWidget {
  const PartnerWorkImageScreen({
    super.key,
  });
  @override
  State<PartnerWorkImageScreen> createState() => _PartnerWorkImageScreenState();
}

class _PartnerWorkImageScreenState extends State<PartnerWorkImageScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const SizedBoxHeight(
              height: 20,
            ),
            const PartnerPhotosVideoAppBar(
              title: 'Partners Work Image',
            ),
            Spacer(),
            Container(
              height: 250.h,
              width: 250.w,
              decoration: BoxDecoration(
                  color: CustomColors.grey2.withOpacity(0.2),
                  borderRadius: kBorderRadius4),
              alignment: Alignment.center,
              child: Image.asset(
                IconPath.placeholder,
                height: 25.h,
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
