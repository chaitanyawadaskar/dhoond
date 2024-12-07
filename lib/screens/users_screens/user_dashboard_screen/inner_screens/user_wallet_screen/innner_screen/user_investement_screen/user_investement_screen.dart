import 'package:dhoond/components/arrow_left_appbar.dart';
import 'package:dhoond/components/shadow_container.dart';
import 'package:dhoond/data/extensions/extensions.dart';
import 'package:dhoond/utilities/assets_paths/assets_paths.dart';
import 'package:dhoond/utilities/constant/constant.dart';
import 'package:dhoond/utilities/core/kpadding.dart';
import 'package:dhoond/utilities/core/kradius.dart';
import 'package:dhoond/utilities/custom_colors/custom_colors.dart';
import 'package:dhoond/utilities/custom_image/custom_image.dart';
import 'package:dhoond/utilities/gap/gap.dart';
import 'package:dhoond/utilities/theme/ktext_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class UserInvestementScreen extends StatefulWidget {
  const UserInvestementScreen({super.key});

  @override
  State<UserInvestementScreen> createState() => _UserInvestementScreenState();
}

class _UserInvestementScreenState extends State<UserInvestementScreen> {
  bool isCheck = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: ArrowLeftAppbar(),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CustomImage(
                    img: ImagePath.investement1,
                    height: 127,
                    width: 222,
                    padding: KPadding.only(left: 25),
                    imageType: ImageType.asset,
                  ),
                  Gap.width(10),
                  CustomImage(
                    img: ImagePath.investement2,
                    height: 127,
                    width: 222,
                    padding: KPadding.only(left: 25),
                    imageType: ImageType.asset,
                  ),
                  Gap.width(10),
                  CustomImage(
                    img: ImagePath.investement1,
                    height: 127,
                    width: 222,
                    padding: KPadding.only(left: 25),
                    imageType: ImageType.asset,
                  ),
                  Gap.width(10),
                  CustomImage(
                    img: ImagePath.investement2,
                    height: 127,
                    width: 222,
                    padding: KPadding.only(left: 25),
                    imageType: ImageType.asset,
                  ),
                ],
              ),
            ).pOnly(left: 16, top: 16),
            ShadowContainer(
                borderRadius: kBorderRadius5,
                padding: KPadding.symmetric(24, 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Add Money',
                          style: KText.r14w5,
                        ),
                        Text(
                          'Add funds to wallet',
                          style: KText.r12GreyW5,
                        )
                      ],
                    ),
                    const Icon(
                      CupertinoIcons.arrow_right_circle_fill,
                      size: 25,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Invest In DHOOND',
                          style: KText.r14w5,
                        ),
                        Text(
                          'Add in Dhoovestment',
                          style: KText.r12GreyW5,
                        )
                      ],
                    ),
                  ],
                )).mOnly(left: 16, right: 16, top: 20),
            Text(
              'Recent Transactions',
              style: KText.r14w6,
            ).mOnly(left: 16, top: 21),
            Gap.height(),
            Row(
              children: [
                ShadowContainer(
                    borderRadius: kBorderRadius10,
                    padding: KPadding.all(18),
                    child: Icon(
                      Feather.phone_forwarded,
                      size: 24,
                    )),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Service Call',
                      style: KText.r14w5,
                    ),
                    Text(
                      'Rs 5.75 deduction for each call',
                      style: KText.r12GreyW4,
                    )
                  ],
                ).mOnly(left: 20),
                const Spacer(),
                Icon(
                  Octicons.arrow_right,
                  size: 24,
                ).mOnly(right: 16)
              ],
            ).mOnly(left: 16),
            Gap.height(),
            Row(
              children: [
                ShadowContainer(
                    borderRadius: kBorderRadius10,
                    padding: KPadding.all(18),
                    child: Image.asset(
                      IconPath.addMoney,
                      height: 24,
                    )),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Added Money',
                      style: KText.r14w5,
                    ),
                    Text(
                      'Add refunds to your wallet',
                      style: KText.r12GreyW4,
                    )
                  ],
                ).mOnly(left: 20),
                const Spacer(),
                Icon(
                  Octicons.arrow_right,
                  size: 24,
                ).mOnly(right: 16)
              ],
            ).mOnly(left: 16),
            Gap.height(),
            Row(
              children: [
                ShadowContainer(
                    borderRadius: kBorderRadius10,
                    padding: KPadding.all(18),
                    child: Image.asset(
                      IconPath.increaseMoney,
                      height: 26,
                    )),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Payed Money',
                      style: KText.r14w5,
                    ),
                    Text(
                      'Your all transaction',
                      style: KText.r12GreyW4,
                    )
                  ],
                ).mOnly(left: 20),
                const Spacer(),
                Icon(
                  Octicons.arrow_right,
                  size: 24,
                ).mOnly(right: 16)
              ],
            ).mOnly(left: 16),
            Gap.height(),
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
