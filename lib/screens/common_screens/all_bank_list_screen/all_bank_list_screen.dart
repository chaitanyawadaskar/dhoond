import 'package:dhoond/components/arrow_left_appbar.dart';
import 'package:dhoond/components/shadow_container.dart';
import 'package:dhoond/screens/common_screens/selected_bank_screen/selected_bank_screen.dart';
import 'package:dhoond/screens/users_screens/user_dashboard_screen/inner_screens/user_home_screen/components/search_text_feild.dart';
import 'package:dhoond/utilities/core/kradius.dart';
import 'package:dhoond/utilities/custom_colors/custom_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:get/get.dart';

import '../../../utilities/assets_paths/assets_paths.dart';
import '../../../utilities/core/kpadding.dart';
import '../../../utilities/gap/gap.dart';
import '../../../utilities/theme/ktext_theme.dart';

class AllBankListScreen extends StatefulWidget {
  const AllBankListScreen({super.key});

  @override
  State<AllBankListScreen> createState() => _AllBankListScreenState();
}

class _AllBankListScreenState extends State<AllBankListScreen> {
  var bankList = [
    {'bank_img': ImagePath.sbi, 'bank_name': 'State Bank of India'},
    {'bank_img': ImagePath.bom, 'bank_name': 'Bank of Maharashtra'},
    {'bank_img': ImagePath.hdfc, 'bank_name': 'HDFC Bank'},
    {'bank_img': ImagePath.cbi, 'bank_name': 'Central Bank of India'},
    {'bank_img': ImagePath.bob, 'bank_name': 'Bank of Badoda'},
    {'bank_img': ImagePath.union, 'bank_name': 'Union Bank of India'},
    {'bank_img': ImagePath.icici, 'bank_name': 'ICICI Bank'},
    {'bank_img': ImagePath.kotak, 'bank_name': 'Kotak Mahindra bank'},
    {'bank_img': ImagePath.axis, 'bank_name': 'Axis Bank'}
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const ArrowLeftAppbar(),
        body: SingleChildScrollView(
          child: Padding(
            padding: KPadding.horizontal15,
            child: Column(
              children: [
                Gap.height(50),
                SearchTextFeild(
                  showMike: false,
                  hintText: 'Search by Bank Name',
                  hintStyle: KText.r14,
                ),
                Gap.height(25),
                ShadowContainer(
                  padding: KPadding.all10,
                  borderRadius: kBorderRadius12,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Popular Banks',
                        style: KText.r14w5,
                      ),
                      Gap.height(20),
                      SizedBox(
                        height: 350.h,
                        child: GridView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 3,
                                  mainAxisExtent: 120.h,
                                  mainAxisSpacing: 15,
                                  crossAxisSpacing: 10),
                          itemBuilder: (context, index) {
                            return InkWell(
                              onTap: () {
                                Get.to(
                                  () => const SelectedBankScreen(),
                                  transition: Transition.native,
                                );
                              },
                              child: Column(
                                children: [
                                  Image.asset(
                                    '${bankList[index]['bank_img']}',
                                    height: 50.w,
                                    width: 50.w,
                                  ),
                                  Gap.height(10),
                                  Text(
                                    '${bankList[index]['bank_name']}',
                                    style: KText.r12,
                                    textAlign: TextAlign.center,
                                  )
                                ],
                              ),
                            );
                          },
                          itemCount: bankList.length,
                        ),
                      ),
                    ],
                  ),
                ),
                Gap.height(),
                ShadowContainer(
                    padding: KPadding.all10,
                    borderRadius: kBorderRadius12,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'All Banks',
                          style: KText.r14w5,
                        ),
                        Gap.height(20),
                        ListView.separated(
                          physics: const NeverScrollableScrollPhysics(),
                          itemBuilder: (context, index) {
                            return Row(
                              children: [
                                Container(
                                  padding: KPadding.all10,
                                  decoration: BoxDecoration(
                                      border: kBorderAllGrey,
                                      color: CustomColors.white,
                                      shape: BoxShape.circle),
                                  child: Icon(
                                    FontAwesome.bank,
                                    size: 26.h,
                                  ),
                                ),
                                Gap.width(),
                                Expanded(
                                  child: Container(
                                    alignment: Alignment.centerLeft,
                                    padding: KPadding.only(bottom: 15, top: 15),
                                    decoration: const BoxDecoration(
                                        border: kBorderBGrey),
                                    child: Text(
                                      '${bankList[index]['bank_name']}',
                                      style: KText.r14,
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                )
                              ],
                            );
                          },
                          separatorBuilder: (context, index) => Gap.height(10),
                          itemCount: bankList.length,
                          shrinkWrap: true,
                        )
                      ],
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
