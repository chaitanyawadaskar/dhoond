import 'dart:io';

import 'package:dhoond/data/functions/common_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';

import '../../../../utilities/core/kpadding.dart';
import '../../../../utilities/core/kradius.dart';
import '../../../../utilities/custom_colors/custom_colors.dart';
import '../../../../utilities/gap/gap.dart';
import '../../../../utilities/theme/ktext_theme.dart';
import '../../../common_screens/permission_access_screen/permission_access_screen.dart';

class ImageSelectAlert extends StatelessWidget {
  const ImageSelectAlert({
    super.key,
    required this.onCameraGalleryTap,
  });
  final Function(File?) onCameraGalleryTap;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: CustomColors.white,
      elevation: 0,
      contentPadding: KPadding.all20,
      shape: RoundedRectangleBorder(borderRadius: kBorderRadius12),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Select Image',
            style: KText.r20Bold,
          ),
          Gap.height(20),
          ListTile(
              onTap: () async {
                var file = await Functions.pickImage(ImageSource.gallery);
                onCameraGalleryTap(file);
              },
              leading: Text(
                'Select from gallary',
                style: KText.r18,
              )),
          ListTile(
              onTap: () async {
                var permission = await Permission.camera.isGranted;
                if (permission) {
                  var file = await Functions.pickImage(ImageSource.camera);
                  onCameraGalleryTap(file);
                } else {
                  Get.to(() => const PermissionAccessScreen());
                }
              },
              leading: Text(
                'Take a photo',
                style: KText.r18,
              )),
        ],
      ),
    );
  }
}
