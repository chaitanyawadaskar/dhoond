import 'package:dhoond/screens/users_screens/user_dashboard_screen/inner_screens/user_home_screen/components/search_text_feild.dart';
import 'package:dhoond/utilities/assets_paths/assets_paths.dart';
import 'package:dhoond/utilities/core/kpadding.dart';
import 'package:dhoond/utilities/core/ksizedbox.dart';
import 'package:dhoond/utilities/gap/gap.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../components/arrow_left_appbar.dart';
import '../../../../utilities/theme/ktext_theme.dart';
import 'components/searched_service_items.dart';

class BAYPSearchScreen extends StatefulWidget {
  const BAYPSearchScreen({
    super.key,
  });
  @override
  State<BAYPSearchScreen> createState() => _BAYPSearchScreenState();
}

class _BAYPSearchScreenState extends State<BAYPSearchScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            ArrowLeftAppbar(
              padding: KPadding.all(20),
            ),
            Padding(
              padding: KPadding.horizontal20,
              child: Column(
                children: [
                  const SizedBoxHeight(
                    height: 10,
                  ),
                  SearchTextFeild(
                    hintText: 'Electrical work',
                    hintStyle: KText.r13,
                  ),
                  const SizedBoxHeight(),
                  const SearchedServiceItems(),
                ],
              ),
            ),
            const Spacer(
              flex: 1,
            ),
            // Container(
            //   height: 80.h,
            //   child: Stack(
            //     alignment: Alignment.bottomCenter,
            //     children: [
            //       Positioned(
            //           top: 0,
            //           left: 0,
            //           child: SizedBox(
            //               width: 80.w,
            //               child: Text(
            //                 'Electrical Trades',
            //                 style: KText.r14Comfortaa,
            //               ))),
            //       Image.asset(
            //         ImagePath.dhoond,
            //         height: 36.h,
            //         width: 160.w,
            //       ),
            //     ],
            //   ),
            // ),
            Gap.height(50)
          ],
        ),
      ),
    );
  }
} 
