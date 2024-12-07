import 'package:dhoond/components/arrow_left_appbar.dart';
import 'package:dhoond/utilities/core/kpadding.dart';
import 'package:dhoond/utilities/gap/gap.dart';
import 'package:dhoond/utilities/theme/ktext_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../components/credit_option_card.dart';
import '../pay_with_credit_screen/pay_with_credit_screen.dart';

class PayWithCreditListScreen extends StatefulWidget {
  const PayWithCreditListScreen({super.key});

  @override
  State<PayWithCreditListScreen> createState() =>
      _PayWithCreditListScreenState();
}

class _PayWithCreditListScreenState extends State<PayWithCreditListScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: KPadding.horizontal15,
          child: Column(
            children: [
              Gap.height(20),
              Row(
                children: [
                  const ArrowLeftAppbar(
                    padding: KPadding.none,
                  ),
                  Gap.width(),
                  Text(
                    'Pay With Credit',
                    style: KText.r30Comfortaa,
                  )
                ],
              ),
              Gap.height(35),
              CreditOptionCard(
                onTap: () {
                  Get.to(
                    () => const PayWithCreditScreen(
                      url: 'https://lazypay.in/',
                    ),
                    transition: Transition.native,
                  );
                },
                name: 'Lazypay',
                img: 'https://i.postimg.cc/wvwf5NBb/image-16.png',
              ),
              Gap.height(10),
              CreditOptionCard(
                onTap: () {
                  Get.to(
                    () => const PayWithCreditScreen(
                      url: 'https://www.zestmoney.in/',
                    ),
                    transition: Transition.native,
                  );
                },
                name: 'Zest Money',
                img: 'https://i.postimg.cc/Y0Jx8zB8/Arcticons-Zestmoney-1.png',
              ),
              Gap.height(10),
              CreditOptionCard(
                onTap: () {
                  Get.to(
                    () => const PayWithCreditScreen(
                      url: 'https://www.flexpay.in/',
                    ),
                    transition: Transition.native,
                  );
                },
                name: 'Flex Pay',
                img: 'https://i.postimg.cc/MGdbgS8n/image-18.png',
              ),
              Gap.height(10),
              CreditOptionCard(
                onTap: () {
                  Get.to(
                    () => const PayWithCreditScreen(
                      url: 'https://getsimpl.com/',
                    ),
                    transition: Transition.native,
                  );
                },
                name: 'Simpl Pay',
                img: 'https://i.postimg.cc/2ypw7xDG/image-17.png',
              ),
              Gap.height(10),
            ],
          ),
        ),
      ),
    );
  }
}
