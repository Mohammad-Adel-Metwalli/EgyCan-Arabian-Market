import 'package:egycan_app/Core/Utils/constants.dart';
import 'package:egycan_app/Feature/Home/Presentation/Views/Widgets/show_products_of_category.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../../Core/Widgets/category_list_view.dart';
import '../../../../../Core/Widgets/category_title.dart';

class AllCategoriesAndProductsItem extends StatelessWidget
{
  const AllCategoriesAndProductsItem({super.key, required this.categoryValues, required this.categoryKeys, required this.index,});
  final int index;
  final List categoryValues;
  final List<String> categoryKeys;

  @override
  Widget build(BuildContext context)
  {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CategoryTitle(title: categoryValues[index][0]),


            ShowProductsOfCategory(
              onPressed: () => GoRouter.of(context).replace(
                displayProductViewPath,
                extra: {
                  'title': categoryValues[index][0],
                  'products': categoryValues[index],
                },
              ),
            ),
          ],
        ),

        SizedBox(height: MediaQuery.sizeOf(context).height * 0.035),

        CategoryListView(categoryTitle: categoryValues[index][0]),

        index == categoryKeys.length - 1 ? SizedBox(height: MediaQuery.sizeOf(context).height * 0.035) : const SizedBox.shrink(),
      ],
    );
  }
}