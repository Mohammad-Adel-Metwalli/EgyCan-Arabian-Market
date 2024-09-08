import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../Core/Utils/constant_colors.dart';

class SiteImage extends StatelessWidget
{
  const SiteImage({super.key, required this.image,});
  final String image;

  @override
  Widget build(BuildContext context)
  {
    return Container(
      height: MediaQuery.sizeOf(context).width <= 995 ? 350.h : 400.h,
      width: MediaQuery.sizeOf(context).width <= 995 ? 950.w : 800.w,
      decoration: BoxDecoration(
        color: blueGrey,
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
      ),
    );
  }
}