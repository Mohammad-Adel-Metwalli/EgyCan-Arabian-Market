import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../Feature/Data/Repositories/Models/product_model.dart';
import 'category_list_view_item.dart';

class CategoryListView extends StatefulWidget
{
  const CategoryListView({super.key, required this.categoryTitle, required this.allProducts,});
  final List<ProductModel> allProducts;
  final String categoryTitle;

  @override
  State<CategoryListView> createState() => _CategoryListViewState();
}

class _CategoryListViewState extends State<CategoryListView>
{
  @override
  Widget build(BuildContext context)
  {
    return SizedBox(
      height: 350.h,
      width: double.infinity,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: widget.allProducts.length,
        itemBuilder: (context, index) => ZoomIn(child: CategoryListViewItem(index: index, productModel: widget.allProducts[index])),
      ),
    );
  }
}