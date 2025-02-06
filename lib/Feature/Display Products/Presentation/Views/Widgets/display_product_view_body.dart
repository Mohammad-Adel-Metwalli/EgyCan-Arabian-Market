import 'package:animate_do/animate_do.dart';
import 'package:egycan_app/Feature/Data/Repositories/Models/product_model.dart';
import 'package:egycan_app/Feature/Display%20Products/Presentation/Views/Widgets/products_list_view.dart';
import 'package:egycan_app/Feature/Display%20Products/Presentation/Views/Widgets/sub_category_drop_down.dart';
import 'package:flutter/material.dart';

import 'custom_search_bar.dart';

class DisplayProductViewBody extends StatefulWidget
{
  const DisplayProductViewBody({super.key, required this.categoryTitleAndProducts,});
  final Map<dynamic, dynamic> categoryTitleAndProducts;

  @override
  State<DisplayProductViewBody> createState() => _DisplayProductViewBodyState();
}

class _DisplayProductViewBodyState extends State<DisplayProductViewBody>
{
  String searchedProduct = '', chosenSubCategory = '';

  @override
  Widget build(BuildContext context)
  {
    List<ProductModel> allProducts = widget.categoryTitleAndProducts['products'];

    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: MediaQuery.sizeOf(context).height * 0.02),

          FadeInDownBig(child: CustomSearchBar(onChanged: (data) => setState(() => searchedProduct = data))),

          SizedBox(height: MediaQuery.sizeOf(context).height * 0.02),

          SubCategoryDropDown(
            products: allProducts,
            onChanged: (data) => setState(() => chosenSubCategory = data!),
          ),

          SizedBox(height: MediaQuery.sizeOf(context).height * 0.02),

          FadeInUpBig(child: ProductsListView(searchedProduct: searchedProduct, chosenSubCategory: chosenSubCategory, categoryTitle: widget.categoryTitleAndProducts['title'], allProducts: allProducts)),
        ],
      ),
    );
  }
}