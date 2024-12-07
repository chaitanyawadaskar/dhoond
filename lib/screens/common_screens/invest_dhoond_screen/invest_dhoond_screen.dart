import 'package:customize_button/customize_button.dart';
import 'package:dhoond/utilities/assets_paths/assets_paths.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../components/arrow_left_appbar.dart';
import '../../../components/bullet_points.dart';
import '../../../utilities/constant/constant.dart';
import '../../../utilities/core/kpadding.dart';
import '../../../utilities/custom_colors/custom_colors.dart';
import '../../../utilities/gap/gap.dart';
import '../../../utilities/theme/ktext_theme.dart';

class InvestDhoondScreen extends StatelessWidget {
  const InvestDhoondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Gap.height(20),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ArrowLeftAppbar(
                padding: KPadding.horizontal15,
              ),
              Gap.width(),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Invest In',
                      style: KText.r30Comfortaa,
                    ),
                    Padding(
                      padding: KPadding.only(left: 50),
                      child: Image.asset(
                        ImagePath.dhoond,
                        height: 35.h,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          Gap.height(20),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: KPadding.horizontal30,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Investing with DHOOND Your Path to Financial Growth',
                      style: KText.r15Comfortaa,
                    ),
                    Gap.height(20),
                    Text(
                      '''Investing is the act of allocating funds with the expectation of generating additional income or profit over time. At DHOOND, we offer you the opportunity to invest in our company and be a part of our growth journey.''',
                      style: KText.r15Comfortaa,
                    ),
                    Gap.height(),
                    Text(
                      'How to Invest in DHOOND?',
                      style: KText.r15ComfortaaW7,
                    ),
                    Gap.height(),
                    Text(
                      'Investing in DHOOND is simple and convenient. Here\'s how you can get started:',
                      style: KText.r15Comfortaa,
                    ),
                    BulletPoints(
                      iconSize: 5,
                      spacing: 10,
                      textStyle: KText.r15Comfortaa,
                      style: BulletStyle.numeric,
                      items: const [
                        'Research and Evaluation: Take the time to understand DHOOND as a company. Explore our business model, financial performance, and growth potential to make an informed investment decision',
                        'Accessing the "Invest" Option: Log in to your DHOOND application and navigate to the wallet section. Here, you\'ll find the "Invest" option that allows you to allocate funds into our company as an investment.',
                        'Choose Your Investment Amount: Decide on the amount you wish to invest in DHOOND based on your financial capacity and investment goals. You have the flexibility to choose the investment amount that suits you best.',
                        'Confirmation and Transaction: Once you\'ve selected your investment amount, proceed to confirm the transaction through the application. Provide any ',
                        'Monitor Your Investment: After investing in DHOOND, you can easily monitor the performance of your investment through the application. Stay updated with regular reports and insights on our progress and financial performance.'
                      ],
                    ),
                    Gap.height(20),
                    Text(
                      'Benefits of Investing with DHOOND',
                      style: KText.r15ComfortaaW7,
                    ),
                    Gap.height(),
                    Text(
                      'Investing in DHOOND comes with several benefits:',
                      style: KText.r15Comfortaa,
                    ),
                    BulletPoints(
                      iconSize: 5,
                      spacing: 10,
                      textStyle: KText.r15Comfortaa,
                      style: BulletStyle.dash,
                      items: const [
                        'Potential for Profit: Earn a return on your investment as DHOOND grows and generates profits over time.',
                        'Supporting Growth and Innovation: Be part of our growth story and support our initiatives for innovation and expansion.',
                        'Diversification: Diversify your investment portfolio by including DHOOND, reducing risk, and potentially enhancing overall performance.',
                        'Alignment of Interests: Your success is aligned with ours. As a shareholder, you share in our achievements and growth.',
                        'Flexibility and Accessibility: Enjoy the flexibility and convenience of investing through our application, anytime and anywhere.',
                        '',
                      ],
                    ),
                    Gap.height(),
                    Text(
                      'Invest with DHOOND today and embark on a journey towards financial growth and prosperity.',
                      style: KText.r15Comfortaa,
                    ),
                    Gap.height(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomizedButton(
                          onTap: () {
                            Get.back();
                          },
                          fontStyle: KText.r14BoldWhite,
                          pad: KPadding.symmetric(30, 5),
                          borderRadius: 5,
                          backgroundColor: CustomColors.black,
                          text: 'Invest',
                        ),
                        CustomizedButton(
                          onTap: () {
                            Get.back();
                          },
                          fontStyle: KText.r14,
                          pad: KPadding.symmetric(30, 5),
                          borderRadius: 5,
                          elevation: 0,
                          backgroundColor: CustomColors.white,
                          text: 'I Agree',
                        ),
                      ],
                    ),
                    Gap.height(50),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
