import 'package:dhoond/utilities/core/kpadding.dart';
import 'package:dhoond/utilities/core/ksizedbox.dart';
import 'package:flutter/material.dart';

import '../../section/photos_and_videos_grid.dart';
import 'components/partner_photos_videos_app_bar.dart';

class PartnerPhotosVideosScreen extends StatefulWidget {
  const PartnerPhotosVideosScreen({
    super.key,
  });
  @override
  State<PartnerPhotosVideosScreen> createState() =>
      _PartnerPhotosVideosScreenState();
}

class _PartnerPhotosVideosScreenState extends State<PartnerPhotosVideosScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const SizedBoxHeight(
              height: 20,
            ),
            const PartnerPhotosVideoAppBar(
              title: 'Partner Photos & Videos',
            ),
            Padding(
              padding: KPadding.horizontal15,
              child: const Column(
                children: [
                  SizedBoxHeight(
                    height: 20,
                  ),
                  PhotosAndVideosGrid(),
                  SizedBoxHeight(),
                  PhotosAndVideosGrid(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
