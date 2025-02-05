import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import '../../Feature/Data/Repositories/Models/product_model.dart';
import '../Utils/constant_colors.dart';

class ProductImage extends StatelessWidget
{
  const ProductImage({super.key, required this.index, required this.productModel,});
  final ProductModel productModel;
  final int index;

  @override
  Widget build(BuildContext context)
  {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: productModel.imageUrl == '' || !(productModel.imageUrl.contains('iframe')) ? Icon(Icons.image_not_supported_outlined, color: red, size: 80.h) : AbsorbPointer(absorbing: true, child: HtmlWidget(productModel.imageUrl, enableCaching: true)),
      ),
    );
  }
}