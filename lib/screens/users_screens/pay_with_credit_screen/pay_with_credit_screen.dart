import 'package:dhoond/components/arrow_left_appbar.dart';
import 'package:dhoond/screens/common_screens/video_screen/video_screen.dart';
import 'package:dhoond/utilities/assets_paths/assets_paths.dart';
import 'package:dhoond/utilities/core/kpadding.dart';
import 'package:dhoond/utilities/gap/gap.dart';
import 'package:dhoond/utilities/theme/ktext_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:webview_flutter/webview_flutter.dart';

class PayWithCreditScreen extends StatelessWidget {
  const PayWithCreditScreen({super.key, required this.url});
  final String url;
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const ArrowLeftAppbar(
                    padding: KPadding.none,
                  ),
                  Gap.width(20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        ImagePath.dhoondSlogan,
                        height: 50.h,
                      ),
                      Gap.height(),
                      Text(
                        'Pay With Credit',
                        style: KText.r30Comfortaa,
                      ),
                    ],
                  ),
                ],
              ),
              Gap.height(35),
              Expanded(child: VideoScreen(url: url))
            ],
          ),
        ),
      ),
    );
  }
}
