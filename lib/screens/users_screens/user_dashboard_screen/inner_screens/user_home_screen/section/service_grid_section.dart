import 'package:dhoond/utilities/custom_image/custom_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../../../utilities/core/kpadding.dart';
import '../../../../../../utilities/core/kradius.dart';
import '../../../../../../utilities/custom_colors/custom_colors.dart';
import '../../../../../../utilities/theme/ktext_theme.dart';
import '../../../../user_service_partner_screen/user_service_partner_screen.dart';

class ServiceGridSection extends StatelessWidget {
  const ServiceGridSection({
    super.key,
    required this.services,
    this.crossAxisCount,
    this.showMoreButton = false,
    this.bgColor = CustomColors.dashboardGrey,
    this.onTap,
    this.margin,
    this.padding,
    this.imgColor,
    this.align,
  });

  final List<Map<String, String>> services;
  final int? crossAxisCount;
  final bool showMoreButton;
  final Color bgColor;
  final Color? imgColor;
  final Alignment? align;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding ?? KPadding.all15,
      margin: margin ?? KPadding.all5,
      decoration: BoxDecoration(
        color: bgColor,
      ),
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxisCount ?? 4,
            crossAxisSpacing: 10,
            mainAxisSpacing: 0,
            mainAxisExtent: 120.h),
        itemCount: showMoreButton ? (services.length + 1) : services.length,
        itemBuilder: (ctx, i) => InkWell(
          onTap: onTap ??
              () {
                Get.to(
                  () => UserServicePartnerScreen(
                    title: '${services[i]['label']}',
                  ),
                  transition: Transition.native,
                );
              },
          // onTap: onTap,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // showMoreButton
              //     ? i + 1 < (services.length + 1)
              //         ? CustomImage(
              //             img: '${services[i]['icon']}',
              //             height: 80.h,
              //             width: 80.w,
              //             borderRadius: kBorderRadius12,
              //           )
              //         : SizedBox(
              //             height: 80.h,
              //             width: 80.w,
              //             child: Center(
              //               child: Container(
              //                 height: 45.h,
              //                 width: 45.w,
              //                 decoration: const BoxDecoration(
              //                     color: CustomColors.black,
              //                     shape: BoxShape.circle),
              //                 child: Icon(
              //                   Icons.chevron_right_rounded,
              //                   size: 25.w,
              //                   color: CustomColors.white,
              //                 ),
              //               ),
              //             ),
              //           )
              Container(
                height: 70,
                width: 70,
                alignment: align ?? Alignment.bottomLeft,
                decoration: BoxDecoration(
                    color: imgColor ?? CustomColors.faintGrey,
                    borderRadius: kBorderRadius10),
                child: CustomImage(
                  height: 55,
                  width: 55,
                  img: '${services[i]['icon']}',
                  borderRadius: kBorderRadiusBLR12,
                ),
              ),
              const SizedBox(height: 5),
              Text(
                  showMoreButton
                      ? (i + 1 < (services.length + 1)
                          ? '${services[i]['label']}'
                          : 'Explore more')
                      : '${services[i]['label']}',
                  style: KText.r12w5,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center),
            ],
          ),
        ),
      ),
    );
  }
}
