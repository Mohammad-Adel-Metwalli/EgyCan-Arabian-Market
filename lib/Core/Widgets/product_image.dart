import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../Feature/Data/Repositories/Models/product_model.dart';

class ProductImage extends StatelessWidget
{
  const ProductImage({super.key, required this.index, required this.productModel,});
  final ProductModel productModel;
  final int index;

  @override
  Widget build(BuildContext context)
  {
    return Padding(
      padding: EdgeInsets.only(left: 10.w, right: 10.w, top: 10.h),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(25),
        child: CachedNetworkImage(
          height: 220.h,
          fit: BoxFit.cover,
          width: double.infinity,
          imageUrl: productModel.imagesUrls[0],
        ),
      ),
    );
  }
}