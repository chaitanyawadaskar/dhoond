import 'package:customize_button/customize_button.dart';
import 'package:dhoond/data/extensions/extensions.dart';
import 'package:dhoond/screens/users_screens/book_at_your_price/bayp_search_sceen/bayp_search_sceen.dart';
import 'package:dhoond/utilities/assets_paths/assets_paths.dart';
import 'package:dhoond/utilities/core/ksizedbox.dart';
import 'package:dhoond/utilities/gap/gap.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:get/get.dart';
import 'package:showcaseview/showcaseview.dart';
import '../../../../../../components/triangle_painter.dart';
import '../../../../../../utilities/core/kpadding.dart';
import '../../../../../../utilities/core/kradius.dart';
import '../../../../../../utilities/custom_colors/custom_colors.dart';
import '../../../../../../utilities/theme/ktext_theme.dart';
import '../../../../book_at_your_price/book_at_your_price_screen/book_at_your_price_screen.dart';
import '../../../../user_home_search_screen/user_home_search_screen.dart';
import '../components/search_text_feild.dart';
import '../components/user_home_app_bar.dart';

class UserHomeHeader extends StatefulWidget {
  const UserHomeHeader({
    super.key,
    required this.showCaseKey,
  });
  final GlobalKey<State<StatefulWidget>> showCaseKey;

  @override
  State<UserHomeHeader> createState() => _UserHomeHeaderState();
}

class _UserHomeHeaderState extends State<UserHomeHeader> {
  bool status = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: CustomColors.transparent,
      padding: KPadding.horizontal16,
      child: const Column(
        children: [
          UserHomeAppBar(),
        ],
      ),
    );
  }
}
