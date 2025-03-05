import 'package:animate_do/animate_do.dart';
import 'package:egycan_app/Core/Utils/Functions/fetch_all_products_from_firebase.dart';
import 'package:egycan_app/Feature/Data/Repositories/Models/product_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../Core/Utils/constant_colors.dart';
import '../../../../../Core/Utils/styles.dart';
import '../../../../../Core/Widgets/custom_product_single_image.dart';
import '../../../../../Core/Widgets/custom_progress_indicator.dart';
import '../../../../../Core/Widgets/show_more_button.dart';
import '../../../../Display Products/Presentation/Views/Widgets/products_list_view_item.dart';
import 'all_categories_and_products_item.dart';
import 'categories_tab_views.dart';
import 'categories_tabs.dart';

class AllCategoriesAndProducts extends StatefulWidget
{
  const AllCategoriesAndProducts({super.key,});

  @override
  State<AllCategoriesAndProducts> createState() => _AllCategoriesAndProductsState();
}

class _AllCategoriesAndProductsState extends State<AllCategoriesAndProducts> with TickerProviderStateMixin
{
  @override
  Widget build(BuildContext context)
  {
    return FutureBuilder(
      future: fetchAllProductsFromFirebase(),
      builder: (context, snapshot)
      {
        if(snapshot.connectionState == ConnectionState.waiting)
        {
          return ZoomIn(child: const Center(child: CustomProgressIndicator(colorOfProgressIndicator: pyramidsColor)));
        }

        else if(snapshot.hasError)
        {
          return Center(
            child: Column(
              spacing: 10.h,
              children: [
                Icon(Icons.error_outline_sharp, color: red, size: 30.h),

                const Text('Check Your WI-FI'),
              ],
            ),
          );
        }

        else
        {
          Map<String, dynamic> categoriesCollection = snapshot.data?[0].map((category) => category.data()).toList()[0] as Map<String, dynamic>;
          var productsCollection = snapshot.data?[1].map((category) => category.data() as Map<String, dynamic>).toList();

          List<String> allCategories = categoriesCollection.values.map((value) => value[0].toString()).toList();
          List<ProductModel>? allProducts = productsCollection?.map((product) => ProductModel(productName: product['productName'], productPrice: product['productPrice'].toString(), category: product['category'], subCategory: product['subCategory'], imageUrl: product['imagesUrls'])).toList();
          // TabController tabController = TabController(length: allCategories.length, vsync: this);

          // return SizedBox(
          //   height: MediaQuery.sizeOf(context).height * 0.75,
          //   child: Column(
          //     children: [
          //       CategoriesTabs(tabController: tabController, allCategories: allCategories),
          //
          //       CategoriesTabViews(tabController: tabController, allCategories: allCategories, allProducts: allProducts),
          //     ],
          //   ),
          // );
          return ListView.separated(
            shrinkWrap: true,
            itemCount: allCategories.length,
            physics: const NeverScrollableScrollPhysics(),
            separatorBuilder: (context, index) => SizedBox(height: MediaQuery.sizeOf(context).height * 0.1),
            itemBuilder: (context, index) => AllCategoriesAndProductsItem(
              categoriesTitles: allCategories,
              allProducts: allProducts,
              index: index,
            ),
          );
        }
      }
    );
  }
}