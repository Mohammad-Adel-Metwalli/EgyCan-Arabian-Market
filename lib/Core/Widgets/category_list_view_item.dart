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
      padding: EdgeInsets.only(right: 5.w, left: 20.w),
      child: SizedBox(
        width: MediaQuery.sizeOf(context).width <= 500 ? 300.w : 420.w,
        child: Material(
          color: white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
            side: BorderSide(color: grey.shade200, width: 1.3),
          ),
          child: CategoryListViewItemBody(productModel: productModel, index: index),
        ),
      ),
    );
  }
}