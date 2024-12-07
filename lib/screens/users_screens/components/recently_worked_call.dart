import 'package:dhoond/utilities/gap/gap.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../utilities/core/kpadding.dart';
import '../../../utilities/core/kradius.dart';
import '../../../utilities/custom_colors/custom_colors.dart';
import '../../../utilities/theme/ktext_theme.dart';
import '../user_location_confirmation_screen/user_location_confirmation_screen.dart';

class RecentlyWorkedAndCall extends StatefulWidget {
  const RecentlyWorkedAndCall({
    super.key,
    this.inProfile = false,
  });
  final bool inProfile;

  @override
  State<RecentlyWorkedAndCall> createState() => _RecentlyWorkedAndCallState();
}

class _RecentlyWorkedAndCallState extends State<RecentlyWorkedAndCall> {
  bool openDropdown = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  openDropdown = !openDropdown;
                });
              },
              child: Row(
                children: [
                  Text(
                    'Recently worked at - ',
                    style: KText.r12ComfortaaW7,
                  ),
                  SizedBox(
                    width: 100.w,
                    child: Text(
                      'AMEC mobility Pvt Ltd.',
                      style: KText.r12,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  if (!widget.inProfile)
                    Icon(
                      openDropdown
                          ? Icons.keyboard_arrow_up_rounded
                          : Icons.keyboard_arrow_down_rounded,
                      size: 20.w,
                    ),
                ],
              ),
            ),
            Visibility(
              visible: openDropdown || widget.inProfile,
              child: Padding(
                padding: KPadding.vertical5,
                child: Text.rich(TextSpan(children: [
                  TextSpan(text: 'Shifts - ', style: KText.r12w5),
                  TextSpan(text: 'Available for day', style: KText.r12w4)
                ])),
              ),
            ),
            Visibility(
              visible: openDropdown || widget.inProfile,
              child: Text.rich(TextSpan(children: [
                TextSpan(text: 'Preferred this profile - ', style: KText.r12w5),
                TextSpan(text: '144+ customers', style: KText.r12w4)
              ])),
            ),
          ],
        ),
        const Spacer(),
        InkWell(
          onTap: () {
            // Functions.makeACall(number: '9021510318');
            Get.to(
              () => const UserLocationConfirmationScreen(),
              transition: Transition.native,
            );
          },
          child: Container(
            padding: KPadding.only(left: 6),
            decoration: BoxDecoration(
                color: CustomColors.black, borderRadius: kBorderRadius20),
            child: Row(
              children: [
                if (widget.inProfile) Gap.width(8),
                Text(
                  'Call Now',
                  style: KText.r10ComfortaaWhite,
                ),
                if (widget.inProfile) Gap.width(5),
                Icon(
                  CupertinoIcons.phone_circle,
                  color: CustomColors.white,
                  size: widget.inProfile ? 30.w : 22.w,
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
