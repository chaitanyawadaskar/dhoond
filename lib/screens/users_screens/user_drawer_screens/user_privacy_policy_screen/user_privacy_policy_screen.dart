import 'package:customize_button/customize_button.dart';
import 'package:dhoond/components/dragrable_floating_button.dart';
import 'package:dhoond/utilities/assets_paths/assets_paths.dart';
import 'package:dhoond/utilities/constant/constant.dart';
import 'package:dhoond/utilities/core/ksizedbox.dart';
import 'package:dhoond/utilities/custom_colors/custom_colors.dart';
import 'package:dhoond/utilities/theme/ktext_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../components/arrow_left_appbar.dart';
import '../../../../components/bullet_points.dart';
import '../../../../utilities/core/kpadding.dart';

class UserPrivacyPolicyScreen extends StatefulWidget {
  const UserPrivacyPolicyScreen({super.key});

  @override
  State<UserPrivacyPolicyScreen> createState() =>
      _UserPrivacyPolicyScreenState();
}

class _UserPrivacyPolicyScreenState extends State<UserPrivacyPolicyScreen> {
  bool isCheck = false;
  bool readMore = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const ArrowLeftAppbar(),
        body: SingleChildScrollView(
          child: Padding(
            padding: KPadding.horizontal(46),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBoxHeight(
                  height: 37,
                ),
                Image.asset(
                  ImagePath.dhoond,
                  height: 45.h,
                ),
                const SizedBoxHeight(
                  height: 37,
                ),
                Text(
                  'About Dhoond Privacy',
                  style: KText.r30Comfortaa,
                ),
                const SizedBoxHeight(
                  height: 30,
                ),
                Text(
                  '''Dhoond is service providing app designed to connect users with skilled partners within their geographic vicinity. This app offers a user-friendly interface for individuals to create profiles, list their skills, experiences and personal details based on their location and preferences.''',
                  style: KText.r16Comfortaa,
                ),
                Visibility(
                  visible: readMore,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBoxHeight(
                        height: 22,
                      ),
                      Text(
                        'Joining Dhoond as a User:',
                        style: KText.r15w7,
                      ),
                      const SizedBoxHeight(
                        height: 22,
                      ),
                      Text(
                        'Users can easily become part of the Dhoond community by providing basic details such as name, contact number, current location, preferred language, and region. Ensuring a smooth experience, users grant necessary permissions, including location, call, messages, and others. They can then successfully log in as a Dhoond user.',
                        style: KText.r15Comfortaa,
                      ),
                      const SizedBoxHeight(
                        height: 22,
                      ),
                      Text(
                        'Connecting Users with Partners:',
                        style: KText.r15w7,
                      ),
                      const SizedBoxHeight(
                        height: 22,
                      ),
                      Text(
                        'Users initiate service requests by calling partners through the "Call Now" button. Partners receive a pop-up notification with options to cancel or confirm the service request. Upon confirmation, partners navigate to the user\'s location.',
                        style: KText.r15Comfortaa,
                      ),
                      const SizedBoxHeight(
                        height: 22,
                      ),
                      Text(
                        'Connecting Partners with Inventories:',
                        style: KText.r15w7,
                      ),
                      const SizedBoxHeight(
                        height: 22,
                      ),
                      Text(
                        'We collect and use inventory data, including product details and supplier information, to assist Dhoond platform partners in sourcing goods. Data is securely managed internally and shared only with registered partners for service needs. We retain it as long as necessary and communicate any policy changes through the Dhoond app or website.',
                        style: KText.r15Comfortaa,
                      ),
                    ],
                  ),
                ),
                const SizedBoxHeight(
                  height: 22,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomizedButton(
                      onTap: () {
                        setState(() {
                          readMore = !readMore;
                        });
                      },
                      fontStyle: KText.r14BoldWhite,
                      pad: KPadding.symmetric(35, 5),
                      borderRadius: 5,
                      backgroundColor: CustomColors.black,
                      text: readMore ? 'Read Less' : 'Read more',
                    ),
                    TextButton(
                      onPressed: () {
                        Get.back();
                      },
                      style: const ButtonStyle(
                          visualDensity:
                              VisualDensity(horizontal: -4, vertical: -4)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'I Agree',
                            style: KText.r14,
                          ),
                          Icon(
                            Icons.chevron_right,
                            size: 25.h,
                            color: CustomColors.black,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBoxHeight(
                  height: 35,
                ),
                Text(
                  'Welcome',
                  style: KText.r42w5,
                ),
                const SizedBoxHeight(
                  height: 20,
                ),
                Text(
                  '''Welcome to DHOOND. This Privacy Policy is designed to help you understand how we collect, use, disclose, and safeguard your personal information. By using the App, you agree to the terms outlined in this policy. Our mission is to connect users with skilled partners, providing a seamless and secure platform for service seekers and providers. Your privacy is crucial to us, and this privacy policy is here to explain how we handle your information.''',
                  style: KText.r16Comfortaa,
                ),
                const SizedBoxHeight(
                  height: 20,
                ),
                Text(
                  '''We’ve  updated our Privacy Policy in such way to maintain trust and to ensure that our Privacy Policy clearly explains how we collect and use personal and non-personal data.''',
                  style: KText.r15Bold,
                ),
                const SizedBoxHeight(
                  height: 20,
                ),
                Text(
                  '''Here’s a summary of key updates:''',
                  style: KText.r15Bold,
                ),
                const SizedBoxHeight(
                  height: 20,
                ),
                BulletPoints(
                  iconSize: 5,
                  spacing: 10,
                  textStyle: KText.r15Comfortaa,
                  style: BulletStyle.dot,
                  items: const [
                    'We have made changes to the structure and layout of our Privacy Policy to make it easier to read and understand.',
                    'Dhoond is committed to protecting the personal information of its users.',
                    'Please read this Privacy Policy carefully to understand how Dhoond processes personal information.',
                    'This policy describes how Dhoond processes personal information of its users and partners seamlessly for a personalized service experience.'
                  ],
                ),
                const SizedBoxHeight(
                  height: 28,
                ),
                Text(
                  '''This policy may change from time to time; any changes we make to this Policy will be posted on this App, we will also take any other steps, to the extent required by applicable law, including notifying you about material changes.''',
                  style: KText.r15Comfortaa,
                ),
                const SizedBoxHeight(
                  height: 28,
                ),
                Text(
                  '''This Privacy Policy describes, in a comprehensive manner, how Dhoond uses your data. For more information on Dhoond’s approach, please visit Dhoond’s Privacy FAQ.''',
                  style: KText.r15Comfortaa,
                ),
                const SizedBoxHeight(
                  height: 35,
                ),
                Text(
                  'Introduction',
                  style: KText.r42w5,
                ),
                const SizedBoxHeight(
                  height: 20,
                ),
                Text(
                  '''Dhoond values the trust our users and partners place in us when they give us access to their Personal Data. This Privacy Policy describes how we work to maintain that trust and protect that information.''',
                  style: KText.r15Comfortaa,
                ),
                const SizedBoxHeight(
                  height: 32,
                ),
                Text(
                  '''Our Privacy Policy details how we collect, use, and disclose the Personal and Non-Personal Data we collect from and about you when you access or use our online and/or mobile applications, services, and, interactions with us on the phone or in person, or where permitted by applicable law and in line with this Privacy Policy, that we obtain from publicly available sources or third-party sources.''',
                  style: KText.r15Comfortaa,
                ),
                const SizedBoxHeight(
                  height: 35,
                ),
                Text(
                  'Who’s responsible for your Information ?',
                  style: KText.r15w7,
                ),
                const SizedBoxHeight(
                  height: 32,
                ),
                Text(
                  '''At Dhoond, we take responsibility for collecting and processing your data. We are committed to keeping your information safe and secure.
      ''',
                  style: KText.r15Comfortaa,
                ),
                const SizedBoxHeight(
                  height: 32,
                ),
                Text(
                  '''We also collect information about your communications with Dhoond as well as any of with other users of dhoond.''',
                  style: KText.r15Comfortaa,
                ),
                const SizedBoxHeight(
                  height: 35,
                ),
                Text(
                  'Data Collection and use',
                  style: KText.r15w7,
                ),
                const SizedBoxHeight(
                  height: 32,
                ),
                Text(
                  '''Dhoond uses different types of information in order to provide our Sites’ services, products, and features to you. The Personal Data we collect and process may vary, depending on how you use our Sites.''',
                  style: KText.r15Comfortaa,
                ),
                const SizedBoxHeight(
                  height: 32,
                ),
                Text(
                  '''If Personal Data is required, to provide particular Dhoond services or features to you, it will be indicated at the time of collection. If Personal Data is required and you choose not to provide it, then the particular feature or service may not be available to you.''',
                  style: KText.r15Comfortaa,
                ),
                const SizedBoxHeight(
                  height: 20,
                ),
                BulletPoints(
                  iconSize: 5,
                  spacing: 10,
                  textStyle: KText.r15w7,
                  style: BulletStyle.numeric,
                  items: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'User Registration:',
                          style: KText.r15w7,
                        ),
                        const SizedBoxHeight(),
                        BulletPoints(
                          iconSize: 5,
                          spacing: 10,
                          textStyle: KText.r15Comfortaa,
                          style: BulletStyle.dash,
                          items: const [
                            '''Join Dhoond by providing your basic details – name, contact number, current location, preferred language, and region.''',
                            '''Grant Necessary Permissions: To ensure a smooth experience, allow permissions like location, call, messages, and others.'''
                          ],
                        ),
                        const SizedBoxHeight(),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Partner Registration:',
                          style: KText.r15w7,
                        ),
                        const SizedBoxHeight(),
                        BulletPoints(
                          iconSize: 5,
                          spacing: 10,
                          textStyle: KText.r15Comfortaa,
                          style: BulletStyle.dash,
                          items: const [
                            '''Partners share their expertise by providing details such as name, Aadhar card, contact information, age, driving license, current address, and a profile picture.''',
                            '''Set Hourly Charges: Partners have the flexibility to set their hourly charges.'''
                          ],
                        ),
                        const SizedBoxHeight(),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Connection Process:',
                          style: KText.r15w7,
                        ),
                        const SizedBoxHeight(),
                        BulletPoints(
                          iconSize: 5,
                          spacing: 10,
                          textStyle: KText.r15Comfortaa,
                          style: BulletStyle.dash,
                          items: const [
                            '''Users can easily contact partners by clicking the "Call Now" button.''',
                            '''Notification to Partner: Partners receive a notification with options to cancel or confirm the service request.''',
                            '''Confirmation: After confirmation, partners navigate to the user's current location.'''
                          ],
                        ),
                        const SizedBoxHeight()
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Work Initiation:',
                          style: KText.r15w7,
                        ),
                        const SizedBoxHeight(),
                        BulletPoints(
                          iconSize: 5,
                          spacing: 10,
                          textStyle: KText.r15Comfortaa,
                          style: BulletStyle.dash,
                          items: const [
                            ''' OTP Exchange: Partners and users exchange a secure OTP.''',
                            '''Official Commencement: Partners can officially start their service after OTP verification.'''
                          ],
                        ),
                        const SizedBoxHeight()
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Payment Process:',
                          style: KText.r15w7,
                        ),
                        const SizedBoxHeight(),
                        BulletPoints(
                          iconSize: 5,
                          spacing: 10,
                          textStyle: KText.r15Comfortaa,
                          style: BulletStyle.dash,
                          items: const [
                            '''Users can conveniently pay for services by scanning the partner's QR code or using other payment methods.''',
                          ],
                        ),
                        const SizedBoxHeight()
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Safety Measures:',
                          style: KText.r15w7,
                        ),
                        const SizedBoxHeight(),
                        BulletPoints(
                          iconSize: 5,
                          spacing: 10,
                          textStyle: KText.r15Comfortaa,
                          style: BulletStyle.dash,
                          items: const [
                            '''Partner Certification: Rest assured, all our partners are certified by Dhoond.''',
                            '''Information Verification: For added security, we collect the U ID number and a facial image of the partner.''',
                            '''Safety Disclaimer: Please note, Dhoond is not responsible for scams or scandals.'''
                          ],
                        ),
                        const SizedBoxHeight()
                      ],
                    )
                  ],
                ),
                const SizedBoxHeight(
                  height: 22,
                ),
                Text(
                  'Who we share your data with',
                  style: KText.r15w7,
                ),
                const SizedBoxHeight(
                  height: 22,
                ),
                Text(
                  'To ensure a seamless experience, we share data with trusted service providers for essential functions like payment processing, who adhere to strict data protection standards.',
                  style: KText.r15Comfortaa,
                ),
                const SizedBoxHeight(
                  height: 22,
                ),
                Text(
                  'Transfers of Information',
                  style: KText.r15w7,
                ),
                const SizedBoxHeight(
                  height: 22,
                ),
                Text(
                  'Your data may be transferred to servers outside your region, ensuring a smooth user experience.',
                  style: KText.r15Comfortaa,
                ),
                const SizedBoxHeight(
                  height: 22,
                ),
                Text(
                  'Data Safety',
                  style: KText.r15w7,
                ),
                const SizedBoxHeight(
                  height: 22,
                ),
                Text(
                  'Dhoond employs industry-standard security measures to safeguard your data from unauthorized access, disclosure, alteration, and destruction.',
                  style: KText.r15Comfortaa,
                ),
                const SizedBoxHeight(
                  height: 22,
                ),
                Text(
                  'Conclusion',
                  style: KText.r15w7,
                ),
                const SizedBoxHeight(
                  height: 22,
                ),
                Text(
                  'Thank you for choosing Dhoond. We are dedicated to providing a secure and transparent platform for connecting users with skilled partners. If you have any questions or concerns about our privacy practices, please contact us at [info@dhoond.co].',
                  style: KText.r15Comfortaa,
                ),
                const SizedBoxHeight(
                  height: 22,
                ),
                Text(
                  '_ _ _',
                  style: KText.r15w7,
                ),
                const SizedBoxHeight(
                  height: 50,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
