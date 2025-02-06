import 'package:egycan_app/Core/Utils/constants.dart';
import 'package:egycan_app/Feature/Data/Repositories/Models/product_model.dart';
import 'package:egycan_app/Feature/Home/Presentation/Views/Widgets/show_products_of_category.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../../Core/Widgets/category_list_view.dart';
import '../../../../../Core/Widgets/category_title.dart';

class AllCategoriesAndProductsItem extends StatefulWidget
{
  const AllCategoriesAndProductsItem({super.key, required this.categoriesTitles, required this.index, this.allRows, required this.allProducts,});
  final List<String>? categoriesTitles;
  final Map<String, List<ProductModel>> allProducts;
  final List<List<String>>? allRows;
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
              onPressed: () => GoRouter.of(context).replace(
                displayProductsViewPath,
                extra: {
                  'title': widget.categoriesTitles?[widget.index],
                  'products': widget.allProducts[widget.categoriesTitles?[widget.index]],
                },
              ),
            ),
          ],
        ),

        SizedBox(height: MediaQuery.sizeOf(context).height * 0.035),

        CategoryListView(categoryTitle: widget.categoriesTitles![widget.index], allProducts: widget.allProducts[widget.categoriesTitles![widget.index]]?? []),

        SizedBox(height: MediaQuery.sizeOf(context).height * 0.035),
      ],
    );
  }
}