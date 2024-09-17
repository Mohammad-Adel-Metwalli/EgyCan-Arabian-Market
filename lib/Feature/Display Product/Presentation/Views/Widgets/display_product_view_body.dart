import 'package:animate_do/animate_do.dart';
import 'package:egycan_app/Feature/Display%20Product/Presentation/Views/Widgets/custom_search_bar.dart';
import 'package:egycan_app/Feature/Display%20Product/Presentation/Views/Widgets/products_list_view.dart';
import 'package:egycan_app/Feature/Display%20Product/Presentation/Views/Widgets/sub_category_drop_down.dart';
import 'package:egycan_app/Feature/Home/Presentation/Manager/All%20Products%20Cubit/all_products_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../Data/Repositories/Models/product_model.dart';

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
  List<ProductModel> allProducts = [];
  List<dynamic> products = [];

  @override
  void initState()
  {
    super.initState();
    products = widget.categoryTitleAndProducts['products'];
    products = products.sublist(1, products.length);
  }

  @override
  Widget build(BuildContext context)
  {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: MediaQuery.sizeOf(context).height * 0.02),

          FadeInDownBig(child: CustomSearchBar(onChanged: (data) => setState(() => searchedProduct = data))),

          SizedBox(height: MediaQuery.sizeOf(context).height * 0.02),

          SubCategoryDropDown(
            products: products,
            onChanged: (data) => setState(() => chosenSubCategory = data!),
          ),

          SizedBox(height: MediaQuery.sizeOf(context).height * 0.02),

          BlocConsumer<AllProductsCubit, AllProductsState>(
            listener: (context, state)
            {
              if(state is AllProductsSuccess)
              {
                allProducts = state.allProducts.where((product) => product.category == widget.categoryTitleAndProducts['title']).toList();
              }
            },

            builder: (context, state) => FadeInUpBig(child: ProductsListView(searchedProduct: searchedProduct, chosenSubCategory: chosenSubCategory, categoryTitle: widget.categoryTitleAndProducts['title'], allProducts: allProducts)),
          ),
        ],
      ),
    );
  }
}