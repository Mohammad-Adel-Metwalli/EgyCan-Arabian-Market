import 'package:egycan_app/Feature/Data/Repositories/Models/product_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../Utils/constant_colors.dart';
import 'category_list_view_item_body.dart';

class CategoryListViewItem extends StatelessWidget
{
  const CategoryListViewItem({super.key, required this.index, required this.productModel,});
  final ProductModel productModel;
  final int index;

  @override
  Widget build(BuildContext context)
  {
    return Padding(
      padding: EdgeInsets.only(right: 5.w, left: 20.w, top: 5.h, bottom: 5.h),
      child: Container(
        width: MediaQuery.sizeOf(context).width <= 500 ? 300.w : 420.w,
        decoration: BoxDecoration(
          color: white,
          borderRadius: BorderRadius.circular(25),
          border: Border.all(color: grey.shade200, width: 1.3),
          boxShadow: [
            BoxShadow(
              color: grey.shade100,
              offset: Offset(0, 5.h)
            ),
          ],
        ),
        child: CategoryListViewItemBody(productModel: productModel, index: index),
      ),
    );
  }
}