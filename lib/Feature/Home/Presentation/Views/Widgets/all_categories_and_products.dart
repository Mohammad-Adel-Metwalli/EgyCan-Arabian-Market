import 'package:flutter/material.dart';
import 'all_categories_and_products_item.dart';

class AllCategoriesAndProducts extends StatelessWidget
{
  const AllCategoriesAndProducts({super.key, required this.categoryKeys, required this.categoryValues,});
  final List<String> categoryKeys;
  final List categoryValues;

  @override
  Widget build(BuildContext context)
  {
    return ListView.separated(
      shrinkWrap: true,
      itemCount: categoryKeys.length,
      physics: const NeverScrollableScrollPhysics(),
      separatorBuilder: (context, index) => SizedBox(height: MediaQuery.sizeOf(context).height * 0.1),
      itemBuilder: (context, index)
      {
        List<dynamic> subCategory = categoryValues[index];
        subCategory = subCategory.sublist(1, subCategory.length);

        return AllCategoriesAndProductsItem(categoryValues: categoryValues, categoryKeys: categoryKeys, index: index);
      },
    );
  }
}