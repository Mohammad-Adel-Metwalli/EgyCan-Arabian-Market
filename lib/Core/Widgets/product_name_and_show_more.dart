import 'package:egycan_app/Core/Widgets/product_name.dart';
import 'package:egycan_app/Core/Widgets/show_more_button.dart';
import 'package:egycan_app/Feature/Data/Repositories/Models/product_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductNameAndShowMore extends StatelessWidget
{
  const ProductNameAndShowMore({super.key, required this.index, required this.productModel,});
  final ProductModel productModel;
  final int index;

  @override
  Widget build(BuildContext context)
  {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ProductName(productName: productModel.productName),

        Padding(
          padding: EdgeInsets.symmetric(horizontal: 50.w),
          child: ShowMoreButton(productModel: productModel, index: index),
        ),
      ],
    );
  }
}