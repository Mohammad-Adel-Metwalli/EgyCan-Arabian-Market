import 'package:animate_do/animate_do.dart';
import 'package:egycan_app/Core/Utils/Functions/get_all_products.dart';
import 'package:egycan_app/Feature/Data/Repositories/Models/product_model.dart';
import 'package:flutter/material.dart';
import '../../../../../Core/Utils/constant_colors.dart';
import '../../../../../Core/Widgets/custom_progress_indicator.dart';
import 'all_categories_and_products_item.dart';

class AllCategoriesAndProducts extends StatefulWidget
{
  const AllCategoriesAndProducts({super.key,});

  @override
  State<AllCategoriesAndProducts> createState() => _AllCategoriesAndProductsState();
}

class _AllCategoriesAndProductsState extends State<AllCategoriesAndProducts>
{
  @override
  Widget build(BuildContext context)
  {
    return FutureBuilder(
      future: getAllProducts(),
      builder: (context, snapshot)
      {
        if(snapshot.connectionState == ConnectionState.waiting)
        {
          return ZoomIn(child: const Center(child: CustomProgressIndicator(colorOfProgressIndicator: pyramidsColor)));
        }

        else if(snapshot.hasError)
        {
          return Center(child: Text('Error: ${snapshot.error}'));
        }

        else
        {
          final data = snapshot.data as (List<List<String>>?, List<String>?, Map<String, List<ProductModel>>);
          final allRows = data.$1 ?? [];
          final categoriesTitles = data.$2 ?? [];
          final allProducts = data.$3;

          return ListView.separated(
            shrinkWrap: true,
            itemCount: categoriesTitles.length,
            physics: const NeverScrollableScrollPhysics(),
            separatorBuilder: (context, index) => SizedBox(height: MediaQuery.sizeOf(context).height * 0.1),
            itemBuilder: (context, index) => AllCategoriesAndProductsItem(
              categoriesTitles: categoriesTitles,
              allProducts: allProducts,
              allRows: allRows,
              index: index,
            ),
          );
        }
      }
    );
  }
}