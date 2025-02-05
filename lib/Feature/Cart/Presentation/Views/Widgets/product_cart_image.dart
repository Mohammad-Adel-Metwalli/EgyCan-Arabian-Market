import 'package:egycan_app/Feature/Data/Repositories/Models/product_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import '../../../../../Core/Utils/constant_colors.dart';

class ProductCartImage extends StatelessWidget
{
  const ProductCartImage({super.key, required this.productModel,});
  final ProductModel productModel;

  @override
  Widget build(BuildContext context)
  {
    return productModel.imageUrl == '' || !(productModel.imageUrl.contains('iframe')) ? Icon(Icons.image_not_supported_outlined, color: red, size: 80.h) : ClipRRect(
      borderRadius: BorderRadius.circular(22),
      child: AbsorbPointer(absorbing: true, child: HtmlWidget(productModel.imageUrl, enableCaching: true)),
    );
  }
}
