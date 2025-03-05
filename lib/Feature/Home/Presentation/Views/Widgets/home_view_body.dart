import 'package:animate_do/animate_do.dart';
import 'package:egycan_app/Feature/Home/Presentation/Views/Widgets/site_images.dart';
import 'package:egycan_app/Feature/Home/Presentation/Views/Widgets/site_images_dots.dart';
import 'package:flutter/material.dart';
import 'all_categories_and_products.dart';
import 'contact_us_button.dart';
import 'custom_home_app_bar.dart';

class HomeViewBody extends StatefulWidget
{
  const HomeViewBody({super.key,});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> with TickerProviderStateMixin
{
  int indexOfSiteImages = 0;

  @override
  Widget build(BuildContext context)
  {
    return CustomScrollView(
      slivers: [
        const SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: CustomHomeAppBar(),
          ),
        ),

        MediaQuery.sizeOf(context).width <= 500 ? const SliverToBoxAdapter(child: Center(child: ContactUsButton())) : const SliverToBoxAdapter(child: SizedBox.shrink()),

        MediaQuery.sizeOf(context).width <= 500 ? SliverToBoxAdapter(child: SizedBox(height: MediaQuery.sizeOf(context).height * 0.02)) : const SliverToBoxAdapter(child: SizedBox.shrink()),

        SliverToBoxAdapter(child: SiteImages(onPageChanged: (index, _) => setState(() => indexOfSiteImages = index))),

        SliverToBoxAdapter(child: SizedBox(height: MediaQuery.sizeOf(context).height * 0.02)),

        SliverToBoxAdapter(child: Center(child: SiteImagesDots(indexOfSiteImages: indexOfSiteImages))),

        SliverToBoxAdapter(child: SizedBox(height: MediaQuery.sizeOf(context).height * 0.04)),

        SliverToBoxAdapter(child: FadeInUpBig(child: const AllCategoriesAndProducts())),
      ],
    );
  }
}