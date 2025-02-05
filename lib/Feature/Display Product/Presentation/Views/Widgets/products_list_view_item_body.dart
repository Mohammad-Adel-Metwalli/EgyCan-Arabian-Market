import 'package:egycan_app/Core/Utils/styles.dart';
import 'package:egycan_app/Core/Widgets/show_more_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomProductSingleImage(productModel: allProducts[index], height: MediaQuery.sizeOf(context).width <= 1040 ? 175.h : 300.h, width: double.infinity),

        SizedBox(
          width: double.infinity,
          child: Text(allProducts[index].productName, style: MediaQuery.sizeOf(context).width <= 500 ? Styles.styleOfTitleBlack12 : Styles.styleOfTitleBlack18, textAlign: TextAlign.center, overflow: TextOverflow.ellipsis, maxLines: 1),
        ),

        Text(allProducts[index].subCategory, textAlign: TextAlign.center),

        SizedBox(height: MediaQuery.sizeOf(context).height * 0.02),

        Padding(
          padding: MediaQuery.sizeOf(context).width <= 500 ? EdgeInsets.symmetric(horizontal: 20.w) : const EdgeInsets.all(8.0),
          child: ShowMoreButton(index: index, productModel: allProducts[index], height: 40),
        ),
      ],
    );
  }
}