import 'package:egycan_app/Core/Widgets/product_image.dart';
import 'package:egycan_app/Core/Widgets/product_name_and_show_more.dart';
import 'package:flutter/material.dart';
import '../../Feature/Data/Repositories/Models/product_model.dart';

class CategoryListViewItemBody extends StatelessWidget
{
  const CategoryListViewItemBody({super.key, required this.index, required this.productModel,});
  final ProductModel productModel;
  final int index;

  @override
  Widget build(BuildContext context)
  {
    return Column(
      children: [
        ProductImage(productModel: productModel, index: index),

        ProductNameAndShowMore(index: index, productModel: productModel),
      ],
    );
  }
}