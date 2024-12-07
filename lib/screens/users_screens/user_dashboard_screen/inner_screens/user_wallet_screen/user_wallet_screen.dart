import 'package:dhoond/utilities/core/kpadding.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../utilities/core/ksizedbox.dart';
import 'components/wallet_app_bar.dart';
import 'section/wallet_balance.dart';
import 'section/image_name.dart';

class UserWalletScreen extends StatefulWidget {
  const UserWalletScreen({super.key});

  @override
  State<UserWalletScreen> createState() => _UserWalletScreenState();
}

class _UserWalletScreenState extends State<UserWalletScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: KPadding.horizontal20,
      child: Column(
        children: [
          const SizedBoxHeight(
            height: 20,
          ),
          const WalletAppBar(),
          const SizedBoxHeight(
            height: 25,
          ),
          const ImageName(),
          const SizedBoxHeight(
            height: 25,
          ),
          const WalletBalance(),
          const SizedBoxHeight(),
          // GestureDetector(
          //   onTap: () {
          //     Get.to(
          //       () => const AllBankListScreen(),
          //       transition: Transition.native,
          //     );
          //   },
          //   child: Row(
          //     children: [
          //       InkWell(
          //         onTap: () {
          //           Get.to(() => const UserPaymentHistoryScreen());
          //         },
          //         child: Text(
          //           'CHANGE MY BANK ACCOUNT',
          //           style: KText.r12Bold,
          //         ),
          //       ),
          //       const SizedBoxWidth(
          //         width: 5,
          //       ),
          //       Icon(
          //         Icons.chevron_right,
          //         size: 25.h,
          //       )
          //     ],
          //   ),
          // ),
          // const SizedBoxHeight(),
          // const YourWalletBalance(),
          // const SizedBoxHeight(
          //   height: 25,
          // ),
          // const AddInvestMoney(),
          // const SizedBoxHeight(
          //   height: 25,
          // ),
          // const SearchTextFeild(
          //   showMike: false,
          // ),
          // const SizedBoxHeight(
          //   height: 45,
          // ),
          // const WalletSearchHistory(),
          // const SizedBoxHeight(),
        ],
      ),
    );
  }
}
