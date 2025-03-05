import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../Core/Utils/styles.dart';
import '../../../../../Core/Widgets/custom_product_single_image.dart';
import '../../../../../Core/Widgets/show_more_button.dart';
import '../../../../Data/Repositories/Models/product_model.dart';

class CategoriesTabViewsBody extends StatelessWidget
{
  const CategoriesTabViewsBody({super.key, required this.categoryProducts, required this.productIndex,});
  final List<ProductModel>? categoryProducts;
  final int productIndex;

  @override
  Widget build(BuildContext context)
  {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomProductSingleImage(key: ValueKey(categoryProducts![productIndex].imageUrl),  productModel: categoryProducts![productIndex], height: MediaQuery.sizeOf(context).width <= 1040 ? 175.h : 300.h, width: double.infinity),

        SizedBox(
          width: double.infinity,
          child: Text(categoryProducts![productIndex].productName, style: MediaQuery.sizeOf(context).width <= 500 ? Styles.styleOfTitleBlack12 : Styles.styleOfTitleBlack18, textAlign: TextAlign.center, overflow: TextOverflow.ellipsis, maxLines: 1),
        ),

        Text(categoryProducts![productIndex].subCategory, textAlign: TextAlign.center),

        SizedBox(height: MediaQuery.sizeOf(context).height * 0.02),

        Padding(
          padding: MediaQuery.sizeOf(context).width <= 500 ? EdgeInsets.symmetric(horizontal: 20.w) : const EdgeInsets.all(8.0),
          child: ShowMoreButton(index: productIndex, productModel: categoryProducts![productIndex], height: 40),
        ),
      ],
    );
  }
}