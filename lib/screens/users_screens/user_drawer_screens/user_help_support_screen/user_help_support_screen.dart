import 'package:customize_button/customize_button.dart';
import 'package:dhoond/components/dragrable_floating_button.dart';
import 'package:dhoond/utilities/assets_paths/assets_paths.dart';
import 'package:dhoond/utilities/core/ksizedbox.dart';
import 'package:dhoond/utilities/custom_colors/custom_colors.dart';
import 'package:dhoond/utilities/theme/ktext_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../components/arrow_left_appbar.dart';
import '../../../../utilities/core/kpadding.dart';

class UserHelpSupportScreen extends StatefulWidget {
  const UserHelpSupportScreen({super.key});

  @override
  State<UserHelpSupportScreen> createState() => _UserHelpSupportScreenState();
}

class _UserHelpSupportScreenState extends State<UserHelpSupportScreen> {
  bool isCheck = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const ArrowLeftAppbar(),
        body: DraggableFloatingButton(
          child: Padding(
            padding: KPadding.horizontal(46),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBoxHeight(
                  height: 37,
                ),
                // Image.asset(
                //   ImagePath.dhoond,
                //   height: 37.h,
                // ),
                const SizedBoxHeight(
                  height: 37,
                ),
                Text(
                  'Help & Support',
                  style: KText.r30Comfortaa,
                ),
                const SizedBoxHeight(
                  height: 10,
                ),
                Text(
                  'Hello ! what can we help you with ?',
                  style: KText.r20Comfortaa,
                ),
                const SizedBoxHeight(
                  height: 27,
                ),
                Image.asset(
                  ImagePath.helpSupport,
                ),
                const SizedBoxHeight(
                  height: 27,
                ),
                Center(
                  child: Text(
                    'Which one are you ?',
                    style: KText.r24Comfortaa,
                  ),
                ),
                const SizedBoxHeight(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomizedButton(
                      onTap: () {},
                      fontStyle: KText.r14BoldWhite,
                      pad: KPadding.symmetric(35, 5),
                      borderRadius: 5,
                      backgroundColor: CustomColors.black,
                      text: 'User',
                    ),
                    const SizedBoxWidth(
                      width: 20,
                    ),
                    CustomizedButton(
                      onTap: () {},
                      fontStyle: KText.r14BoldWhite,
                      pad: KPadding.symmetric(30, 5),
                      borderRadius: 5,
                      backgroundColor: CustomColors.black,
                      text: 'Partner',
                    ),
                  ],
                ),
                const SizedBoxHeight(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Prefer not to choose',
                      style: KText.r14,
                    ),
                    Icon(
                      Icons.chevron_right,
                      size: 25.h,
                      color: CustomColors.black,
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
