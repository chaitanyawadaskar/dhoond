import 'package:dhoond/data/extensions/extensions.dart';
import 'package:dhoond/utilities/core/kpadding.dart';
import 'package:dhoond/utilities/core/ksizedbox.dart';
import 'package:dhoond/utilities/custom_colors/custom_colors.dart';
import 'package:dhoond/utilities/gap/gap.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sticky_headers/sticky_headers.dart';
import '../../../components/arrow_left_appbar.dart';
import '../../../utilities/theme/ktext_theme.dart';
import '../components/service_user_detail_card.dart';
import '../user_dashboard_screen/inner_screens/user_search_screen/section/search_filter_sort.dart';

class UserServicePartnerScreen extends StatefulWidget {
  const UserServicePartnerScreen({super.key, required this.title});
  final String title;

  @override
  State<UserServicePartnerScreen> createState() =>
      _UserServicePartnerScreenState();
}

class _UserServicePartnerScreenState extends State<UserServicePartnerScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // appBar: ArrowLeftAppbar(
        //   size: 80,
        //   padding: KPadding.only(
        //     top: 10,
        //     left: 5,
        //   ),
        //   suffixAsLeading: true,
        //   suffix: Column(
        //     crossAxisAlignment: CrossAxisAlignment.end,
        //     children: [
        //       Text(
        //         widget.title,
        //         style: KText.r30ComfortaaW7,
        //       ),
        //       Row(
        //         mainAxisSize: MainAxisSize.min,
        //         children: [
        //           Text(
        //             'Near me',
        //             style: KText.r18ComfortaaW5,
        //           ),
        //           const Icon(
        //             Icons.location_pin,
        //             size: 16,
        //           )
        //         ],
        //       )
        //     ],
        //   ).mOnly(left: 50),
        // ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              // const SizedBoxHeight(
              //   height: 20,
              // ),
              ArrowLeftAppbar(
                size: 80,
                padding: KPadding.only(
                  top: 10,
                  left: 5,
                ),
                suffixAsLeading: true,
                suffix: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      widget.title,
                      style: KText.r30ComfortaaW7,
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Near me',
                          style: KText.r18ComfortaaW5,
                        ),
                        const Icon(
                          Icons.location_pin,
                          size: 16,
                        )
                      ],
                    )
                  ],
                ).mOnly(left: 50),
              ),
              Gap.height(5),

              StickyHeader(
                header: SearchFilterSort(),
                content: Column(
                  children: [
                    ListView.separated(
                        shrinkWrap: true,
                        padding: KPadding.symmetric(16, 10),
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) =>
                            const ServiceUserDetailCard(),
                        separatorBuilder: (context, index) =>
                            const SizedBoxHeight(
                              height: 10,
                            ),
                        itemCount: 7)
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
