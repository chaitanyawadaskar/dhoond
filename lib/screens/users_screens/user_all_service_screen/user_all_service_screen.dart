import 'package:dhoond/screens/users_screens/user_dashboard_screen/inner_screens/user_home_screen/section/most_booked_service.dart';
import 'package:dhoond/utilities/assets_paths/assets_paths.dart';
import 'package:dhoond/utilities/core/kboxshadow.dart';
import 'package:dhoond/utilities/core/kpadding.dart';
import 'package:dhoond/utilities/core/ksizedbox.dart';
import 'package:dhoond/utilities/theme/ktext_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../../components/arrow_left_appbar.dart';
import '../../../../../utilities/custom_colors/custom_colors.dart';
import '../../../utilities/core/kradius.dart';
import '../user_service_partner_screen/user_service_partner_screen.dart';

class UserAllServiceScreen extends StatelessWidget {
  const UserAllServiceScreen(
      {super.key, required this.title, required this.services, this.size});
  final String title;
  final List<Map<String, String>> services;
  final double? size;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: ArrowLeftAppbar(
          padding: KPadding.only(top: 17, left: 10, bottom: 17),
        ),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: KPadding.only(left: 20),
                  width: 280.w,
                  child: Text(
                    title,
                    style: KText.r18w5,
                  ),
                ),
              ],
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  padding: KPadding.all20,
                  margin: KPadding.only(left: 16, right: 16, top: 12),
                  decoration: BoxDecoration(
                      boxShadow: KBoxShadow.greyBorderType,
                      color: CustomColors.white,
                      borderRadius: kBorderRadius15),
                  child: Column(
                    children: [
                      GridView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 4,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 10,
                            mainAxisExtent: 105.h),
                        itemCount: services.length,
                        itemBuilder: (ctx, i) => IconButton(
                          visualDensity:
                              const VisualDensity(horizontal: -4, vertical: -4),
                          onPressed: () {
                            Get.to(
                              () => UserServicePartnerScreen(
                                title: '${services[i]['label']}',
                              ),
                              transition: Transition.native,
                            );
                          },
                          icon: GridTile(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  '${services[i]['icon']}',
                                  fit: BoxFit.cover,
                                  height: size ?? 55.w,
                                  width: size ?? 55.w,
                                ),
                                // SvgPicture.asset(
                                //   '${services[i]['icon']}',
                                //   height: 60.w,
                                //   width: 60.w,
                                // ),
                                const SizedBox(height: 10),
                                SizedBox(
                                  height: 40.h,
                                  child: Text('${services[i]['label']}',
                                      style: KText.r10Comfortaa,
                                      maxLines: 3,
                                      textAlign: TextAlign.center),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBoxHeight(),
                      // const MostBookedService()
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
