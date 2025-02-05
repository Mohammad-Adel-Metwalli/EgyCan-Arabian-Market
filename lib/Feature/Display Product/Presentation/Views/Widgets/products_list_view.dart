import 'package:egycan_app/Feature/Display%20Product/Presentation/Views/Widgets/products_list_view_item.dart';
import '../../../../Data/Repositories/Models/product_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ProductsListView extends StatefulWidget
{
  const ProductsListView({super.key, required this.searchedProduct, required this.chosenSubCategory, required this.categoryTitle, required this.allProducts,});
  final String searchedProduct, chosenSubCategory, categoryTitle;
  final List<ProductModel> allProducts;

  @override
  State<ProductsListView> createState() => _ProductsListViewState();
}

class _ProductsListViewState extends State<ProductsListView>
{
  List<ProductModel> allProducts = [];

  @override
  Widget build(BuildContext context)
  {
    allProducts = widget.allProducts.where((product)
    {
      final matchesSubCategory = widget.chosenSubCategory.isEmpty || product.subCategory == widget.chosenSubCategory;
      final matchesSearch = widget.searchedProduct.isEmpty || product.productName.toLowerCase().contains(widget.searchedProduct.toLowerCase());

      return matchesSubCategory && matchesSearch;
    }).toList();

    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: widget.searchedProduct == '' && widget.chosenSubCategory == '' ? widget.allProducts.length : allProducts.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: MediaQuery.sizeOf(context).width <= 500 ? 2 : 6, childAspectRatio: MediaQuery.sizeOf(context).width <= 500 ? 0.6 : (MediaQuery.sizeOf(context).width <= 1040 ? 0.45 : 0.7)),
      itemBuilder: (context, index) => widget.searchedProduct == '' && widget.chosenSubCategory == '' ? ProductsListViewItem(categoryTitle: widget.categoryTitle, allProducts: widget.allProducts, index: index) : (allProducts[index].productName.toLowerCase().contains(widget.searchedProduct.toLowerCase()) && allProducts[index].subCategory.contains(widget.chosenSubCategory) ? ProductsListViewItem(categoryTitle: widget.categoryTitle, allProducts: allProducts, index: index) : const SizedBox.shrink()),
    );
  }
}