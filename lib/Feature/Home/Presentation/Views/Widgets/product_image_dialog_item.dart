import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductImageDialogItem extends StatelessWidget
{
  const ProductImageDialogItem({super.key, required this.imagesUrls, required this.index,});
  final List<dynamic> imagesUrls;
  final int index;

  @override
  Widget build(BuildContext context)
  {
    return ClipRRect(
      borderRadius: BorderRadius.circular(25),
      child: CachedNetworkImage(
        fit: BoxFit.contain,
        imageUrl: imagesUrls[index],
        height: MediaQuery.sizeOf(context).width <= 500 ? 140.h : 250.h,
        width: MediaQuery.sizeOf(context).width <= 500 ? 300.w : 425.w,
      ),
    );
  }
}