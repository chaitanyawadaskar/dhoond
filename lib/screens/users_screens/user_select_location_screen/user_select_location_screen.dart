import 'package:dhoond/components/shadow_container.dart';
import 'package:dhoond/data/extensions/extensions.dart';
import 'package:dhoond/screens/users_screens/user_confirm_address_screen/user_confirm_address_screen.dart';
import 'package:dhoond/screens/users_screens/user_dashboard_screen/inner_screens/user_home_screen/components/search_text_feild.dart';
import 'package:dhoond/utilities/core/kboxshadow.dart';
import 'package:dhoond/utilities/core/kpadding.dart';
import 'package:dhoond/utilities/core/kradius.dart';
import 'package:dhoond/utilities/custom_colors/custom_colors.dart';
import 'package:dhoond/utilities/gap/gap.dart';
import 'package:dhoond/utilities/theme/ktext_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:get/get.dart';

class UserSelectLocationScreen extends StatelessWidget {
  const UserSelectLocationScreen({super.key, this.isPartner});
  final bool? isPartner;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Gap.height(23),
            Row(
              children: [
                InkWell(
                  onTap: () {
                    Get.back();
                  },
                  child: const Icon(
                    Feather.chevron_down,
                    size: 24,
                    color: CustomColors.black,
                  ),
                ),
                Gap.width(15),
                Text(
                  'Select a location',
                  style: KText.r20w5,
                )
              ],
            ),
            Gap.height(),
            SizedBox(
              height: 45,
              child: SearchTextFeild(
                showMike: false,
                borderRadius: kBorderRadius10,
                hintStyle: KText.r12Grey,
                hintText: 'Search for area, street name...',
              ),
            ),
            Gap.height(20),
            ShadowContainer(
              borderRadius: kBorderRadius12,
              border: kBorderAllGrey05_2,
              backgroundColor: CustomColors.dashboardGrey,
              padding: KPadding.symmetric(15, 20),
              child: Column(
                children: [
                  Gap.height(5),
                  InkWell(
                    onTap: () {
                      Get.to(() => UserConfirmAddressScreen(
                            isPartner: isPartner,
                          ));
                    },
                    child: Row(
                      children: [
                        const Icon(
                          Entypo.plus,
                          size: 25,
                          color: CustomColors.black,
                        ),
                        Gap.width(10),
                        Text(
                          'Add address',
                          style: KText.r16w5,
                        ),
                        const Spacer(),
                        const Icon(
                          Entypo.chevron_right,
                          size: 25,
                          color: CustomColors.black,
                        )
                      ],
                    ).mSymmetric(0),
                  ),
                  Divider(
                    thickness: 1.5,
                    color: CustomColors.mobileNoGrey.withOpacity(0.5),
                  ).pSymmetric(25, 12),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Icon(
                        MaterialIcons.my_location,
                        size: 25,
                        color: CustomColors.black,
                      ),
                      Gap.width(10),
                      InkWell(
                        onTap: () {
                          Get.back();
                        },
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Use your current location',
                              style: KText.r16w5,
                            ),
                            Text(
                              'Nagpur, Maharashtra, India',
                              style: KText.r14Grey,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ).mSymmetric(16),
      ),
    );
  }
}
