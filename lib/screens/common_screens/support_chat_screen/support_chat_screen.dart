import 'package:dhoond/components/shadow_container.dart';
import 'package:dhoond/utilities/core/kpadding.dart';
import 'package:dhoond/utilities/core/kradius.dart';
import 'package:dhoond/utilities/custom_colors/custom_colors.dart';
import 'package:dhoond/utilities/gap/gap.dart';
import 'package:dhoond/utilities/theme/ktext_theme.dart';
import 'package:flutter/material.dart';
import 'components/support_chart_app_bar.dart';
import 'components/support_chart_text_feild.dart';

class SupportChatScreen extends StatefulWidget {
  const SupportChatScreen({super.key});

  @override
  State<SupportChatScreen> createState() => _SupportChatScreenState();
}

class _SupportChatScreenState extends State<SupportChatScreen> {
  List chat = [
    {
      'msg':
          'Hi!, I’m Dhoond’s virtual chat assistant. what can i help you with ?',
      'type': 'bot'
    },
  ];
  final _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: KPadding.horizontal20,
          child: Column(
            children: [
              Gap.height(20),
              const SupportChartAppBar(),
              Gap.height(),
              Text(
                'Dhoond Support',
                style: KText.r36Comfortaa,
              ),
              Gap.height(20),
              Expanded(
                child: ListView.separated(
                  itemCount: chat.length,
                  controller: _scrollController,
                  padding: KPadding.horizontal15,
                  itemBuilder: (context, index) {
                    return Row(
                      mainAxisAlignment: '${chat[index]['type']}' == 'bot'
                          ? MainAxisAlignment.start
                          : MainAxisAlignment.end,
                      children: [
                        Flexible(
                          child: ShadowContainer(
                            disableShadow: true,
                            backgroundColor: CustomColors.gradientGrey,
                            borderRadius: '${chat[index]['type']}' == 'bot'
                                ? kBorderRadiusTLRBR12
                                : kBorderRadiusTLRBL12,
                            padding: KPadding.all12,
                            child: Text(
                              '${chat[index]['msg']}',
                              style: KText.r14Comfortaa,
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return Gap.height();
                  },
                ),
              ),
              Gap.height(),
              SupportChartTextFeild(
                onSend: (message) async {
                  setState(() {
                    chat.add(
                      {'msg': message, 'type': 'user'},
                    );
                    _scrollController.jumpTo(
                      _scrollController.position.maxScrollExtent,
                    );
                  });
      
                  Future.delayed(const Duration(milliseconds: 500)).then((value) {
                    if (message.contains("hello") || message.contains("hi")) {
                      chat.add(
                        {
                          'msg':
                              'Hello! How can I assist you today with your home services?',
                          'type': 'bot'
                        },
                      );
                    } else if (message.contains("goodbye") ||
                        message.contains("bye")) {
                      chat.add(
                        {
                          'msg':
                              "Goodbye! Have a great day! If you need any further assistance with your home services, feel free to ask.",
                          'type': 'bot'
                        },
                      );
                    } else if (message.contains("when will the partner arrive") ||
                        message
                            .contains("when will my service provider arrive")) {
                      chat.add(
                        {
                          'msg':
                              "Your service provider is on the way and will reach you at the scheduled time.",
                          'type': 'bot'
                        },
                      );
                    } else if (message.contains("ok") ||
                        message.contains("thanks") ||
                        message.contains("thank you")) {
                      chat.add(
                        {
                          'msg':
                              "You're welcome! Is there anything else related to your home services that I can help with?",
                          'type': 'bot'
                        },
                      );
                    } else if (message.contains("help") ||
                        message.contains("assist")) {
                      chat.add(
                        {
                          'msg':
                              "Sure, I'm here to help! Please provide more details about the home service you need assistance with.",
                          'type': 'bot'
                        },
                      );
                    } else if (message.contains("book") ||
                        message.contains("schedule") ||
                        message.contains("appointment")) {
                      chat.add(
                        {
                          'msg':
                              "You can book or schedule an appointment for any home service through our app or by contacting our support.",
                          'type': 'bot'
                        },
                      );
                    } else if (message.contains("service options") ||
                        message.contains("available services") ||
                        message.contains("what services")) {
                      chat.add(
                        {
                          'msg':
                              "We offer a range of home services including cleaning, plumbing, electrical work, and more. What specific service are you looking for?",
                          'type': 'bot'
                        },
                      );
                    } else if (message.contains("pricing") ||
                        message.contains("cost") ||
                        message.contains("price")) {
                      chat.add(
                        {
                          'msg':
                              "Our pricing varies depending on the service. Please visit our app or website for detailed pricing information or contact our support.",
                          'type': 'bot'
                        },
                      );
                    } else if (message.contains("cancel") ||
                        message.contains("reschedule")) {
                      chat.add(
                        {
                          'msg':
                              "To cancel or reschedule a service, please use our app or contact our support team for assistance.",
                          'type': 'bot'
                        },
                      );
                    } else if (message
                            .contains("protect my personal information") ||
                        message.contains("secure my data")) {
                      chat.add(
                        {
                          'msg':
                              "At Dhoond, we employ industry-standard security measures to safeguard your data from unauthorized access, disclosure, alteration, and destruction. Your privacy is crucial to us.",
                          'type': 'bot'
                        },
                      );
                    } else if (message
                            .contains("types of personal information") ||
                        message.contains("personal data collected")) {
                      chat.add(
                        {
                          'msg':
                              "Dhoond collects information such as your name, contact number, current location, preferred language, and region. For partners, we also collect Aadhar card details, driving license, age, and profile picture.",
                          'type': 'bot'
                        },
                      );
                    } else if (message
                            .contains("access or delete my personal data") ||
                        message.contains("manage my data")) {
                      chat.add(
                        {
                          'msg':
                              "Yes, you can access and request the deletion of your personal data. Please contact our support team at [contact@email.com], and we will process your request in accordance with applicable laws.",
                          'type': 'bot'
                        },
                      );
                    } else if (message.contains("use my location data") ||
                        message.contains("location information used")) {
                      chat.add(
                        {
                          'msg':
                              "We use your location data to connect you with nearby service providers and to ensure efficient navigation for our partners. This helps us provide accurate service availability and timely service delivery.",
                          'type': 'bot'
                        },
                      );
                    } else if (message.contains("scam or scandal") ||
                        message.contains("suspect fraud")) {
                      chat.add(
                        {
                          'msg':
                              "If you suspect any fraudulent activity, please report it immediately to our support team at [contact@email.com]. We take such matters seriously and will investigate and take appropriate action.",
                          'type': 'bot'
                        },
                      );
                    } else if (message
                            .contains("handle inventory-related data") ||
                        message.contains("inventory information")) {
                      chat.add(
                        {
                          'msg':
                              "Dhoond collects inventory-related data like product names, descriptions, quantities, prices, and supplier details to facilitate browsing, selection, and procurement of goods by our partners. This information is used solely for internal purposes.",
                          'type': 'bot'
                        },
                      );
                    } else if (message.contains("manage service requests") ||
                        message.contains("service request process")) {
                      chat.add(
                        {
                          'msg':
                              "You can initiate service requests by clicking the 'Call Now' button. Partners receive a notification with options to cancel or confirm the request. Upon confirmation, partners navigate to your location to provide the requested service.",
                          'type': 'bot'
                        },
                      );
                    } else if (message
                            .contains("provide required personal data") ||
                        message.contains("personal data mandatory")) {
                      chat.add(
                        {
                          'msg':
                              "If you choose not to provide the required personal data, certain features or services of the Dhoond app may not be available to you. Providing personal data is essential for a smooth and personalized service experience.",
                          'type': 'bot'
                        },
                      );
                    } else if (message
                            .contains("changes to the privacy policy") ||
                        message.contains("privacy policy updates")) {
                      chat.add(
                        {
                          'msg':
                              "Any changes or updates to our privacy policy will be posted on the Dhoond app. We will also notify you about material changes through the app or via email, ensuring you are always informed.",
                          'type': 'bot'
                        },
                      );
                    } else if (message.contains("use my communications data") ||
                        message.contains("communications information")) {
                      chat.add(
                        {
                          'msg':
                              "We collect information about your communications with Dhoond and other users to improve our services and provide better customer support. This data is handled with strict confidentiality.",
                          'type': 'bot'
                        },
                      );
                    } else if (message.contains("payment methods supported") ||
                        message.contains("how to pay for services")) {
                      chat.add(
                        {
                          'msg':
                              "You can conveniently pay for services by scanning the partner's QR code or using other supported payment methods. We ensure secure processing of all transactions.",
                          'type': 'bot'
                        },
                      );
                    } else if (message.contains("partners verified") ||
                        message.contains("partner verification")) {
                      chat.add(
                        {
                          'msg':
                              "Yes, all partners on Dhoond are certified and verified. We collect UID numbers and facial images of partners for added security and verification purposes.",
                          'type': 'bot'
                        },
                      );
                    } else {
                      chat.add(
                        {
                          'msg':
                              "I appreciate your query, but it seems to be beyond my capabilities. Please contact our Customer Support at +91 9096 4688 87 or mail us your query at solutions@amecmobility.com for further assistance.",
                          'type': 'bot'
                        },
                      );
                      _scrollController.jumpTo(
                        _scrollController.position.maxScrollExtent,
                      );
                    }
                    setState(() {});
                    _scrollController.jumpTo(
                      _scrollController.position.maxScrollExtent,
                    );
                  });
                },
              ),
              Gap.height(),
            ],
          ),
        ),
      ),
    );
  }
}
