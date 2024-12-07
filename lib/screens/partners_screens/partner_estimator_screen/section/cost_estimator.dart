import 'package:customize_button/customize_button.dart';
import 'package:dhoond/data/extensions/extensions.dart';
import 'package:dhoond/screens/common_screens/add_amount_screen/add_amount_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:get/get.dart';

import '../../../../components/shadow_container.dart';
import '../../../../utilities/assets_paths/assets_paths.dart';
import '../../../../utilities/core/kpadding.dart';
import '../../../../utilities/core/kradius.dart';
import '../../../../utilities/custom_colors/custom_colors.dart';
import '../../../../utilities/custom_textfeild/custom_textfeild.dart';
import '../../../../utilities/gap/gap.dart';
import '../../../../utilities/theme/ktext_theme.dart';

class CostEstimator extends StatefulWidget {
  CostEstimator({
    super.key,
  });

  @override
  State<CostEstimator> createState() => _CostEstimatorState();
}

class _CostEstimatorState extends State<CostEstimator> {
  final price = TextEditingController();
  double gst = 0.0;
  double platformFee = 0.0;
  double grandTotal = 0.0;
  double suggestedPriceMin = 0.0;
  double suggestedPriceMax = 0.0;

  void calculateCosts(double calPrice) {
    setState(() {
      gst = calPrice * 0.05;
      platformFee = calPrice * 0.03;
      grandTotal = calPrice - gst - platformFee;
      suggestedPriceMin = grandTotal * 0.9;
      suggestedPriceMax = grandTotal * 1.1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Padding(
          padding: KPadding.horizontal16,
          child: Column(
            children: [
              Gap.height(25),
              CustomTextFeild(
                prefixIcon: Container(
                  width: 20,
                  alignment: Alignment.center,
                  padding: KPadding.only(top: 5),
                  child: Text(
                    '  ₹',
                    style: KText.r30,
                  ),
                ),
                enableThousands: true,
                controller: price,
                onTextChange: (val) {
                  calculateCosts(double.parse(val.replaceAll(',', '')));
                },
                length: 8,
                contentPadding: KPadding.symmetric(20, 25),
                style: KText.r30w5,
                textinputtype: TextInputType.number,
                title: 'Enter your actual amount',
                backgroundColor: CustomColors.faintGrey,
                allTypeBorderColor: CustomColors.mobileNoGrey,
              ),
              Gap.height(),
              Row(
                children: [
                  Expanded(
                    child: CustomTextFeild(
                      onTextChange: (val) {},
                      length: 4,
                      textinputtype: TextInputType.number,
                      title: 'Enter Time Duration',
                      backgroundColor: CustomColors.faintGrey,
                      allTypeBorderColor: CustomColors.mobileNoGrey,
                      suffixIcon: Container(
                        width: 70,
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: KPadding.only(right: 15),
                          child: Text(
                            'in hours',
                            style: KText.r14Grey,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Gap.width(20),
                  Expanded(
                    child: CustomTextFeild(
                      onTextChange: (val) {},
                      length: 4,
                      textinputtype: TextInputType.number,
                      title: 'Enter sq.ft Area',
                      backgroundColor: CustomColors.faintGrey,
                      allTypeBorderColor: CustomColors.mobileNoGrey,
                      suffixIcon: Container(
                        width: 65,
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: KPadding.only(right: 15),
                          child: Text(
                            'in feets',
                            style: KText.r14Grey,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Gap.height(20),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'GST',
                    style: KText.r14,
                  ),
                  Gap.width(4),
                  Text(
                    '5%',
                    style: KText.r14,
                  ),
                  const Spacer(),
                  Text(
                    '- ₹${gst.toStringAsFixed(2)}',
                    style: KText.r14,
                  )
                ],
              ),
              Gap.height(10),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Platform fee 3%',
                    style: KText.r14,
                  ),
                  const Spacer(),
                  Text(
                    '- ₹${platformFee.toStringAsFixed(2)}',
                    style: KText.r14,
                  )
                ],
              ),
              Gap.height(10),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Dhoond partner fee',
                    style: KText.r14,
                  ),
                  Gap.width(8),
                  const Spacer(),
                  Text(
                    '₹128',
                    style: KText.r14lineThrough,
                  ),
                  Gap.width(5),
                  Text(
                    'FREE',
                    style: KText.r14BlueW5,
                  )
                ],
              ),
              Gap.height(10),
              const Divider(
                color: CustomColors.gradientGrey1,
              ),
              Gap.height(10),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Receivable amount',
                    style: KText.r16Bold,
                  ),
                  const Spacer(),
                  Text(
                    grandTotal.toStringAsFixed(2).commaDenote.rupee,
                    style: KText.r16Bold,
                  )
                ],
              ),
              Gap.height(25),
              ShadowContainer(
                  backgroundColor: CustomColors.black,
                  borderRadius: kBorderRadius10,
                  disableShadow: false,
                  padding:
                      KPadding.only(top: 10, left: 30, right: 15, bottom: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      ShadowContainer(
                        disableShadow: true,
                        backgroundColor: CustomColors.amber,
                        borderRadius: kBorderRadius5,
                        padding: KPadding.all(2),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Icon(
                              Entypo.emoji_flirt,
                              size: 15,
                            ),
                            Text(
                              '  Recommend',
                              style: KText.r12w5,
                            )
                          ],
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Get.back();
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset(
                                  ImagePath.whiteLogo,
                                  height: 25.h,
                                ),
                                Text(
                                  'Suggested Price',
                                  style: KText.r15BoldWhite,
                                )
                              ],
                            ),
                            Text(
                              '₹${suggestedPriceMin.toStringAsFixed(0)} - ₹${suggestedPriceMax.toStringAsFixed(0)}',
                              style: KText.r18w5White,
                            )
                          ],
                        ),
                      ),
                    ],
                  )),
              Gap.height(25),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.info_outline,
                    size: 20,
                  ),
                  Gap.width(10),
                  SizedBox(
                      width: Get.width * 0.7,
                      child: Text(
                        'Please provide the final price to the user, including GST. You may charge more than the Dhoond recommended price if needed.',
                        style: KText.r12w5,
                      ))
                ],
              ),
              Gap.height(),
              // CustomizedButton(
              //   onTap: () {},
              //   text: 'Estimate cost',
              //   fontStyle: KText.r20w5White,
              //   backgroundColor: CustomColors.black,
              // ),
              // Gap.height(),
            ],
          ),
        ),
      ),
    );
  }
}
