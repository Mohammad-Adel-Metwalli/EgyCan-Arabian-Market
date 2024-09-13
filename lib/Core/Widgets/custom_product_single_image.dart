import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../Feature/Data/Repositories/Models/product_model.dart';

class CustomProductSingleImage extends StatelessWidget
{
  const CustomProductSingleImage({super.key, required this.productModel, required this.height,});
  final ProductModel productModel;
  final double height;

  @override
  Widget build(BuildContext context)
  {
    return ClipRRect(
      borderRadius: BorderRadius.circular(25),
      child: CachedNetworkImage(
        height: height.h,
        width: double.infinity,
        fit: BoxFit.contain,
        imageUrl: productModel.imagesUrls[0],
      ),
    );
  }
}