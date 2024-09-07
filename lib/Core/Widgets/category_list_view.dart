import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../Feature/Data/Repositories/Models/product_model.dart';
import '../../Feature/Home/Presentation/Manager/All Products Cubit/all_products_cubit.dart';
import 'category_list_view_item.dart';

class CategoryListView extends StatefulWidget
{
  const CategoryListView({super.key, required this.categoryTitle, required this.searchedProduct,});
  final String searchedProduct;
  final String categoryTitle;

  @override
  State<CategoryListView> createState() => _CategoryListViewState();
}

class _CategoryListViewState extends State<CategoryListView>
{
  List<ProductModel> allProducts = [];

  @override
  void initState()
  {
    super.initState();
    BlocProvider.of<AllProductsCubit>(context).fetchAllProducts();
  }

  @override
  Widget build(BuildContext context)
  {
    return BlocConsumer<AllProductsCubit, AllProductsState>(
      listener: (context, state)
      {
        if(state is AllProductsSuccess)
        {
          allProducts.clear();
          allProducts = state.allProducts;
        }
      },

      builder: (context, state)
      {
        return SizedBox(
          height: 350.h,
          width: double.infinity,
          child: ListView.builder(
            itemCount: allProducts.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => allProducts.isNotEmpty ? (allProducts[index].category == widget.categoryTitle && allProducts[index].productName.toLowerCase().contains(widget.searchedProduct.toLowerCase()) ? ZoomIn(child: CategoryListViewItem(index: index, productModel: allProducts[index])) : const SizedBox.shrink()) : const SizedBox.shrink(),
          ),
        );
      },
    );
  }
}