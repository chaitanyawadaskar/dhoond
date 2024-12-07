import 'package:customize_button/customize_button.dart';
import 'package:dhoond/screens/inventory_screens/add_inventory_screen/add_inventory_screen.dart';
import 'package:dhoond/screens/inventory_screens/inventory_products_list_screen/inventory_products_list_screen.dart';
import 'package:dhoond/utilities/core/kpadding.dart';
import 'package:dhoond/utilities/core/ksizedbox.dart';
import 'package:dhoond/utilities/custom_colors/custom_colors.dart';
import 'package:dhoond/utilities/theme/ktext_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../utilities/assets_paths/assets_paths.dart';

class InventoryVerificationScreen extends StatefulWidget {
  const InventoryVerificationScreen({
    super.key,
  });
  @override
  State<InventoryVerificationScreen> createState() =>
      _InventoryVerificationScreenState();
}

class _InventoryVerificationScreenState
    extends State<InventoryVerificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        padding: KPadding.all25,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomizedButton(
              onTap: () {
                Get.to(() => const InventoryProductsListScreen());
              },
              fontStyle: KText.r14BoldWhite,
              // pad: KPadding.H15V10,
              borderRadius: 5,
              backgroundColor: CustomColors.black,
              text: 'Done',
            ),
            const SizedBoxHeight(),
            CustomizedButton(
              onTap: () {
                Get.back();
              },
              fontStyle: KText.r14Bold,
              elevation: 0,
              // pad: KPadding.H15V10,
              borderRadius: 5,
              backgroundColor: CustomColors.white,
              enableBorder: true,
              text: 'Cancel',
            ),
          ],
        ),
      ),
      body: Padding(
        padding: KPadding.horizontal25,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Image.asset(
                ImagePath.checkAnimation,
                height: 112.w,
                width: 112.w,
              ),
            ),
            Text(
              'Forwarded for Verification',
              style: KText.r30w5,
            ),
            Text(
              'You will get an email once your documents have been approved and shop will be added in dhoond inventory.\nWe appreciate your patience.',
              style: KText.r14Grey,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
