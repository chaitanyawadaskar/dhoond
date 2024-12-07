import 'package:customize_button/customize_button.dart';
import 'package:dhoond/components/shadow_container.dart';
import 'package:dhoond/data/extensions/extensions.dart';
import 'package:dhoond/screens/users_screens/user_dashboard_screen/user_dashboard_screen.dart';
import 'package:dhoond/screens/users_screens/user_main_payment_screen/user_main_payment_screen.dart';
import 'package:dhoond/utilities/constant/constant.dart';
import 'package:dhoond/utilities/core/kpadding.dart';
import 'package:dhoond/utilities/core/kradius.dart';
import 'package:dhoond/utilities/custom_colors/custom_colors.dart';
import 'package:dhoond/utilities/custom_image/custom_image.dart';
import 'package:dhoond/utilities/custom_textfeild/custom_textfeild.dart';
import 'package:dhoond/utilities/gap/gap.dart';
import 'package:dhoond/utilities/theme/ktext_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:get/get.dart';

class UserPartnerRatingScreen extends StatefulWidget {
  const UserPartnerRatingScreen({super.key});

  @override
  State<UserPartnerRatingScreen> createState() =>
      _UserPartnerRatingScreenState();
}

class _UserPartnerRatingScreenState extends State<UserPartnerRatingScreen> {
  double ratings = 4;
  int selectReason = -1;
  int tip = -1;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Gap.height(15),
            Row(
              children: [
                const Spacer(
                  flex: 4,
                ),
                Text(
                  'Review Partner',
                  style: KText.r15Bold,
                ),
                const Spacer(
                  flex: 3,
                ),
                InkWell(
                  onTap: () {
                    Get.back();
                  },
                  child: const Icon(
                    CupertinoIcons.multiply,
                    color: CustomColors.black,
                    size: 25,
                  ),
                )
              ],
            ).pSymmetric(16, 12),
            const Divider(
              color: CustomColors.gradientGrey1,
            ),
            Gap.height(25),
            const Center(
              child: CustomImage(
                img: 'https://i.postimg.cc/85fKZ0Ny/Ellipse-21444.png',
                imageType: ImageType.network,
                shape: BoxShape.circle,
                height: 100,
                width: 100,
              ),
            ),
            Center(
              child: SizedBox(
                width: 225,
                child: Text(
                  'How was your experience with Shubham Raut?',
                  style: KText.r16w5,
                  textAlign: TextAlign.center,
                ),
              ).mOnly(top: 16),
            ),
            Center(
              child: RatingBar.builder(
                initialRating: 4,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemSize: 32,
                itemPadding: KPadding.none,
                itemBuilder: (context, _) => const Icon(
                  Octicons.star_fill,
                  color: CustomColors.ratingYellow,
                ),
                unratedColor: CustomColors.mobileNoGrey,
                onRatingUpdate: (rating) {
                  setState(() {
                    ratings = rating;
                  });
                },
                wrapAlignment: WrapAlignment.center,
              ).mOnly(top: 15),
            ),
            Visibility(
              visible: ratings < 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'What can we improve?',
                    style: KText.r16w5,
                  ),
                  Row(
                    children: [
                      ShadowContainer(
                          width: 180,
                          padding: KPadding.symmetric(0, 15),
                          borderRadius: kBorderRadius8,
                          border: kBorderAllGrey2,
                          backgroundColor: selectReason == 0
                              ? CustomColors.mobileNoGrey
                              : null,
                          onTap: () {
                            setState(() {
                              selectReason = 0;
                            });
                          },
                          child: Text(
                            'Partner delayed arrival',
                            style: KText.r12w4,
                            textAlign: TextAlign.center,
                          )),
                      Gap.width(),
                      ShadowContainer(
                          width: 180,
                          padding: KPadding.symmetric(0, 15),
                          borderRadius: kBorderRadius8,
                          border: kBorderAllGrey2,
                          backgroundColor: selectReason == 1
                              ? CustomColors.mobileNoGrey
                              : null,
                          onTap: () {
                            setState(() {
                              selectReason = 1;
                            });
                          },
                          child: Text(
                            'Service associate',
                            textAlign: TextAlign.center,
                            style: KText.r12w4,
                          )),
                    ],
                  ).mOnly(top: 12),
                  Row(
                    children: [
                      ShadowContainer(
                          width: 180,
                          padding: KPadding.symmetric(0, 15),
                          borderRadius: kBorderRadius8,
                          border: kBorderAllGrey2,
                          backgroundColor: selectReason == 2
                              ? CustomColors.mobileNoGrey
                              : null,
                          onTap: () {
                            setState(() {
                              selectReason = 2;
                            });
                          },
                          child: Text(
                            'Inconvenient payment',
                            style: KText.r12w4,
                            textAlign: TextAlign.center,
                          )),
                      Gap.width(),
                      ShadowContainer(
                          width: 180,
                          padding: KPadding.symmetric(0, 15),
                          borderRadius: kBorderRadius8,
                          border: kBorderAllGrey2,
                          backgroundColor: selectReason == 3
                              ? CustomColors.mobileNoGrey
                              : null,
                          onTap: () {
                            setState(() {
                              selectReason = 3;
                            });
                          },
                          child: Text(
                            'Other',
                            textAlign: TextAlign.center,
                            style: KText.r12w4,
                          )),
                    ],
                  ).mOnly(top: 12),
                ],
              ).mOnly(top: 20, left: 16),
            ),
            ShadowContainer(
                borderRadius: kBorderRadius8,
                border: kBorderAllGrey2,
                padding: KPadding.symmetric(24, 15),
                child: Row(
                  children: [
                    const CustomImage(
                      img: 'https://i.postimg.cc/YSWfhpmb/Layer-1.png',
                      height: 60,
                      width: 60,
                      imageType: ImageType.network,
                    ),
                    Gap.width(24),
                    Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Show Your Appreciation',
                            style: KText.r12w4,
                          ),
                          Gap.height(5),
                          Text(
                            'Give a tip to our hardworking partners who go the extra mile. Your support makes a big difference and motivates them to continue delivering exceptional service.',
                            style: KText.r13Grey,
                          )
                        ],
                      ),
                    )
                  ],
                )).mOnly(top: 20, left: 16, right: 16),
            const Divider(
              color: CustomColors.gradientGrey1,
            ).mOnly(top: 15),
            Text(
              'Add a tip to thank the professional',
              style: KText.r16w5,
            ).mOnly(top: 10, left: 16),
            Text(
              'Your kindness means a lot! 100% of your tip will go directly to them.',
              style: KText.r13Grey,
            ).mOnly(left: 16, right: 16),
            Row(
              children: [
                ShadowContainer(
                    padding: KPadding.symmetric(20, 7),
                    borderRadius: kBorderRadius5,
                    border: kBorderAllGrey2,
                    backgroundColor:
                        tip == 0 ? CustomColors.mobileNoGrey : null,
                    onTap: () {
                      setState(() {
                        tip = 0;
                      });
                    },
                    child: Text(
                      '₹30',
                      style: KText.r12w4,
                      textAlign: TextAlign.center,
                    )),
                Gap.width(10),
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    ShadowContainer(
                        padding: KPadding.symmetric(22, 7),
                        borderRadius: kBorderRadius5,
                        border: kBorderAllGrey2,
                        backgroundColor:
                            tip == 1 ? CustomColors.mobileNoGrey : null,
                        onTap: () {
                          setState(() {
                            tip = 1;
                          });
                        },
                        child: Text(
                          '₹50',
                          textAlign: TextAlign.center,
                          style: KText.r12w4,
                        )),
                    Positioned(
                      bottom: -15,
                      left: 4,
                      right: 4,
                      child: Container(
                        padding: KPadding.symmetric(6, 5),
                        decoration: BoxDecoration(
                            color: CustomColors.popularLightGreen,
                            borderRadius: kBorderRadius6),
                        child: Text(
                          'POPULAR',
                          style: KText.r10w5Green,
                        ),
                      ),
                    )
                  ],
                ),
                Gap.width(10),
                ShadowContainer(
                    padding: KPadding.symmetric(20, 7),
                    borderRadius: kBorderRadius5,
                    border: kBorderAllGrey2,
                    backgroundColor:
                        tip == 2 ? CustomColors.mobileNoGrey : null,
                    onTap: () {
                      setState(() {
                        tip = 2;
                      });
                    },
                    child: Text(
                      '₹100',
                      textAlign: TextAlign.center,
                      style: KText.r12w4,
                    )),
                Gap.width(10),
                tip == 3
                    ? ShadowContainer(
                        padding: KPadding.symmetric(20, 3),
                        borderRadius: kBorderRadius5,
                        border: kBorderAllGrey2,
                        child: Row(
                          children: [
                            Text(
                              '₹ ',
                              style: KText.r13,
                            ).pOnly(top: 5),
                            CustomTextFeild(
                              onTextChange: (val) {},
                              textinputtype: TextInputType.number,
                              length: 3,
                              contentPadding: KPadding.none,
                              hintStyle: KText.r10Grey,
                              width: 35,
                              height: 20,
                              enableBorder: false,
                            ),
                          ],
                        ),
                      )
                    : ShadowContainer(
                        padding: KPadding.symmetric(20, 7),
                        borderRadius: kBorderRadius5,
                        border: kBorderAllGrey2,
                        backgroundColor:
                            tip == 3 ? CustomColors.mobileNoGrey : null,
                        onTap: () {
                          setState(() {
                            tip = 3;
                          });
                        },
                        child: Text(
                          'Custom',
                          textAlign: TextAlign.center,
                          style: KText.r12w4,
                        )),
              ],
            ).mOnly(top: 12, left: 16, right: 16),
            const Divider(
              color: CustomColors.gradientGrey1,
            ).mOnly(top: 20),
            Text(
              'Write your review',
              style: KText.r16w5,
            ).mOnly(top: 15, left: 16),
            CustomTextFeild(
              onTextChange: (val) {},
              hinttext: 'Describe your experience (optional)',
              hintStyle: KText.r10Grey,
              maxLines: 6,
              lengthAtBottom: 160,
              border: OutlineInputBorder(
                  borderSide:
                      const BorderSide(color: CustomColors.mobileNoGrey),
                  borderRadius: kBorderRadius8),
            ).mOnly(left: 16, right: 16, top: 8),
            CustomizedButton(
              onTap: () {
                Get.to(
                  () => const UserMainPaymentScreen(
                    grandTotal: 0,
                    isFromWallet: true,
                  ),
                  transition: Transition.native,
                );
              },
              fontStyle: KText.r20w5White,
              borderRadius: 5,
              backgroundColor: CustomColors.black,
              elevation: 0,
              text: 'Submit',
            ).mOnly(left: 14, right: 14, top: 5, bottom: 7),
          ],
        )),
      ),
    );
  }
}
