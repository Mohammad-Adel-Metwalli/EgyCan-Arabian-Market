import 'package:cached_network_image/cached_network_image.dart';
import 'package:cached_network_image_platform_interface/cached_network_image_platform_interface.dart';
import 'package:egycan_app/Feature/Data/Repositories/Models/product_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductCartImage extends StatefulWidget
{
  const ProductCartImage({super.key, required this.productModel,});
  final ProductModel productModel;

  @override
  State<ProductCartImage> createState() => _ProductCartImageState();
}

class _ProductCartImageState extends State<ProductCartImage>
{
  @override
  Widget build(BuildContext context)
  {
    return ClipRRect(
      borderRadius: BorderRadius.circular(22),
      child: CachedNetworkImage(
        height: 150.h,
        width: 150.w,
        imageUrl: widget.productModel.imageUrl[0],
        imageRenderMethodForWeb: ImageRenderMethodForWeb.HttpGet,
      ),
    );
  }
}
