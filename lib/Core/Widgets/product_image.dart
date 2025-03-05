import 'package:cached_network_image/cached_network_image.dart';
import 'package:cached_network_image_platform_interface/cached_network_image_platform_interface.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../Feature/Data/Repositories/Models/product_model.dart';

class ProductImage extends StatefulWidget
{
  const ProductImage({super.key, required this.index, required this.productModel,});
  final ProductModel productModel;
  final int index;

  @override
  State<ProductImage> createState() => _ProductImageState();
}

class _ProductImageState extends State<ProductImage>
{
  @override
  Widget build(BuildContext context)
  {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: CachedNetworkImage(
          height: 150.h,
          width: 150.w,
          imageUrl: widget.productModel.imageUrl[0],
          imageRenderMethodForWeb: ImageRenderMethodForWeb.HttpGet,
        ),
      ),
    );
  }
}