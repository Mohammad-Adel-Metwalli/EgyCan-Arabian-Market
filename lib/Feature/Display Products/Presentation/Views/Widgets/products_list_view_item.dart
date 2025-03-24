import 'package:egycan_app/Feature/Display%20Products/Presentation/Views/Widgets/products_list_view_item_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../Core/Utils/constant_colors.dart';
import '../../../../Data/Repositories/Models/product_model.dart';

class ProductsListViewItem extends StatelessWidget
{
  const ProductsListViewItem({super.key, required this.product, required this.index, required this.categoryTitle,});
  final ProductModel product;
  final String categoryTitle;
  final int index;

  @override
  Widget build(BuildContext context)
  {
    return product.category.trim() == categoryTitle.trim() ? Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
      child: Container(
        decoration: BoxDecoration(
          color: white,
          borderRadius: BorderRadius.circular(25),
          border: Border.all(color: grey.shade200, width: 1.3),
          boxShadow: [
            BoxShadow(
              color: grey.shade200,
              offset: Offset(0, 4.h),
            ),
          ],
        ),
        child: ProductsListViewItemBody(key: ValueKey(product.imageUrl), product: product, categoryTitle: categoryTitle, index: index),
      ),
    ) : const SizedBox.shrink();
  }
}