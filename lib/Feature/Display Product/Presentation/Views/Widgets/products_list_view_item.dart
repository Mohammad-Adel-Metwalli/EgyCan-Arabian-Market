import 'package:egycan_app/Feature/Display%20Product/Presentation/Views/Widgets/products_list_view_item_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../Core/Utils/constant_colors.dart';
import '../../../../Data/Repositories/Models/product_model.dart';

class ProductsListViewItem extends StatelessWidget
{
  const ProductsListViewItem({super.key, required this.allProducts, required this.index, required this.categoryTitle,});
  final List<ProductModel> allProducts;
  final String categoryTitle;
  final int index;

  @override
  Widget build(BuildContext context)
  {
    return allProducts[index].category == categoryTitle ? Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
      child: Container(
        decoration: BoxDecoration(
          color: white,
          borderRadius: MediaQuery.sizeOf(context).width <= 500 ? BorderRadius.circular(15) : BorderRadius.circular(25),
          border: Border.all(color: pyramidsColor, width: 3.5),
        ),

        child: ProductsListViewItemBody(allProducts: allProducts, categoryTitle: categoryTitle, index: index),
      ),
    ) : const SizedBox.shrink();
  }
}