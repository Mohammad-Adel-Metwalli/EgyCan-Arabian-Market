import 'package:flutter/material.dart';
import '../../../../Data/Repositories/Models/product_model.dart';
import 'categories_tab_views_body.dart';

class CategoriesTabViews extends StatelessWidget
{
  const CategoriesTabViews({super.key, required this.tabController, required this.allCategories, required this.allProducts,});
  final TabController tabController;
  final List<String> allCategories;
  final List<ProductModel>? allProducts;

  @override
  Widget build(BuildContext context)
  {
    return Expanded(
      child: TabBarView(
        controller: tabController,
        children: List.generate(allCategories.length, (categoryIndex)
        {
          List<ProductModel>? categoryProducts = allProducts?.where((product) => product.category == allCategories[categoryIndex]).toList();

          return GridView.builder(
            shrinkWrap: true,
            itemCount: categoryProducts!.length,
            // physics: const NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: MediaQuery.sizeOf(context).width <= 500 ? 2 : 6, childAspectRatio: MediaQuery.sizeOf(context).width <= 500 ? 0.6 : (MediaQuery.sizeOf(context).width <= 1040 ? 0.45 : 0.7)),
            itemBuilder: (context, productIndex) => CategoriesTabViewsBody(categoryProducts: categoryProducts, productIndex: productIndex),
          );
        },),
      ),
    );
  }
}