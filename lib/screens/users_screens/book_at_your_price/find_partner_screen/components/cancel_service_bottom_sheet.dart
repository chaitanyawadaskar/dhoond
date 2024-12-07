import 'package:customize_button/customize_button.dart';
import 'package:dhoond/utilities/core/kpadding.dart';
import 'package:dhoond/utilities/custom_colors/custom_colors.dart';
import 'package:dhoond/utilities/theme/ktext_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../../../../../utilities/core/kboxshadow.dart';
import '../../../../../utilities/core/kradius.dart';
import '../../../../../utilities/gap/gap.dart';

class CancelServiceBottomSheet extends StatelessWidget {
  const CancelServiceBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    var list = [
      {
        'icon': 'https://i.postimg.cc/X7yHw0Yx/Vector.png',
        'title': 'Partner not getting closer'
      },
      {
        'icon': 'https://i.postimg.cc/TPPH55L5/Vector-1.png',
        'title': 'Partner arrived early'
      },
      {
        'icon': 'https://i.postimg.cc/prK0MD74/Vector-2.png',
        'title': 'Could not find partner'
      },
      {
        'icon': 'https://i.postimg.cc/fb3fhcSC/Vector-3.png',
        'title': 'Wait time was too long'
      },
      {
        'icon': 'https://i.postimg.cc/KzSBSd2c/Vector-4.png',
        'title': 'Partner demanded more than agreed amount.'
      },
      {'icon': 'https://i.postimg.cc/QNS90BHd/Vector-5.png', 'title': 'Other'},
    ];
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          decoration: BoxDecoration(
              color: CustomColors.white,
              borderRadius: kBorderRadius10,
              boxShadow: KBoxShadow.faintGrey),
          child: Column(
            children: [
              Padding(
                padding: KPadding.all20,
                child: Text(
                  'Cancel service?',
                  style: KText.r20,
                ),
              ),
              Divider(
                thickness: 2,
                color: CustomColors.grey,
              ),
              Gap.height(20),
              Row(
                children: [
                  Container(
                    margin: KPadding.horizontal20,
                    width: Get.width * 0.8,
                    child: Text(
                      'Cancel your service with Shubham Raut?',
                      style: KText.r20Bold,
                    ),
                  ),
                ],
              ),
              Gap.height(25),
              ListView.separated(
                itemBuilder: (context, index) => GestureDetector(
                  onTap: () {
                    Get.close(2);
                  },
                  child: Padding(
                    padding: KPadding.horizontal20,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.network(
                          '${list[index]['icon']}',
                          height: 15,
                        ),
                        Gap.width(),
                        Flexible(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '${list[index]['title']}',
                                style: KText.r16,
                              ),
                              Gap.height(),
                              Visibility(
                                visible: index != 5,
                                child: Divider(
                                  thickness: 1,
                                  color: CustomColors.grey,
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                itemCount: list.length,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                separatorBuilder: (BuildContext context, int index) {
                  return Gap.height();
                },
              ),
              Gap.height(),
              Padding(
                padding: KPadding.horizontal20,
                child: CustomizedButton(
                  onTap: () {
                    Get.back();
                  },
                  text: 'Keep my service',
                  fontStyle: KText.r18w5White,
                  backgroundColor: CustomColors.black,
                ),
              ),
              Gap.height(),
            ],
          ),
        )
      ],
    );
  }
}
