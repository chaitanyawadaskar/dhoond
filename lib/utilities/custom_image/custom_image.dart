import 'package:dhoond/utilities/loader/shimmer_loader/shimmer_loader.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

import '../constant/constant.dart';
import '../core/kradius.dart';
import '../custom_colors/custom_colors.dart';

class CustomImage extends StatelessWidget {
  const CustomImage(
      {super.key,
      required this.img,
      this.width,
      this.height,
      this.borderRadius,
      this.margin,
      this.padding,
      this.imageType = ImageType.network,
      this.onTap,
      this.shape = BoxShape.rectangle,
      this.color});
  final dynamic img;
  final double? width;
  final double? height;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final BorderRadiusGeometry? borderRadius;
  final ImageType imageType;
  final VoidCallback? onTap;
  final BoxShape shape;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return imageType != ImageType.network
        ? GestureDetector(
            onTap: onTap,
            child: Container(
              width: width,
              height: height,
              margin: margin,
              padding: padding,
              decoration: BoxDecoration(
                borderRadius: borderRadius,
                color: color,
                shape: shape,
                image: imageType == ImageType.asset
                    ? DecorationImage(
                        image: AssetImage(img),
                        fit: BoxFit.fill,
                      )
                    : DecorationImage(
                        image: FileImage(img),
                        fit: BoxFit.fill,
                      ),
              ),
            ),
          )
        : CachedNetworkImage(
            imageUrl: img.contains('http') ? img : '$imgPath$img',
            width: width,
            height: height,
            imageBuilder: (context, imageProvider) => GestureDetector(
              onTap: onTap,
              child: Container(
                width: width,
                height: height,
                margin: margin,
                padding: padding,
                decoration: BoxDecoration(
                  borderRadius: borderRadius,
                  color: color,
                  shape: shape,
                  image: DecorationImage(
                    image: imageProvider,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            placeholder: (context, url) => ShimmerLoader(
              child: Container(
                width: width,
                height: height,
                margin: margin,
                padding: padding,
                decoration: BoxDecoration(
                    borderRadius: kBorderRadius12, color: CustomColors.white),
              ),
            ),
            errorWidget: (context, url, error) => const Icon(
              Icons.error,
              color: CustomColors.black,
            ),
          );
  }
}