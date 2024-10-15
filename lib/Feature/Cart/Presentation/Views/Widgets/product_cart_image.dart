import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductCartImage extends StatelessWidget
{
  const ProductCartImage({super.key, required this.imageUrl,});
  final String imageUrl;

  @override
  Widget build(BuildContext context) => CachedNetworkImage(
    height: 200.h,
    width: 200.w,
    imageUrl: imageUrl,
  );
}
