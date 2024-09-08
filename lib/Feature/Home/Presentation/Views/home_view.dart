import 'package:animate_do/animate_do.dart';
import 'package:egycan_app/Core/Utils/constant_colors.dart';
import 'package:egycan_app/Feature/Home/Presentation/Manager/All%20Categories%20Cubit/all_categories_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'Widgets/custom_home_app_bar.dart';
import 'Widgets/home_view_body.dart';

class HomeView extends StatefulWidget
{
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView>
{
  @override
  void initState()
  {
    super.initState();
    BlocProvider.of<AllCategoriesCubit>(context).fetchAllCategories();
  }

  @override
  void didChangeDependencies()
  {
    precacheImage(const AssetImage('Assets/Images/Instagram-icon.png'), context);
    precacheImage(const AssetImage('Assets/Images/EgyCan-logo.png'), context);
    precacheImage(const AssetImage('Assets/Images/world-icon.png'), context);
    precacheImage(const AssetImage('Assets/Images/EgyCan Company Image.jpg'), context);
    precacheImage(const AssetImage('Assets/Images/Image-2.jpg'), context);
    precacheImage(const AssetImage('Assets/Images/Image-3.jpg'), context);
    precacheImage(const AssetImage('Assets/Images/Image-4.jpg'), context);
    precacheImage(const AssetImage('Assets/Images/Image-5.jpg'), context);
    precacheImage(const AssetImage('Assets/Images/Image-6.jpg'), context);
    precacheImage(const AssetImage('Assets/Images/Image-7.jpg'), context);
    precacheImage(const AssetImage('Assets/Images/Image-8.jpg'), context);
    precacheImage(const AssetImage('Assets/Images/Image-9.jpg'), context);
    precacheImage(const AssetImage('Assets/Images/Image-10.jpg'), context);
    precacheImage(const AssetImage('Assets/Images/Image-11.jpg'), context);
    precacheImage(const AssetImage('Assets/Images/Image-12.jpg'), context);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      backgroundColor: white,
      body: Stack(
        children: [
          FadeInUpBig(child: const HomeViewBody()),

          FadeInDownBig(child: const CustomHomeAppBar()),
        ],
      ),
    );
  }
}