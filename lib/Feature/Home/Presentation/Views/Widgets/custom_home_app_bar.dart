import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../Core/Utils/constant_colors.dart';
import 'custom_home_app_bar_body.dart';

class CustomHomeAppBar extends StatelessWidget
{
  const CustomHomeAppBar({super.key,});

  @override
  Widget build(BuildContext context)
  {
    return Container(
      height: MediaQuery.sizeOf(context).width <= 500 ? 120.h : 180.h,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: appBarGradientColors,
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),

        borderRadius: BorderRadius.circular(MediaQuery.sizeOf(context).width <= 500 ? 50 : 75),
      ),

      child: const CustomHomeAppBarBody(),
    );
  }
}