import 'package:cached_network_image/cached_network_image.dart';
import 'package:cached_network_image_platform_interface/cached_network_image_platform_interface.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../Data/Repositories/Models/product_model.dart';

class CustomImagesListView extends StatelessWidget
{
  const CustomImagesListView({super.key, required this.productModel,});
  final ProductModel productModel;

  @override
  Widget build(BuildContext context)
  {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      itemCount: productModel.imageUrl.length,
      separatorBuilder: (context, index) => SizedBox(width: 20.w),
      itemBuilder: (context, index) => ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: CachedNetworkImage(
          height: 200.h,
          imageUrl: productModel.imageUrl[index],
          imageRenderMethodForWeb: ImageRenderMethodForWeb.HttpGet,
        ),
      ),
    );
  }
}