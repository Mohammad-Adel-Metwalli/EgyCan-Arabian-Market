import 'package:egycan_app/Core/Utils/styles.dart';
import 'package:egycan_app/Core/Widgets/show_more_button.dart';
import 'package:flutter/material.dart';
import '../../../../../Core/Widgets/custom_product_single_image.dart';
import '../../../../Data/Repositories/Models/product_model.dart';

class ProductsListViewItemBody extends StatelessWidget
{
  const ProductsListViewItemBody({super.key, required this.allProducts, required this.categoryTitle, required this.index,});
  final List<ProductModel> allProducts;
  final String categoryTitle;
  final int index;

  @override
  Widget build(BuildContext context)
  {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: CustomProductSingleImage(productModel: allProducts[index], height: 300),
        ),

        Text(allProducts[index].productName, style: Styles.styleOfTitleBlack, textAlign: TextAlign.center),

        SizedBox(height: MediaQuery.sizeOf(context).height * 0.02),

        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ShowMoreButton(index: index, productModel: allProducts[index]),
        ),
      ],
    );
  }
}