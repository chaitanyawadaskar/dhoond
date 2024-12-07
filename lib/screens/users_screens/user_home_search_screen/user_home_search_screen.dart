import 'package:dhoond/screens/users_screens/user_dashboard_screen/inner_screens/user_home_screen/components/search_text_feild.dart';
import 'package:dhoond/utilities/gap/gap.dart';
import 'package:flutter/material.dart';

import '../../../../../components/arrow_left_appbar.dart';
import '../../../utilities/theme/ktext_theme.dart';
import 'components/searched_service_items.dart';

class UserHomeSearchScreen extends StatefulWidget {
  const UserHomeSearchScreen({super.key});

  @override
  State<UserHomeSearchScreen> createState() => _UserHomeSearchScreenState();
}

class _UserHomeSearchScreenState extends State<UserHomeSearchScreen> {
  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            ArrowLeftAppbar(
              suffix: Expanded(
                child: SearchTextFeild(
                  hintStyle: KText.r12Grey,
                  hintText: 'Search for “Electrician”',
                ),
              ),
            ),
            Gap.height(25),
            const SearchedServiceItems(),
          ],
        ),
      ),
    );
  }
}
