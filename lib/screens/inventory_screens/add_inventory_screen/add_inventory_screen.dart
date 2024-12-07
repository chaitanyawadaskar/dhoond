import 'package:dhoond/screens/inventory_screens/add_inventory_screen/components/tittle_textfeild.dart';
import 'package:dhoond/utilities/core/kpadding.dart';
import 'package:dhoond/utilities/core/kradius.dart';
import 'package:dhoond/utilities/core/ksizedbox.dart';
import 'package:dhoond/utilities/custom_colors/custom_colors.dart';
import 'package:dhoond/utilities/theme/ktext_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../components/positioned_button.dart';
import '../../../utilities/assets_paths/assets_paths.dart';
import '../inventory_verification_screen/inventory_verification_screen.dart';

class AddInventoryScreen extends StatefulWidget {
  const AddInventoryScreen({
    super.key,
  });
  @override
  State<AddInventoryScreen> createState() => _AddInventoryScreenState();
}

class _AddInventoryScreenState extends State<AddInventoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: KPadding.horizontal25,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBoxHeight(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Image.asset(
                        ImagePath.inventory,
                        height: 40.w,
                        width: 40.w,
                      )
                    ],
                  ),
                  const SizedBoxHeight(
                    height: 25,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        ImagePath.dhoond,
                        height: 36.w,
                        width: 135.w,
                      ),
                      Text(
                        'Add your Inventory',
                        style: KText.r30ComfortaaW7,
                      ),
                    ],
                  ),
                  const SizedBoxHeight(
                    height: 30,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 50.w,
                        width: 50.w,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: AssetImage(
                                  ImagePath.shop,
                                ),
                                fit: BoxFit.cover)),
                      ),
                      const SizedBoxWidth(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Enter Shop Name',
                            style: KText.r14w5,
                          ),
                          Text(
                            'Divyansh Interiors & Furniturs',
                            style: KText.r14,
                          ),
                        ],
                      ),
                      const Spacer(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.image_outlined,
                            color: CustomColors.black,
                            size: 25.w,
                          ),
                          Text(
                            'Shop Image',
                            style: KText.r14w5,
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBoxHeight(
                    height: 25,
                  ),
                  Text(
                    'Select your shop categories',
                    style: KText.r14w5,
                  ),
                  const SizedBoxHeight(
                    height: 25,
                  ),
                  Container(
                    padding: KPadding.all15,
                    decoration: BoxDecoration(
                        border: kBorderAllFaintGrey,
                        borderRadius: kBorderRadius6),
                    child: const Column(
                      children: [
                        TitleTextFeild(
                          title: 'Shop Details',
                          hintText: 'Enter shop name',
                        ),
                        SizedBoxHeight(),
                        TitleTextFeild(
                          title: 'Full Name',
                          hintText: 'Enter full name',
                        ),
                        SizedBoxHeight(),
                        TitleTextFeild(
                          title: 'Full Location',
                          hintText: 'Enter location',
                        ),
                        SizedBoxHeight(),
                        TitleTextFeild(
                          title: 'Contact No.',
                          hintText: 'Enter contact number',
                        ),
                        SizedBoxHeight(),
                        TitleTextFeild(
                          title: 'GST No.',
                          hintText: 'Enter gst number',
                        ),
                        SizedBoxHeight(),
                        TitleTextFeild(
                          title: 'Proof Of Ownership',
                          hintText: 'Enter proof of ownership',
                        ),
                        SizedBoxHeight(),
                        TitleTextFeild(
                          title: 'Proof Of Identity',
                          hintText: 'Enter proof of identity',
                        ),
                        SizedBoxHeight(),
                        TitleTextFeild(
                          title: 'List Of Goods',
                          text: 'Upload',
                        ),
                        SizedBoxHeight(),
                        TitleTextFeild(
                          title: 'Bio',
                          hintText: 'Enter min 20 words',
                        ),
                      ],
                    ),
                  ),
                  const SizedBoxHeight(
                    height: 100,
                  ),
                ],
              ),
            ),
          ),
          PositionedButton(
            title: 'Save',
            onTap: () {
              Get.to(() => const InventoryVerificationScreen());
            },
          ),
        ],
      ),
    );
  }
}
