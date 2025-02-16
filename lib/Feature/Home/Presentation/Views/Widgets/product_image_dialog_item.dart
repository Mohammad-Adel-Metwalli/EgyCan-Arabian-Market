import 'package:cached_network_image/cached_network_image.dart';
import 'package:cached_network_image_platform_interface/cached_network_image_platform_interface.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductImageDialogItem extends StatelessWidget
{
  const ProductImageDialogItem({super.key, required this.imageUrl,});
  final String imageUrl;

  @override
  Widget build(BuildContext context)
  {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Center(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: CachedNetworkImage(
            height: 250.h,
            width: 250.w,
            imageUrl: imageUrl,
            imageRenderMethodForWeb: ImageRenderMethodForWeb.HttpGet,
          ),
        ),
      ),
    );
  }
}