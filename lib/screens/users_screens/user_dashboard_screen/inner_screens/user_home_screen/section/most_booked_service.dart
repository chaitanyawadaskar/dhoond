import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../../../components/most_booked_service_card.dart';
import '../../../../../../utilities/assets_paths/assets_paths.dart';
import '../../../../../../utilities/core/ksizedbox.dart';
import '../../../../../../utilities/theme/ktext_theme.dart';

class MostBookedService extends StatelessWidget {
  const MostBookedService({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> list = [
      {
        'image': ImagePath.applianceTech,
        'title': 'Electrician',
        'rating': '4.2',
        'count': '220K'
      },
      {
        'image': ImagePath.carpenter,
        'title': 'Carpenter',
        'rating': '4.2',
        'count': '120K'
      },
      {
        'image': ImagePath.blacksmith,
        'title': 'Blacksmith',
        'rating': '4.2',
        'count': '140K'
      },
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'MOST BOOKED SERVICES',
          style: KText.r20Comfortaa,
        ),
        SizedBox(
            height: 200.h,
            width: Get.width,
            child: ListView.separated(
              itemBuilder: (context, index) {
                return MostBookedServiceCard(
                    image: '${list[index]['image']}',
                    title: '${list[index]['title']}',
                    rating: '${list[index]['rating']}',
                    noOfVote: '${list[index]['count']}');
              },
              itemCount: list.length,
              scrollDirection: Axis.horizontal,
              separatorBuilder: (BuildContext context, int index) {
                return const SizedBoxWidth();
              },
            ))
      ],
    );
  }
}
