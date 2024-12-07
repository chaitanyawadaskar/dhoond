import 'dart:async';
import 'package:dhoond/components/shadow_container.dart';
import 'package:dhoond/screens/users_screens/user_partner_detail_screen/components/partner_detail_app_bar.dart';
import 'package:dhoond/utilities/assets_paths/assets_paths.dart';
import 'package:dhoond/utilities/core/kpadding.dart';
import 'package:dhoond/utilities/core/kradius.dart';
import 'package:dhoond/utilities/core/ksizedbox.dart';
import 'package:dhoond/utilities/gap/gap.dart';
import 'package:dhoond/utilities/theme/ktext_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../components/service_user_detail_card.dart';
import 'section/bio_photos_and_videos.dart';
import '../../../components/map_view.dart';

class UserPartnerDetailScreen extends StatefulWidget {
  const UserPartnerDetailScreen({
    super.key,
  });
  @override
  State<UserPartnerDetailScreen> createState() =>
      _UserPartnerDetailScreenState();
}

class _UserPartnerDetailScreenState extends State<UserPartnerDetailScreen> {
  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();

  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(21.1280447, 79.0079838),
    zoom: 14.4746,
  );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBoxHeight(
                height: 20,
              ),
              const PartnerDetailAppBar(),
              const SizedBoxHeight(),
              MapView(kGooglePlex: _kGooglePlex, controller: _controller),
              const SizedBoxHeight(
                height: 16,
              ),
              Padding(
                padding: KPadding.symmetric(16, 0),
                child: const ServiceUserDetailCard(
                  inProfile: true,
                ),
              ),
              Container(
                margin: KPadding.only(left: 8, right: 8, top: 10),
                child: Column(
                  children: [
                    // ShadowContainer(
                    //     padding: KPadding.symmetric(10, 9),
                    //     borderRadius: kBorderRadius10,
                    //     child: Row(
                    //       crossAxisAlignment: CrossAxisAlignment.start,
                    //       children: [
                    //         Padding(
                    //           padding: KPadding.only(top: 4),
                    //           child: Icon(
                    //             Octicons.check_circle_fill,
                    //             size: 14.h,
                    //           ),
                    //         ),
                    //         Gap.width(5),
                    //         Column(
                    //           crossAxisAlignment: CrossAxisAlignment.start,
                    //           children: [
                    //             Text(
                    //               'Waiting for Partner’s Request',
                    //               style: KText.r14Bold,
                    //             ),
                    //             Text(
                    //               'We will let you know when Partner accepts the offer.',
                    //               style: KText.r13Grey,
                    //             )
                    //           ],
                    //         )
                    //       ],
                    //     )),
                    // SizedBoxHeight(
                    //   height: 20,
                    // ),
                    BioPhotosAndVideos(),
                    SizedBoxHeight(
                      height: 20,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
