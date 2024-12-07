import 'package:flutter/material.dart';

import '../../../../../../utilities/core/ksizedbox.dart';
import '../components/wallet_search_item.dart';

class WalletSearchHistory extends StatelessWidget {
  const WalletSearchHistory({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        itemBuilder: (context, index) {
          return const WalletSearchItem();
        },
        separatorBuilder: (context, index) => const SizedBoxHeight(),
        itemCount: 5,
      ),
    );
  }
}
