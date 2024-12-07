import 'package:dhoond/components/shadow_container.dart';
import 'package:dhoond/utilities/core/kradius.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../utilities/assets_paths/assets_paths.dart';
import '../../../utilities/core/kpadding.dart';
import '../../../utilities/core/ksizedbox.dart';
import '../../../utilities/theme/ktext_theme.dart';
import 'components/user_notification_app_bar.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const SizedBoxHeight(
              height: 20,
            ),
            const NotificationAppBar(),
            const SizedBoxHeight(
              height: 25,
            ),
            Expanded(
                child: ListView.separated(
              padding: KPadding.symmetric(20, 10),
              itemBuilder: (context, index) {
                return ShadowContainer(
                    padding: KPadding.symmetric(15, 20),
                    borderRadius: kBorderRadius10,
                    child: Row(
                      children: [
                        Container(
                          height: 43.w,
                          width: 43.w,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: AssetImage(
                                    ImagePath.electricalMan,
                                  ),
                                  fit: BoxFit.cover)),
                        ),
                        const SizedBoxWidth(),
                        Expanded(
                            child: Text(
                          'Chandan Kumar has arrived at your home. Your carpenter is here! ',
                          style: KText.r12Comfortaa,
                        ))
                      ],
                    ));
              },
              separatorBuilder: (context, index) => const SizedBoxHeight(),
              itemCount: 3,
            ))
          ],
        ),
      ),
    );
  }
}
