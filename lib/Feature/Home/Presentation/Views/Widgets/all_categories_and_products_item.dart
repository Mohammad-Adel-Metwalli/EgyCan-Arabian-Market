import 'package:egycan_app/Core/Utils/constants.dart';
import 'package:egycan_app/Feature/Data/Repositories/Models/product_model.dart';
import 'package:egycan_app/Feature/Home/Presentation/Views/Widgets/show_products_of_category.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../../Core/Widgets/category_list_view.dart';
import '../../../../../Core/Widgets/category_title.dart';

class AllCategoriesAndProductsItem extends StatefulWidget
{
  const AllCategoriesAndProductsItem({super.key, required this.categoriesTitles, required this.index, required this.allProducts,});
  final List<String>? categoriesTitles;
  final List<ProductModel>? allProducts;
  final int index;

  @override
  State<AllCategoriesAndProductsItem> createState() => _AllCategoriesAndProductsItemState();
}

class _AllCategoriesAndProductsItemState extends State<AllCategoriesAndProductsItem>
{
  @override
  Widget build(BuildContext context)
  {
    return Column(
      children: [
        Row(
          children: [
            CategoryTitle(title: widget.categoriesTitles![widget.index]),

            SizedBox(width: MediaQuery.sizeOf(context).width * 0.005),

            ShowProductsOfCategory(
              onPressed: ()
              {
                List<ProductModel>? filterCategoryProducts = widget.allProducts?.where((product) => product.category.trim() == widget.categoriesTitles![widget.index].trim()).toList();

                GoRouter.of(context).push(
                  displayProductsViewPath,
                  extra: {
                    'title': widget.categoriesTitles?[widget.index],
                    'products': filterCategoryProducts,
                  },
                );
              },
            ),
          ],
        ),

        SizedBox(height: MediaQuery.sizeOf(context).height * 0.035),

        CategoryListView(categoryTitle: widget.categoriesTitles![widget.index], allProducts: widget.allProducts!.where((product) => product.category.trim() == widget.categoriesTitles![widget.index].trim()).toList()),

        SizedBox(height: MediaQuery.sizeOf(context).height * 0.035),
      ],
    );
  }
}