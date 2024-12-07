import 'package:customize_button/customize_button.dart';
import 'package:dhoond/components/shadow_container.dart';
import 'package:dhoond/data/extensions/extensions.dart';
import 'package:dhoond/screens/partners_screens/partner_dashboard_screen/partner_dashboard_screen.dart';
import 'package:dhoond/screens/users_screens/user_dashboard_screen/user_dashboard_screen.dart';
import 'package:dhoond/utilities/core/kpadding.dart';
import 'package:dhoond/utilities/core/kradius.dart';
import 'package:dhoond/utilities/custom_colors/custom_colors.dart';
import 'package:dhoond/utilities/custom_textfeild/custom_textfeild.dart';
import 'package:dhoond/utilities/gap/gap.dart';
import 'package:dhoond/utilities/theme/ktext_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserAddAddressScreen extends StatefulWidget {
  const UserAddAddressScreen({super.key, required this.isPartner});

  final bool isPartner;
  @override
  State<UserAddAddressScreen> createState() => _UserAddAddressScreenState();
}

class _UserAddAddressScreenState extends State<UserAddAddressScreen> {
  int selectedAddress = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Gap.height(20),
            Row(
              children: [
                Text(
                  'Enter address details',
                  style: KText.r20w5,
                ),
                const Spacer(),
                InkWell(
                  onTap: () {
                    Get.back();
                  },
                  child: const Icon(
                    CupertinoIcons.multiply,
                    size: 25,
                  ),
                ),
              ],
            ),
            Gap.height(20),
            ShadowContainer(
              padding: KPadding.all15,
              disableShadow: true,
              backgroundColor: CustomColors.dashboardGrey,
              borderRadius: kBorderRadius10,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomTextFeild(
                    onTextChange: (val) {},
                    title: 'Receiver\'s name',
                    controller:
                        TextEditingController(text: 'Prathamesh Dolaskar'),
                    style: KText.r16w6,
                  ),
                  Gap.height(),
                  CustomTextFeild(
                    onTextChange: (val) {},
                    title: 'Receiver\'s contact',
                    controller: TextEditingController(text: '+919876543210'),
                    style: KText.r16w6,
                  ),
                  Gap.height(),
                  Text(
                    'May be used to assist service',
                    style: KText.r12Grey,
                  ),
                ],
              ),
            ),
            Gap.height(20),
            ShadowContainer(
              padding: KPadding.all15,
              disableShadow: true,
              backgroundColor: CustomColors.dashboardGrey,
              borderRadius: kBorderRadius10,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Save address as*',
                    style: KText.r16w5,
                  ),
                  Gap.height(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            selectedAddress = 0;
                          });
                        },
                        child: Container(
                          padding: KPadding.symmetric(25, 10),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: CustomColors.white,
                              border: selectedAddress == 0
                                  ? kBorderAll
                                  : kBorderAllGrey,
                              borderRadius: kBorderRadius8),
                          child: Text(
                            'Home',
                            style: KText.r12Bold,
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            selectedAddress = 1;
                          });
                        },
                        child: Container(
                          padding: KPadding.symmetric(25, 10),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: CustomColors.white,
                              border: selectedAddress == 1
                                  ? kBorderAll
                                  : kBorderAllGrey,
                              borderRadius: kBorderRadius8),
                          child: Text(
                            'Work',
                            style: KText.r12Bold,
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            selectedAddress = 2;
                          });
                        },
                        child: Container(
                          padding: KPadding.symmetric(25, 10),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: CustomColors.white,
                              border: selectedAddress == 2
                                  ? kBorderAll
                                  : kBorderAllGrey,
                              borderRadius: kBorderRadius8),
                          child: Text(
                            'Hotel',
                            style: KText.r12Bold,
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            selectedAddress = 3;
                          });
                        },
                        child: Container(
                          padding: KPadding.symmetric(25, 10),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: CustomColors.white,
                              border: selectedAddress == 3
                                  ? kBorderAll
                                  : kBorderAllGrey,
                              borderRadius: kBorderRadius8),
                          child: Text(
                            'Other',
                            style: KText.r12Bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Gap.height(30),
                  CustomTextFeild(
                    onTextChange: (val) {},
                    hinttext: 'Nagpur, India',
                    hintStyle: KText.r12w5,
                    suffixIcon: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          padding: KPadding.symmetric(25, 8),
                          margin: KPadding.only(right: 10),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: CustomColors.white,
                              border: kBorderAll,
                              borderRadius: kBorderRadius8),
                          child: InkWell(
                            onTap: () {
                              Get.back();
                            },
                            child: Text(
                              'Change',
                              style: KText.r12Bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Gap.height(),
                  Text(
                    'Updated based on your exact map pin',
                    style: KText.r12Grey,
                  ),
                  Gap.height(),
                  CustomTextFeild(
                    onTextChange: (val) {},
                    hinttext: 'Flat/House no/ Floor/ Building',
                    hintStyle: KText.r12w5,
                  ),
                  Gap.height(20),
                  CustomTextFeild(
                    onTextChange: (val) {},
                    hintStyle: KText.r12w5,
                    hinttext: 'Nearby landmark (optional)',
                  ),
                  Gap.height(),
                ],
              ),
            ),
            const Spacer(),
            CustomizedButton(
              onTap: () {
                Get.offAll(() => widget.isPartner
                    ? PartnerDashboardScreen()
                    : UserDashboardScreen());
              },
              text: 'Confirm Address',
              fontStyle: KText.r20w5White,
              backgroundColor: CustomColors.black,
            ),
            Gap.height(25),
          ],
        ).mSymmetric(15),
      ),
    );
  }
}
