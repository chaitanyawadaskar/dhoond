import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import '../../../utilities/assets_paths/assets_paths.dart';
import '../../../utilities/core/kboxshadow.dart';
import '../../../utilities/core/kpadding.dart';
import '../../../utilities/custom_colors/custom_colors.dart';
import '../../../components/bottom_item.dart';

class CustomPartnerBottomBar extends StatelessWidget {
  const CustomPartnerBottomBar({
    super.key,
    required this.index,
    required this.onTap,
  });

  final int index;
  final Function(int index) onTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: KPadding.symmetric(10, 6),
      decoration: BoxDecoration(
          color: CustomColors.white, boxShadow: KBoxShadow.faintGrey),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          BottomItem(
            name: 'Home',
            onTap: () {
              onTap(0);
            },
            isSelected: index == 0,
            image: IconPath.home,
            size: 18.w,
          ),
          BottomItem(
            name: 'Dashboard',
            onTap: () {
              onTap(1);
            },
            isSelected: index == 1,
            fit: BoxFit.contain,
            image: IconPath.trending,
            size: 20.w,
          ),
          BottomItem(
            name: 'Bookings',
            onTap: () {
              onTap(2);
            },
            isSelected: index == 2,
            image: IconPath.notes,
          ),
          BottomItem(
            name: 'Video',
            onTap: () {
              onTap(3);
            },
            isSelected: index == 3,
            icon: Ionicons.md_play_outline,
          ),
          BottomItem(
            name: 'Wallet',
            onTap: () {
              onTap(4);
            },
            isSelected: index == 4,
            image: IconPath.wallet,
          ),
        ],
      ),
    );
  }
}
