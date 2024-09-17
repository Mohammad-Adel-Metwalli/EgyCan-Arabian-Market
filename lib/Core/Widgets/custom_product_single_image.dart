import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../Feature/Data/Repositories/Models/product_model.dart';

class CustomProductSingleImage extends StatelessWidget
{
  const CustomProductSingleImage({super.key, required this.productModel, required this.height, required this.width,});
  final ProductModel productModel;
  final double height, width;

  @override
  Widget build(BuildContext context)
  {
    return ClipRRect(
      borderRadius: MediaQuery.sizeOf(context).width <= 500 ? BorderRadius.circular(0) : BorderRadius.circular(25),
      child: CachedNetworkImage(
        height: height.h,
        width: width.w,
        fit: BoxFit.contain,
        imageUrl: productModel.imagesUrls[0],
      ),
    );
  }
}