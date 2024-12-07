import 'package:dhoond/utilities/core/kpadding.dart';
import 'package:dhoond/utilities/custom_colors/custom_colors.dart';
import 'package:flutter/material.dart';
import '../components/wallet_search_item.dart';

class WalletSearchHistory extends StatelessWidget {
  const WalletSearchHistory({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      padding: KPadding.horizontal15,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return WalletSearchItem(
          isCash: index <= 0,
        );
      },
      separatorBuilder: (context, index) => const Divider(
        color: CustomColors.dividerGrey,
      ),
      itemCount: 3,
    );
  }
}
