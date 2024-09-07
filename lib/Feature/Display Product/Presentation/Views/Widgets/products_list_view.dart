import 'package:egycan_app/Feature/Display%20Product/Presentation/Views/Widgets/products_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../../../../Data/Repositories/Models/product_model.dart';

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
  @override
  Widget build(BuildContext context)
  {
    return MediaQuery.sizeOf(context).width <= 500 ? ListView.builder(
      itemCount: widget.allProducts.length,
      itemBuilder: (context, index) => widget.searchedProduct == '' && widget.chosenSubCategory == '' ? ProductsListViewItem(categoryTitle: widget.categoryTitle, allProducts: widget.allProducts, index: index) : (widget.allProducts[index].productName.toLowerCase().contains(widget.searchedProduct.toLowerCase()) || widget.allProducts[index].subCategory.contains(widget.chosenSubCategory) ? ProductsListViewItem(categoryTitle: widget.categoryTitle, allProducts: widget.allProducts, index: index) : const SizedBox.shrink()),
    ) : GridView.builder(
      itemCount: widget.allProducts.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3, mainAxisSpacing: 2, crossAxisSpacing: 2, childAspectRatio: 1.1),
      itemBuilder: (context, index) => widget.searchedProduct == '' && widget.chosenSubCategory == '' ? ProductsListViewItem(categoryTitle: widget.categoryTitle, allProducts: widget.allProducts, index: index) : (widget.allProducts[index].productName.toLowerCase().contains(widget.searchedProduct.toLowerCase()) || widget.allProducts[index].subCategory.contains(widget.chosenSubCategory) ? ProductsListViewItem(categoryTitle: widget.categoryTitle, allProducts: widget.allProducts, index: index) : const SizedBox.shrink()),
    );
  }
}