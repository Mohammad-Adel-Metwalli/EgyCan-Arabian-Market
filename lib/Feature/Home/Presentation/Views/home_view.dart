import 'package:animate_do/animate_do.dart';
import 'package:egycan_app/Core/Utils/constant_colors.dart';
import 'package:flutter/material.dart';
import 'Widgets/custom_home_fab.dart';
import 'Widgets/home_view_body.dart';

class HomeView extends StatefulWidget
{
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> with TickerProviderStateMixin
{
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
      floatingActionButton: const CustomHomeFAB(),
      body: FadeInUpBig(child: const HomeViewBody()),
    );
  }
}