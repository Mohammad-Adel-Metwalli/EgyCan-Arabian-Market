import 'package:animate_do/animate_do.dart';
import 'package:egycan_app/Core/Utils/constant_colors.dart';
import 'package:egycan_app/Core/Widgets/custom_progress_indicator.dart';
import 'package:egycan_app/Feature/Display%20Product/Presentation/Views/Widgets/custom_search_bar.dart';
import 'package:egycan_app/Feature/Home/Presentation/Manager/All%20Categories%20Cubit/all_categories_cubit.dart';
import 'package:egycan_app/Feature/Home/Presentation/Views/Widgets/site_images.dart';
import 'package:egycan_app/Feature/Home/Presentation/Views/Widgets/site_images_dots.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'all_categories_and_products.dart';
import 'contact_us_button.dart';

class HomeViewBody extends StatefulWidget
{
  const HomeViewBody({super.key,});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody>
{
  List<dynamic> categoryValues = [];
  List<String> categoryKeys = [];
  String searchedProduct = '';
  int indexOfSiteImages = 1;

  @override
  Widget build(BuildContext context)
  {
    return SingleChildScrollView(
      padding: EdgeInsets.only(top: MediaQuery.sizeOf(context).width <= 500 ? 150.h : 210.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MediaQuery.sizeOf(context).width <= 500 ? const Center(child: ContactUsButton()) : const SizedBox.shrink(),

          MediaQuery.sizeOf(context).width <= 500 ? SizedBox(height: MediaQuery.sizeOf(context).height * 0.02) : const SizedBox.shrink(),

          SiteImages(onPageChanged: (index, _) => setState(() => indexOfSiteImages = index)),

          SizedBox(height: MediaQuery.sizeOf(context).height * 0.02),

          Center(child: SiteImagesDots(indexOfSiteImages: indexOfSiteImages)),

          SizedBox(height: MediaQuery.sizeOf(context).height * 0.05),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: MediaQuery.sizeOf(context).width <= 500 ? 50.w : 300.w),
            child: CustomSearchBar(onChanged: (data) => setState(() => searchedProduct = data)),
          ),

          SizedBox(height: MediaQuery.sizeOf(context).height * 0.025),

          BlocConsumer<AllCategoriesCubit, AllCategoriesState>(
            listener: (context, state)
            {
              if(state is AllCategoriesSuccess)
              {
                categoryValues = state.categoryValues;
                categoryKeys = state.categoryKeys;
              }
            },

            builder: (context, state)
            {
              if(state is AllCategoriesSuccess)
              {
                return FadeInUpBig(child: AllCategoriesAndProducts(categoryKeys: categoryKeys, categoryValues: categoryValues, searchedProduct: searchedProduct));
              }

              else
              {
                return ZoomIn(child: const Center(child: CustomProgressIndicator(colorOfProgressIndicator: pyramidsColor)));
              }
            },
          ),
        ],
      ),
    );
  }
}