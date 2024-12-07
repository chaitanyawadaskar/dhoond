import 'package:dhoond/components/shadow_container.dart';
import 'package:dhoond/data/extensions/extensions.dart';
import 'package:dhoond/utilities/assets_paths/assets_paths.dart';
import 'package:dhoond/utilities/core/kradius.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../components/arrow_left_appbar.dart';
import '../../../utilities/core/kpadding.dart';
import '../../../utilities/custom_colors/custom_colors.dart';
import '../../../utilities/gap/gap.dart';
import '../../../utilities/theme/ktext_theme.dart';

class UserWalletBalanceScreen extends StatefulWidget {
  const UserWalletBalanceScreen({super.key});

  @override
  State<UserWalletBalanceScreen> createState() =>
      _UserWalletBalanceScreenState();
}

class _UserWalletBalanceScreenState extends State<UserWalletBalanceScreen> {
  bool isCheck = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Gap.height(20),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ArrowLeftAppbar(
                  padding: KPadding.horizontal15,
                ),
                Gap.width(25),
                Text(
                  'Your Wallet',
                  style: KText.r30Comfortaa,
                )
              ],
            ),
            Gap.height(20),
            Text(
              '₹ 500',
              style: KText.r35Bold,
            ),
            Gap.height(60),
            Padding(
              padding: KPadding.horizontal40,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Call Charges',
                        style: KText.r20ComfortaaW7,
                      ),
                      Text(
                        '-₹64',
                        style: KText.r16Red,
                      )
                    ],
                  ),
                  Gap.height(15),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Passbook',
                      style: KText.r20ComfortaaW7,
                    ),
                  ),
                  Gap.height(15),
                  SizedBox(
                    height: Get.height * 0.4,
                    child: ListView.separated(
                      itemBuilder: (context, index) => Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'June 6, 2023 at 3:36 PM',
                            style: KText.r12,
                          ),
                          Text(
                            '+ ₹1,800',
                            style:
                                index % 2 == 0 ? KText.r16Green : KText.r16Red,
                          )
                        ],
                      ),
                      separatorBuilder: (context, index) => Gap.height(15),
                      itemCount: 8,
                    ),
                  ),
                  Gap.height(25),
                ],
              ),
            ),
            ShadowContainer(
                borderRadius: kBorderRadius10,
                margin: KPadding.horizontal15,
                child: Column(
                  children: [
                    Padding(
                      padding: KPadding.only(
                        left: 15,
                        top: 15,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Physically Disabled donation',
                                style: KText.r14,
                              ),
                              Gap.height(5),
                              Text(
                                'An initiative by dhoond',
                                style: KText.r12Grey,
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Image.asset(
                                ImagePath.lady,
                                height: 77.h,
                              ),
                              Column(
                                children: [
                                  Checkbox.adaptive(
                                    value: isCheck,
                                    activeColor: CustomColors.black,
                                    visualDensity: const VisualDensity(
                                        horizontal: -4, vertical: -4),
                                    onChanged: (value) {
                                      setState(() => isCheck = value!);
                                    },
                                  ),
                                  Text(
                                    '₹5',
                                    style: KText.r14,
                                  )
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: KPadding.all10,
                      decoration: BoxDecoration(
                        color: CustomColors.grey2.withOpacity(0.5),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text(
                                'Learn more',
                                style: KText.r14,
                              ),
                              Icon(
                                Icons.chevron_right,
                                size: 15.h,
                              ),
                            ],
                          ),
                          TextButton(
                              onPressed: () {},
                              style: const ButtonStyle(
                                  visualDensity: VisualDensity.compact),
                              child: Text(
                                'Donate Now',
                                style: KText.r14,
                              ))
                        ],
                      ),
                    )
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
