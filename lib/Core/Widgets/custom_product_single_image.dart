import 'package:cached_network_image/cached_network_image.dart';
import 'package:cached_network_image_platform_interface/cached_network_image_platform_interface.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../Feature/Data/Repositories/Models/product_model.dart';

class CustomProductSingleImage extends StatefulWidget
{
  const CustomProductSingleImage({super.key, required this.productModel, required this.height, required this.width,});
  final ProductModel productModel;
  final double height, width;

  @override
  State<CustomProductSingleImage> createState() => _CustomProductSingleImageState();
}

class _CustomProductSingleImageState extends State<CustomProductSingleImage>
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
          imageUrl: widget.productModel.imageUrl,
          imageRenderMethodForWeb: ImageRenderMethodForWeb.HttpGet,
        ),
      ),
    );
  }
}