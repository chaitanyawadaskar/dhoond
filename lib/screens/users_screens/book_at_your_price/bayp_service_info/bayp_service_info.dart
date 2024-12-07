import 'package:dhoond/components/arrow_left_appbar.dart';
import 'package:dhoond/components/shadow_container.dart';
import 'package:dhoond/data/extensions/extensions.dart';
import 'package:dhoond/screens/users_screens/book_at_your_price/bayp_services_screen/components/bayp_service_card.dart';
import 'package:dhoond/utilities/core/kpadding.dart';
import 'package:dhoond/utilities/core/kradius.dart';
import 'package:dhoond/utilities/custom_colors/custom_colors.dart';
import 'package:dhoond/utilities/gap/gap.dart';
import 'package:dhoond/utilities/theme/ktext_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:get/get.dart';

class BaypServiceInfoScreen extends StatelessWidget {
  const BaypServiceInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: ArrowLeftAppbar(),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ShadowContainer(
              padding: KPadding.only(left: 12, right: 12, bottom: 5, top: 12),
              borderRadius: kBorderRadius10,
              border: kBorderAllFaintGrey,
              child: const BaypServiceCard(
                title: 'Switch & Socket installation',
                img: 'https://i.postimg.cc/DzVR7yPY/image-97.png',
                disableDotLine: true,
              ),
            ).mSymmetric(12),
            Text(
              'Included',
              style: KText.r20w7,
            ).marginOnly(left: 16, top: 20),
            Row(
              children: [
                Icon(
                  Ionicons.checkmark_circle,
                  color: CustomColors.bulletGreen2,
                  size: 25,
                ),
                Gap.width(),
                Text(
                  'Installation of one switch board',
                  style: KText.r16Grey,
                )
              ],
            ).mOnly(left: 16, top: 20),
            Row(
              children: [
                Icon(
                  Ionicons.checkmark_circle,
                  color: CustomColors.bulletGreen2,
                  size: 25,
                ),
                Gap.width(),
                Text(
                  'Post-service cleaning',
                  style: KText.r16Grey,
                )
              ],
            ).mOnly(left: 16, top: 5, bottom: 28),
            Divider(
              thickness: 4,
              color: CustomColors.faintGrey.withOpacity(0.5),
            ),
            Text('Please note', style: KText.r20w7)
                .marginOnly(left: 16, top: 20),
            Row(
              children: [
                Icon(
                  AntDesign.exclamationcircle,
                  color: CustomColors.fontGrey,
                  size: 24,
                ),
                Gap.width(),
                Text(
                  'Provide a ladder, if required',
                  style: KText.r16w4,
                )
              ],
            ).mOnly(left: 16, top: 20),
            Row(
              children: [
                Icon(
                  AntDesign.exclamationcircle,
                  color: CustomColors.fontGrey,
                  size: 24,
                ),
                Gap.width(),
                Text(
                  'Wiring of more than 2m will cost extra',
                  style: KText.r16w4,
                )
              ],
            ).mOnly(left: 16, top: 15),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  AntDesign.exclamationcircle,
                  color: CustomColors.fontGrey,
                  size: 24,
                ),
                Gap.width(),
                Expanded(
                  child: Text(
                    'Warranty doesn’t cover spare parts sourced by customers',
                    style: KText.r16w4,
                  ),
                )
              ],
            ).mOnly(left: 16, top: 15, bottom: 28),
            Divider(
              thickness: 4,
              color: CustomColors.faintGrey.withOpacity(0.5),
            ),
          ],
        ).mOnly(top: 17),
      ),
    );
  }
}
