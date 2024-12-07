import 'package:dhoond/components/bullet_points.dart';
import 'package:dhoond/data/extensions/extensions.dart';
import 'package:dhoond/utilities/constant/constant.dart';
import 'package:dhoond/utilities/core/kpadding.dart';
import 'package:dhoond/utilities/custom_colors/custom_colors.dart';
import 'package:dhoond/utilities/gap/gap.dart';
import 'package:dhoond/utilities/theme/ktext_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FloatInfoScreen extends StatelessWidget {
  const FloatInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                color: CustomColors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      InkWell(
                        onTap: () {
                          Get.back();
                        },
                        child: Text(
                          'Cancel',
                          style: KText.r20ComfortaaW7,
                        ),
                      ),
                    ],
                  ).pSymmetric(16, 16),
                  Container(
                    padding: KPadding.all16,
                    decoration: const BoxDecoration(
                      color: CustomColors.faintGrey,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Gap.height(15),
                        Text(
                          'New',
                          style: KText.r20w5,
                        ),
                        Gap.height(5),
                        Text(
                          'Float Payments',
                          style: KText.r30,
                        ),
                        Gap.height(10),
                        Text(
                          'Split your payment up to 7 days, weeks and months ',
                          style: KText.r20,
                        ),
                        Gap.height(10),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  decoration: const BoxDecoration(
                    color: CustomColors.white,
                  ),
                  padding: KPadding.all15,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'How it works',
                        style: KText.r20w5,
                      ),
                      Gap.height(),
                      BulletPoints(
                          style: BulletStyle.numeric,
                          runSpacing: 10,
                          textStyle: KText.r16w5,
                          items: const [
                            'Flexible Payment Options: The float feature allows users to split their payments over 7 days, 4 weeks, or 12 months, providing flexibility in managing their finances.',
                            'Convenient Repayment: Users can choose the repayment schedule that best suits their financial situation, making it easier to manage their expenses.',
                            'Interest-Free: The float feature is interest-free, meaning users won\'t incur any additional charges for using this service.',
                            'Transparent Fees: The application provides clear information about any fees associated with the float feature, ensuring users are aware of the costs involved.',
                            'Automatic Deductions: Users can set up automatic deductions from their bank account to ensure timely repayment, reducing the risk of missed payments.',
                            'Credit Limit: The float feature comes with a credit limit of 10,000 rs, allowing users to make services within this limit and split the payment as desired.',
                            'Convenient Access: The float feature is easily accessible through the application, making it convenient for users to manage their payments on the go.',
                            'Security Measures: The application employs robust security measures to protect users\' financial information and ensure a safe and secure payment experience.',
                            'Customer Support: The application offers dedicated customer support to assist users with any questions or issues related to the float feature.',
                            'Feedback Mechanism: The application encourages users to provide feedback on their experience with the float feature, allowing for continuous improvement and refinement of the service.'
                          ]),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
