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